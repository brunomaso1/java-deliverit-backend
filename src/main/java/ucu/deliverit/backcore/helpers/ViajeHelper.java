package ucu.deliverit.backcore.helpers;

import com.google.gson.Gson;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import ucu.deliverit.backcore.entidades.Configuracion;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.Restaurant;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Usuario;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.entidades.servicios.ConfiguracionFacadeREST;
import ucu.deliverit.backcore.entidades.servicios.DeliveryFacadeREST;
import ucu.deliverit.backcore.entidades.utiles.Utiles;

public class ViajeHelper {

    private int distancia_busqueda_km;
    private List<Delivery> deliverysNotificados;
    private List<Delivery> deliverys5Estrellas;
    private List<Delivery> deliverys4Estrellas;
    private List<Delivery> deliverys3Estrellas;
    private static boolean VIAJE_ASIGNADO;

    private DeliveryFacadeREST deliveryFacadeREST;
    private ConfiguracionFacadeREST confFacadeREST;
    
    public ViajeHelper() {}
    
    public ViajeHelper(DeliveryFacadeREST deliveryFacadeREST, ConfiguracionFacadeREST configuracionFacadeREST) {
        this.deliveryFacadeREST = deliveryFacadeREST;
        this.confFacadeREST = configuracionFacadeREST;
    }
    
    public List<Delivery> limpiarDeliverysEnProceso (List<Delivery> deliverys) {
        List<Delivery> resultado = new ArrayList<>();
        for (Delivery d : deliverys) {
            Delivery auxiliar = new Delivery();
            auxiliar.setId(d.getId());
            auxiliar.setUbicacion(d.getUbicacion());
            
            Usuario uAux = new Usuario();
            uAux.setTelefono(d.getUsuario().getTelefono());
            auxiliar.setUsuario(uAux);
            resultado.add(auxiliar);            
        }
        return resultado;
    }
    
    public List<Viaje> limpiarViajeParaMobile (List<Viaje> viajes) {
        List<Viaje> resultado = new ArrayList<>();
        for (Viaje v : viajes) {
            Viaje auxiliar = new Viaje();
            auxiliar.setId(v.getId());
            auxiliar.setPrecio(v.getPrecio());
            
            Sucursal sucAux = new Sucursal();
            sucAux.setId(v.getSucursal().getId());
            sucAux.setDireccion(v.getSucursal().getDireccion());
            
            Restaurant restAux = new Restaurant();
            restAux.setId(v.getSucursal().getRestaurant().getId());
            restAux.setRazonSocial(v.getSucursal().getRestaurant().getRazonSocial());
            
            Usuario uAux = new Usuario();
            uAux.setFoto(v.getSucursal().getRestaurant().getUsuario().getFoto());
            restAux.setUsuario(uAux);
            
            sucAux.setRestaurant(restAux);
            auxiliar.setSucursal(sucAux);
            resultado.add(auxiliar);            
        }
        return resultado;
    }
    
    public List<Sucursal> limpiarSucursalParaMobile (List<Sucursal> sucursales) {
        List<Sucursal> resultado = new ArrayList<>();
        for (Sucursal s : sucursales) {
            Sucursal auxiliar = new Sucursal();
            
            Restaurant rAux = new Restaurant();
            rAux.setRazonSocial(s.getRestaurant().getRazonSocial());
            
            auxiliar.setRestaurant(rAux);
            
            Direccion dAux = new Direccion();
            dAux.setLatitud(s.getDireccion().getLatitud());
            dAux.setLongitud(s.getDireccion().getLongitud());
            auxiliar.setDireccion(dAux);
            resultado.add(auxiliar);            
        }
        return resultado;
    }

    public void matchearDelivery(Viaje viaje) throws IOException, JSONException, Exception {
        this.deliverysNotificados = new ArrayList<>();

        // El rango inicial de búsqueda de Deliverys es de 2 km
        distancia_busqueda_km = 2;

        List<Delivery> deliverysSinViaje = deliveryFacadeREST.findAllSinViajesEnProceso();

        if (deliverysSinViaje.size() > 0) {

            // Una vez que la distancia en km sea mayor a 10 debe terminar este proceso
            while (distancia_busqueda_km <= 20) {
                List<Delivery> deliverys = getDeliverysDistancia(deliverysSinViaje, viaje);
                ordenarDeliverysPorEstrella(deliverys);
                
                notificarDeliverys(deliverys5Estrellas, viaje);
                notificarDeliverys(deliverys4Estrellas, viaje);
                notificarDeliverys(deliverys3Estrellas, viaje); 
                
                if (deliverysNotificados.containsAll(deliverysSinViaje)) {
                    break;
                } else {
                    distancia_busqueda_km ++;
                }
            }
        }
    }

