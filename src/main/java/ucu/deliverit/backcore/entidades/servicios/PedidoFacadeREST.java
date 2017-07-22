package ucu.deliverit.backcore.entidades.servicios;

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
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.PedidoHelper;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("pedido")
public class PedidoFacadeREST extends AbstractFacade<Pedido> {
    
    @EJB
    private EstadoViajeFacadeREST estadoFacadeREST;

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
        } else if (entity.getCliente() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Cliente" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getCliente().getDireccion() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Dirección cliente" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getViaje() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Viaje" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Pedido entity) {
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
    public Pedido find(@PathParam("id") Integer id) {
        return super.find(id);
    }
    
    @GET
    @Path("solicitarPedidos/{idViaje}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> solicitarPedidos(@PathParam("idViaje") Integer idViaje) {
        List<Pedido> results = em.createNamedQuery("Pedido.solicitarPedidos")
            .setParameter("idViaje", idViaje)
            .setParameter("idEstadoViaje", estadoFacadeREST.findIdByDescripcion(EstadoViaje.PUBLICADO))
            .getResultList();
        PedidoHelper ph = new PedidoHelper();
        return ph.limpiarPedidosMobile(results);
    }
    
    @GET
    @Path("findByViaje/{idViaje}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findByViaje(@PathParam("idViaje") Integer idViaje) {
        return em.createNamedQuery("Pedido.findByViaje")
            .setParameter("idViaje", idViaje)
            .getResultList();
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findAll() {
        return super.findAll();
    }
    
//    @GET
//    @Path("findByViaje/{viaje}")
//    @Produces(MediaType.APPLICATION_JSON)
//    public Viaje findByViaje(Integer viaje) {
//        return (Viaje)em.createNamedQuery("Pedido.findByViaje")
//            .setParameter("viaje", viaje)
//            .getSingleResult();
//    }

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

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}