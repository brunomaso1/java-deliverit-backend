/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Restaurant;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.SucursalPK;
import ucu.deliverit.backcore.entidades.Vehiculo;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.entidades.utiles.Utiles;
import ucu.deliverit.backcore.tasks.TimerObject;
import static ucu.deliverit.backcore.tasks.TimerObject.IS_RUNNING;

/**
 *
 * @author JMArtegoytia
 */
@Stateless
@Path("viaje")
public class ViajeFacadeREST extends AbstractFacade<Viaje> {
    
    public static int DISTANCIA_BUSQUEDA_KM = 2;
    
    private boolean TIMER_RUNNING;

    @EJB
    private DeliveryFacadeREST deliveryFacadeREST;
    
    @EJB
    private EstadoViajeFacadeREST estadoFacadeREST;

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public ViajeFacadeREST() {
        super(Viaje.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Viaje create(Viaje entity) {
        try {
            Viaje v = super.create(entity);
            return v;
        } catch (Exception e) {
            return null;
        }
        
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Viaje entity) {
        super.edit(entity);
    }
    
    @POST
    @Path("aceptarViaje/{idViaje}/{idDelivery}")
    @Produces(MediaType.TEXT_PLAIN)
    public Integer aceptarViaje(@PathParam("idViaje") Integer idViaje, 
            @PathParam("idDelivery") Integer idDelivery) {
        Viaje viaje = find(idViaje);
        
        if (viaje.getEstado().getId() != 3) {
            Delivery delivery = deliveryFacadeREST.find(idDelivery);
            EstadoViaje estado = estadoFacadeREST.find((short) 3);
            viaje.setEstado(estado);
            viaje.setDelivery(delivery);
            em.persist(viaje);
            
            return 0;
        } else {
            return -1;
        }
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Viaje find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Viaje> findAll() {            
       return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Viaje> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {  
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
    @POST
    @Path("matchearDelivery")
    @Produces(MediaType.APPLICATION_JSON)
    public void matchearDelivery (@QueryParam("viaje") final Viaje v) { 
        Direccion dir = new Direccion();
        dir.setId(1);
        dir.setCalle("Bv. España");
        dir.setEsquina("Joaquín de Salterain");
        dir.setNroPuerta(Short.parseShort("2094"));
        dir.setLatitud(-34.908865);
        dir.setLongitud(-56.1717083);
        
        Restaurant r = new Restaurant();
        r.setId(1);  
        r.setRut(2151622);
        r.setRazonSocial("Pancho Va");
        
        Sucursal sucursal = new Sucursal();
        sucursal.setDireccion(dir);
        sucursal.setRestaurant(r);
        SucursalPK sucPK = new SucursalPK();
        sucPK.setId(Short.parseShort("1"));
        sucursal.setSucursalPK(sucPK);
        
        EstadoViaje estado = new EstadoViaje();
        estado.setId(Short.parseShort("1"));
        estado.setDescripcion("Pendiente");
        
        final Viaje viaje = new Viaje();
        viaje.setId(1);
        viaje.setSucursal(sucursal);
        viaje.setEstado(estado);
        viaje.setPrecio(Short.parseShort("100"));
        
        List<Delivery> deliverysSinViajes = deliveryFacadeREST.findAllSinViajesEnProceso();
        
        List<Delivery> deliverysNotificados = new ArrayList<>();
                
        if (deliverysSinViajes.size() > 0) {
            
            
            try {
                notificarDeliverys(deliverysSinViajes.get(0), viaje);
            } catch (IOException e) {
            
            }
            
            
            
            
          /*  while (DISTANCIA_BUSQUEDA_KM <= 10) {  
                if (!TIMER_RUNNING) {
                    for (Delivery d : deliverysSinViajes) {
                        System.out.println("***** Delivery: " + d.getUsuario().getNombre() + " *****");

                        Double[] origen = {d.getUbicacion().getLatitud(), d.getUbicacion().getLongitud()};
                        Double[] destino = {viaje.getSucursal().getDireccion().getLatitud(),
                            viaje.getSucursal().getDireccion().getLongitud()};
                        Double distancia = null;
                        try {
                            distancia = Utiles.distancia(origen, destino, d.getVehiculo());

                            if (distancia <= DISTANCIA_BUSQUEDA_KM) {
                                boolean notificar = true;

                                // Antes de notificar al delivery me fijo que no esté en la lista de notificados
                                if (deliverysNotificados.size() > 0) {
                                    for (int i = 0; i < deliverysNotificados.size(); i++) {
                                        if (d.getId() == deliverysNotificados.get(i).getId()) {
                                            notificar = false;
                                            break;
                                        }
                                    }
                                }

                                System.out.println("***** notificar? " + notificar + " *****");

                                if (notificar) {
                                    // notificarDeliverys(d);
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
                   // TimerObject timer = new TimerObject(this, viaje);   
                   
                    final Timer timer = new Timer();

                    TimerTask task = new TimerTask() {

                        @Override
                        public void run() {
                            TIMER_RUNNING = true;
                            
                            System.out.println("***** RUN *****");
                            ViajeFacadeREST v = new ViajeFacadeREST();
                            Viaje viajeANotificar = v.find(viaje.getId());
                            System.out.println("***** id = " + viajeANotificar.getId());
                            // Alguien tomó el viaje, terminar este proceso
                          /*  if (viajeANotificar.getDelivery() != null) {
                                DISTANCIA_BUSQUEDA_KM = 10;
                                TIMER_RUNNING = false;
                                timer.cancel();
                                timer.purge();
                                return;
                            }  
                        }
                    };
                    // Empezamos dentro de 10ms y luego lanzamos la tarea cada 1000ms
                    timer.schedule(task, 0, 10000);
                    }
                } */
            }
        
    }
    
    private void notificarDeliverys(Delivery delivery, Viaje viaje) throws IOException {  
        System.out.println("***** va a enviar la notificación *****");
        String message_url = "https://fcm.googleapis.com/fcm/send";
        String to = "dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6";       
        
        String message_key = "key=AAAAXNmpFoo:APA91bFF5e1i3mZHE3APivYcHlnkS2ng7_quGr1ecuspOP68gjEnA13OIVUiPgKxVuqvCmnmDU_ZmcOl6OxJ1sEWQSjVYWB_wspNIx8lc0NjFYylx-uMPzfi-xnJhcPb2nVc852lMbZ5";

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
        System.out.println(params);

        HttpResponse response = httpClient.execute(request);
        System.out.println(response.toString());
        System.out.println("***** envió la notificación *****");
    }
}
