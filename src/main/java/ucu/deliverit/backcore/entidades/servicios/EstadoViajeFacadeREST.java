package ucu.deliverit.backcore.entidades.servicios;

import java.util.List;
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
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("estadoviaje")
public class EstadoViajeFacadeREST extends AbstractFacade<EstadoViaje> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public EstadoViajeFacadeREST() {
        super(EstadoViaje.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(EstadoViaje entity) {
        RespuestaGeneral r = new RespuestaGeneral();
        
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Estado de Viaje" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Short id, EstadoViaje entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Short id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public EstadoViaje find(@PathParam("id") Short id) {
        return super.find(id);
    }
    
    @GET
    @Path("findIdByDescripcion/{descripcion}")
    @Produces(MediaType.TEXT_PLAIN)
    public Short findIdByDescripcion(@PathParam("descripcion") String descripcion) {
        EstadoViaje estado = (EstadoViaje)em.createNamedQuery("EstadoViaje.findByDescripcion")
            .setParameter("descripcion", descripcion)
            .getSingleResult();
        return estado.getId();
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<EstadoViaje> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<EstadoViaje> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
