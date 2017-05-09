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
import javax.ws.rs.core.PathSegment;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("pedido")
public class PedidoFacadeREST extends AbstractFacade<Pedido> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public PedidoFacadeREST() {
        super(Pedido.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Pedido entity) {
        RespuestaGeneral r = new RespuestaGeneral();
        
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Pedido" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") PathSegment id, Pedido entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") PathSegment id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Pedido find(@PathParam("id") PathSegment id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findAll() {
        return super.findAll();
    }
    
    @GET
    @Path("findByViaje/{viaje}")
    @Produces(MediaType.APPLICATION_JSON)
    public Viaje findByViaje(Integer viaje) {
        return (Viaje)em.createNamedQuery("Pedido.findByViaje")
            .setParameter("viaje", viaje)
            .getSingleResult();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        return String.valueOf(super.count());
    }
    
    @GET
    @Path("findPedidosPorViaje/{idViaje}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findPedidosPorViaje(@PathParam("idViaje") Integer idViaje) {
        String consulta = "SELECT p FROM Pedido p"
                + " WHERE p.pedidoPK.viaje = :idViaje";
       
        TypedQuery<Pedido> query = em.createQuery(consulta, Pedido.class);     
        query.setParameter("idViaje", idViaje);
        
        List<Pedido> results = query.getResultList();

        return results;    
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}