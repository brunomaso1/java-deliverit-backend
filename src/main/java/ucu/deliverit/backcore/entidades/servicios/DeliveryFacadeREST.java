package ucu.deliverit.backcore.entidades.servicios;

import java.util.List;
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
import javax.ws.rs.core.MediaType;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("delivery")
public class DeliveryFacadeREST extends AbstractFacade<Delivery> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public DeliveryFacadeREST() {
        super(Delivery.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Delivery entity) {
        RespuestaGeneral r = new RespuestaGeneral();
        
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Delivery" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Delivery entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Delivery find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findAll() {
        return super.findAll();
    }
    
    @GET
    @Path("findBySucursal/{idSucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findBySucursal(@PathParam("idSucursal") Integer idSucursal) {
        String consulta = "SELECT DISTINCT d FROM Delivery d"
                + " JOIN d.viajeCollection v"
                + " WHERE v.sucursal.id = :idSucursal";
        TypedQuery<Delivery> query = em.createQuery(consulta, Delivery.class);     
        List<Delivery> results = em.createNamedQuery("Delivery.findBySucursal")
            .setParameter("idSucursal", idSucursal)
            .getResultList();
        return results;
    }
    
    @GET
    @Path("findAllSinViajesEnProceso")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findAllSinViajesEnProceso() {
        List<Delivery> results = em.createNamedQuery("Delivery.findBySucursal")
            .getResultList();
        
        return results;
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
    
}
