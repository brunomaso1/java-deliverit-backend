/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
import org.json.JSONException;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.ViajeHelper;
import ucu.deliverit.backcore.hilos.MatchearDeliveryThread;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

/**
 *
 * @author DeliverIT
 */
@Stateless
@Path("viaje")
public class ViajeFacadeREST extends AbstractFacade<Viaje> {

    @EJB
    private DeliveryFacadeREST deliveryFacadeREST;
    
    @EJB
    private EstadoViajeFacadeREST estadoFacadeREST;
    
    @EJB
    private ConfiguracionFacadeREST configuracionFacadeREST;

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public ViajeFacadeREST() {
        super(Viaje.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Viaje entity) {
        RespuestaGeneral r = new RespuestaGeneral();
        
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Viaje" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getPrecio() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Precio" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getSucursal() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Sucursal" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getEstado() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Estado de Viaje" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }    
        
        // Si se insertó el Viaje correctamente y el estado es Publicado
        // Se ejecuta MatchearDelivery (Thread)
        if (r.getCodigo().equals(RespuestaGeneral.CODIGO_OK)
                && entity.getEstado().getId() == 2) {
            
            ViajeHelper helper = new ViajeHelper(deliveryFacadeREST, configuracionFacadeREST);
            MatchearDeliveryThread thread = new MatchearDeliveryThread(entity, helper);          
            thread.start();
            System.out.println("TERMINO");
            
        }  
        return r;
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
        
        if (viaje.getEstado().getId() != estadoFacadeREST.findIdByDescripcion(EstadoViaje.EN_PROCESO)) {
            Delivery delivery = deliveryFacadeREST.find(idDelivery);
            EstadoViaje estado = estadoFacadeREST
                    .find(estadoFacadeREST.findIdByDescripcion(EstadoViaje.EN_PROCESO));
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
    @Path("findPublicados")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Viaje> findPublicados() {
        String consulta = "SELECT v FROM Viaje v"
                + " WHERE v.estado.id = 2";
        TypedQuery<Viaje> query = em.createQuery(consulta, Viaje.class);     
        
        List<Viaje> results = query.getResultList();
        
        return results;
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
    @Path("finalizarViaje/{idViaje}")
    @Produces(MediaType.TEXT_PLAIN)
    public void finalizarViaje(@PathParam("idViaje") Integer idViaje) {
        Viaje viaje = find(idViaje);   
        
        if (viaje.getEstado().getId() == estadoFacadeREST.findIdByDescripcion(EstadoViaje.EN_PROCESO)) {
            EstadoViaje estado = estadoFacadeREST
                    .find(estadoFacadeREST.findIdByDescripcion(EstadoViaje.FINALIZADO));
            viaje.setEstado(estado);
            em.persist(viaje);
        } else {
            return;
        }
    }
}
