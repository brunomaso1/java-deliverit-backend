/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.helpers;

import javax.ejb.EJB;
import com.google.gson.Gson;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import ucu.deliverit.backcore.entidades.Configuracion;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.Vehiculo;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.entidades.servicios.ConfiguracionFacadeREST;
import ucu.deliverit.backcore.entidades.servicios.DeliveryFacadeREST;
import ucu.deliverit.backcore.entidades.utiles.Utiles;

/**
 *
 * @author DeliverIT
 */
public class ViajeHelper {
    private int distancia_busqueda_km;
    
    @EJB
    private DeliveryFacadeREST deliveryFacadeREST;
    
    @EJB
    private ConfiguracionFacadeREST confFacadeREST;
    
    public void matchearDelivery(Viaje viaje) {        
        List<Delivery> deliverysSinViajes = deliveryFacadeREST.findAllSinViajesEnProceso();
        
        List<Delivery> deliverysNotificados = new ArrayList<>();
                
        if (deliverysSinViajes.size() > 0) {  
            
            // Una vez que la distancia en km sea mayor a 20 debe terminar este proceso
            while (distancia_busqueda_km <= 20) {  
                for (Delivery d : deliverysSinViajes) {
                    Double[] origen = {d.getUbicacion().getLatitud(), d.getUbicacion().getLongitud()};
                    Double[] destino = {viaje.getSucursal().getDireccion().getLatitud(),
                        viaje.getSucursal().getDireccion().getLongitud()};
                    Double distancia = null;
                    try {
                        
                        // Para cada uno de los deliverys que actualmente no tienen ningún viaje asignado
                        // Calculo la distancia entre la ubicación en la que se encuentra 
                        // y la dirección de la sucursal que dio de alta el Viaje
                        distancia = calcularDistanciaSucursalDelivery(origen, destino, d.getVehiculo());

                        if (distancia <= distancia_busqueda_km) {
                            boolean notificar = true;

                            // Antes de notificar al delivery me fijo que no esté en la lista 
                            // de notificados
                            if (deliverysNotificados.size() > 0) {
                                for (int i = 0; i < deliverysNotificados.size(); i++) {
                                    if (d.getId() == deliverysNotificados.get(i).getId()) {
                                        notificar = false;
                                        break;
                                    }
                                }
                            }

                            if (notificar) {
                                notificarDeliverys(d, viaje);
                                deliverysNotificados.add(d);
                            }
                        }

                    } catch (IOException e) {
                        System.out.println("***** IOException = " + e + " *****");
                    } catch (JSONException e) {
                        System.out.println("***** JSONException = " + e + " *****");
                    }  catch (Exception e) {
                        System.out.println("***** Exception = " + e + " *****");
                    }
                }                              
            } 
        }
    }
    
    private void notificarDeliverys(Delivery delivery, Viaje viaje) throws IOException {  
        String message_url = Utiles.URL_FIREBASE;
        String to = confFacadeREST.findByDesc(Configuracion.SERVIDOR_FIREBASE).getValor();
        
        String message_key = Utiles.KEY_IGUAL + delivery.getToken();

        JSONObject message = new JSONObject();
        
        Gson gson = new Gson();
        String viajeString = gson.toJson(viaje);
        
        message.put("viaje", viajeString);
        
        JSONObject protocol = new JSONObject();
        protocol.put("to", to);
        protocol.put("data", message);
        
        HttpClient httpClient = new DefaultHttpClient();
        HttpPost request = new HttpPost(message_url);
        request.addHeader("content-type", "application/json");
        request.addHeader("Authorization", message_key);

        StringEntity params = new StringEntity(protocol.toString());
        request.setEntity(params);

        httpClient.execute(request);
    }
    
    private Double calcularDistanciaSucursalDelivery(Double[] coordenadasOrigen,
            Double[] coordenadasDestino, Vehiculo vehiculo) throws IOException, JSONException {      
        
        String url = Utiles.URL_GOOGLE_DISTANCE_MATRIX_MDEO
                + URLEncoder.encode(Utiles.BARRA_VERTICAL, Utiles.UTF_8)
                + coordenadasOrigen[0] + Utiles.COMA + coordenadasOrigen[1]
                + Utiles.AND
                + Utiles.GOOGLE_DESTINATIONS_MDEO
                + URLEncoder.encode(Utiles.BARRA_VERTICAL, Utiles.UTF_8)
                + coordenadasDestino[0] + "," + coordenadasDestino[1];
        
        if (vehiculo.getId() == 1 || vehiculo.getId() == 2) {
            url = url + Utiles.AND + Utiles.MODE_DRIVING; 
        } else if (vehiculo.getId() == 3 || vehiculo.getId() == 4 || vehiculo.getId() == 5) {
            url = url + Utiles.AND + Utiles.MODE_BICYCLING; 
        } else {
            url = url + Utiles.AND + Utiles.MODE_WALKING; 
        }
         
        url = url + Utiles.AND + Utiles.KEY_IGUAL 
                + confFacadeREST.findByDesc(Configuracion.API_KEY_GOOGLE).getValor();      
        
        Double distancia = null;
        
        OkHttpClient client = new OkHttpClient();
        
        Request request = new Request.Builder()
            .url(url)
            .build();        
        
        Response response = client.newCall(request).execute();
        String jsonData = response.body().string();
        
        JSONObject jsonResponse = new JSONObject(jsonData);
        
        if (jsonResponse.getString("status").equals("OK")) {
            JSONArray rows = (JSONArray)jsonResponse.get("rows");
            JSONObject element = rows.getJSONObject(rows.length() - 1);
            JSONArray elements = element.getJSONArray("elements");
            JSONObject elemento = (JSONObject)elements.get(1);
            JSONObject distanceO = (JSONObject)elemento.get("distance");
            distancia = Double.parseDouble(distanceO.getString("text").split(" ")[0]);
        } 
        
        return distancia;
    }
    
    /**
     * @return the distancia_busqueda_km
     */
    public int getDistancia_busqueda_km() {
        return distancia_busqueda_km;
    }

    /**
     * @param distancia_busqueda_km the distancia_busqueda_km to set
     */
    public void setDistancia_busqueda_km(int distancia_busqueda_km) {
        this.distancia_busqueda_km = distancia_busqueda_km;
    }
}
