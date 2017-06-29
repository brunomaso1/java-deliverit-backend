package ucu.deliverit.backcore.entidades.servicios;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.ViajeHelper;
import ucu.deliverit.backcore.hilos.ActualizarCalifDelivery;
import ucu.deliverit.backcore.hilos.MatchearDelivery;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("viaje")
public class ViajeFacadeREST extends AbstractFacade<Viaje> {

    @EJB
    private ViajeFacadeREST viajeFacade;
    
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
        
//         Si se insertó el Viaje correctamente y el estado es Publicado
//         Se ejecuta MatchearDelivery (Thread)
        if (r.getCodigo().equals(RespuestaGeneral.CODIGO_OK)
                && entity.getEstado().getId() == 2) {
            
            ViajeHelper helper = new ViajeHelper(deliveryFacadeREST, configuracionFacadeREST);
            MatchearDelivery thread = new MatchearDelivery(entity, helper);          
            thread.start();            
        }  
        return r;
    }
    
    public List<Short> findCalifByDelivery(Integer idDelivery) {
        List<Short> result = new ArrayList<>();
        List<Object> calificaciones = em.createNamedQuery("Viaje.findCalifByDelivery")
            .setParameter("idDelivery", idDelivery)
            .getResultList();
        
        for (int i = 0; i < calificaciones.size(); i++) {
            result.add((Short)calificaciones.get(i));
        }
        return result;
    }
    

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Viaje entity) {
        super.edit(entity);
    }
    
    @PUT
    @Path("calificar/{id}/{calificacion}")
    public void calificar(@PathParam("id") Integer id, @PathParam("calificacion") Short calificacion) {
        Viaje v = find(id);
        v.setCalificacion(calificacion);
        
        // Una vez seteado el valor de calificación en el viaje
        // Se actualiza el promedio de calificaciones del Delivery
        ViajeHelper helper = new ViajeHelper(viajeFacade, deliveryFacadeREST);
        ActualizarCalifDelivery thread = new ActualizarCalifDelivery(helper, id);
        thread.start();
    }    
    
    @POST
    @Path("aceptarViaje/{idViaje}/{idDelivery}")
    @Produces(MediaType.TEXT_PLAIN)
    public Boolean aceptarViaje(@PathParam("idViaje") Integer idViaje, 
            @PathParam("idDelivery") Integer idDelivery) {
        
        if ((idViaje != null && idViaje != 0) && (idDelivery != null && idDelivery != 0)) {
            Viaje viaje = find(idViaje);   
        
            if (viaje.getEstado().getId() == estadoFacadeREST.findIdByDescripcion(EstadoViaje.PUBLICADO)) {
                Delivery delivery = deliveryFacadeREST.find(idDelivery);
                EstadoViaje estado = estadoFacadeREST
                        .find(estadoFacadeREST.findIdByDescripcion(EstadoViaje.EN_PROCESO));
                viaje.setEstado(estado);
                viaje.setDelivery(delivery);

                return true;
            } else {
                return false;
            }
        } else {
            return false;
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
        Timestamp today = Timestamp.valueOf(LocalDateTime.now());
        today.setHours(3);
        today.setMinutes(0);
        today.setSeconds(0);
        Timestamp now = Timestamp.valueOf(LocalDateTime.now());
        
        List<Viaje> results = em.createNamedQuery("Viaje.findPublicados")
            .setParameter("idEstadoViaje", estadoFacadeREST.findIdByDescripcion(EstadoViaje.PUBLICADO))
            .setParameter("today", today)
            .setParameter("now", now)
            .getResultList();
        ViajeHelper vHelper = new ViajeHelper();
        return vHelper.limpiarViajeParaMobile(results);
    }
    
    @GET
    @Path("findSucursales")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sucursal> findSucursales() {
        List<Sucursal> results = em.createNamedQuery("Viaje.findSucursales")
            .setParameter("idEstado", estadoFacadeREST.findIdByDescripcion(EstadoViaje.PUBLICADO))
            .getResultList();
        ViajeHelper vh = new ViajeHelper();
        return vh.limpiarSucursalParaMobile(results);
    }
    
    @GET
    @Path("findDeliveryViaje/{idViaje}")
    @Produces(MediaType.APPLICATION_JSON)
    public Delivery findDelivery(@PathParam("idViaje") Integer idViaje) {        
        Delivery result = (Delivery)em.createNamedQuery("Viaje.findDelivery")
                .setParameter("idViaje", idViaje)
                .getSingleResult();
        return result;
    }
    
    @GET
    @Path("findDeliverysEnProceso/{idSucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findDeliverysEnProceso(@PathParam("idSucursal") Integer idSucursal) {
        List<Delivery> result = em.createNamedQuery("Viaje.findDeliveryEnProceso")
            .setParameter("idSucursal", idSucursal)
            .setParameter("estado", estadoFacadeREST.findIdByDescripcion(EstadoViaje.EN_PROCESO))
            .getResultList();
        ViajeHelper vh = new ViajeHelper();
        return vh.limpiarDeliverysEnProceso(result);
    }
	
    @GET
    @Path("countPedidos/{idViaje}")
    @Produces(MediaType.TEXT_PLAIN)
    public Long countPedidosViaje(@PathParam("idViaje") Integer idViaje) {
        Long result = (Long)em.createNamedQuery("Viaje.countPedidos")
            .setParameter("idViaje", idViaje)
            .getSingleResult();
        return result;
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
        } 
    }
}
