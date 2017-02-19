/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.utiles;

import com.google.gson.Gson;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import ucu.deliverit.backcore.entidades.Vehiculo;


/**
 *
 * @author JMArtegoytia
 */
public class Utiles {
    
    public static Double distancia(Double[] coordenadasOrigen, Double[] coordenadasDestino, Vehiculo vehiculo)
            throws IOException, JSONException {
        
        System.out.println("***** Va a calcular la distancia entre el delivery y la sucursal *****");
        
        String url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=Montevideo+Uruguay" 
                + URLEncoder.encode("|", "UTF-8") + coordenadasOrigen[0] + "," + coordenadasOrigen[1]
                + "&"
                + "destinations=Montevideo+Uruguay"
                + URLEncoder.encode("|", "UTF-8") + coordenadasDestino[0] + "," + coordenadasDestino[1];
        
        if (vehiculo.getId() == 1 || vehiculo.getId() == 2) {
            url = url + "&mode=driving"; 
        } else if (vehiculo.getId() == 3 || vehiculo.getId() == 4 || vehiculo.getId() == 5) {
            url = url + "&mode=bicycling"; 
        } else {
            url = url + "&mode=walking"; 
        }
         
        url = url + "&key=AIzaSyA2NCnQBRCbuXHbNeUY7mW-lvP-v4V3x8A";      
        
        System.out.println("***** URL: " + url + " *****");
        
        Double distancia = null;
        
        OkHttpClient client = new OkHttpClient();
        
        Request request = new Request.Builder()
            .url(url)
            .build();        
        
        Response response = client.newCall(request).execute();
        String jsonData = response.body().string();
        
        System.out.println("***** respuesta: " + jsonData + " *****");
        
        JSONObject jsonResponse = new JSONObject(jsonData);
        
        if (jsonResponse.getString("status").equals("OK")) {
            JSONArray rows = (JSONArray)jsonResponse.get("rows");
            JSONObject element = rows.getJSONObject(rows.length() - 1);
            JSONArray elements = element.getJSONArray("elements");
            JSONObject elemento = (JSONObject)elements.get(1);
            JSONObject distanceO = (JSONObject)elemento.get("distance");
            distancia = Double.parseDouble(distanceO.getString("text").split(" ")[0]);
        } 
        
        System.out.println("***** Distancia: " + distancia + "km *****");
        
        return distancia;
    }
}