    private List<Delivery> getDeliverysDistancia(List<Delivery> deliverysSinViaje,
            Viaje viaje) throws JSONException, IOException, Exception {
        List<Delivery> deliverysAEstaDistancia = new ArrayList<>();

        for (Delivery d : deliverysSinViaje) {
            Double[] origen = {d.getUbicacion().getLatitud(), d.getUbicacion().getLongitud()};
            Double[] destino = {viaje.getSucursal().getDireccion().getLatitud(),
                viaje.getSucursal().getDireccion().getLongitud()};
            Double distancia = null;

            // Para cada uno de los deliverys que actualmente no tienen ningún viaje asignado
            // Calculo la distancia entre la ubicación en la que se encuentra 
            // y la dirección de la sucursal que dio de alta el Viaje
            distancia = calcularDistanciaSucursalDelivery(origen, destino);

            if (distancia <= distancia_busqueda_km) {
                deliverysAEstaDistancia.add(d);
            }
        }
        return deliverysAEstaDistancia;
    }

    private Double calcularDistanciaSucursalDelivery(Double[] coordenadasOrigen,
            Double[] coordenadasDestino) throws IOException, JSONException {

        String url = Utiles.URL_GOOGLE_DISTANCE_MATRIX_MDEO
                + URLEncoder.encode(Utiles.BARRA_VERTICAL, Utiles.UTF_8)
                + coordenadasOrigen[0] + Utiles.COMA + coordenadasOrigen[1]
                + Utiles.AND
                + Utiles.GOOGLE_DESTINATIONS_MDEO
                + URLEncoder.encode(Utiles.BARRA_VERTICAL, Utiles.UTF_8)
                + coordenadasDestino[0] + "," + coordenadasDestino[1];

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
            JSONArray rows = (JSONArray) jsonResponse.get("rows");
            JSONObject element = rows.getJSONObject(rows.length() - 1);
            JSONArray elements = element.getJSONArray("elements");
            JSONObject elemento = (JSONObject) elements.get(1);
            JSONObject distanceO = (JSONObject) elemento.get("distance");
            distancia = Double.parseDouble(distanceO.getString("text").split(" ")[0]);
        }

        return distancia;
    }
    
    private void ordenarDeliverysPorEstrella(List<Delivery> deliverys) {      
        deliverys5Estrellas = new ArrayList<>();
        deliverys4Estrellas = new ArrayList<>();
        deliverys3Estrellas = new ArrayList<>();
        
        for (Delivery d : deliverys) {
            if (d.getCalificacion() == 5) {
                deliverys5Estrellas.add(d);
            } else if (d.getCalificacion() == 4) {
                deliverys4Estrellas.add(d);
            } else if (d.getCalificacion() == 3) {
                deliverys3Estrellas.add(d);
            }
        }
    }
    
    private void notificarDeliverys(List<Delivery> deliverysANotificar, Viaje viaje) throws IOException {
        for (Delivery d : deliverysANotificar) {
            
            // Si el Delivery no fue notificado se lo notifica
            if (!deliverysNotificados.contains(d)) {
                notificarDelivery(d, viaje.getId());
            }            
        }
    }

    private void notificarDelivery(Delivery delivery, Integer idViaje) throws IOException {
        String message_url = Utiles.URL_FIREBASE;
        String to = delivery.getToken();
        
        String message_key = Utiles.KEY_IGUAL + confFacadeREST.findByDesc(Configuracion.SERVIDOR_FIREBASE).getValor();

        JSONObject message = new JSONObject();

        Gson gson = new Gson();
        String viajeString = gson.toJson(idViaje);

        message.put("viaje", viajeString); 

        JSONObject protocol = new JSONObject();
        protocol.put("to", to);
        protocol.put("data", message);

        HttpClient httpClient = new DefaultHttpClient();
        HttpPost request = new HttpPost(message_url);
        request.addHeader("Content-Type", "application/json");
        request.addHeader("Authorization", message_key);

        StringEntity params = new StringEntity(protocol.toString());
        request.setEntity(params);

        HttpResponse r = httpClient.execute(request);
        
        deliverysNotificados.add(delivery);
    }
    
   /* public void lanzarTimer (final Viaje viaje) {
        VIAJE_ASIGNADO = false;
        
        final Timer timer = new Timer();

        TimerTask task = new TimerTask() {

            @Override
            public void run() {                            
                viajeFacadeREST = new ViajeFacadeREST();
                Viaje viajeANotificar = viajeFacadeREST.find(viaje.getId());
                // Alguien tomó el viaje, terminar este proceso
                if (viajeANotificar.getDelivery() != null) {  
                    ViajeHelper.VIAJE_ASIGNADO = true;
                    timer.cancel();
                    timer.purge();
                    return;
                }  
            }
        };
        // Empezamos dentro de 10ms y luego lanzamos la tarea cada 1000ms
        timer.schedule(task, 0, 10000);
        }
    }*/

    public int getDistancia_busqueda_km() {
        return distancia_busqueda_km;
    }

    public void setDistancia_busqueda_km(int distancia_busqueda_km) {
        this.distancia_busqueda_km = distancia_busqueda_km;
    }
}
