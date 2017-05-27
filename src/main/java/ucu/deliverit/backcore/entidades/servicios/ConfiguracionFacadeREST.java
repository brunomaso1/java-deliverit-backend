package ucu.deliverit.backcore.entidades.servicios;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import ucu.deliverit.backcore.entidades.Configuracion;

@Stateless
@Path("configuracion")
public class ConfiguracionFacadeREST extends AbstractFacade<Configuracion> {
    
    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ConfiguracionFacadeREST() {
        super(Configuracion.class);
    }
    
    @GET
    @Path("{descripcion}")
    @Produces(MediaType.APPLICATION_JSON)
    public Configuracion findByDesc(@PathParam("descripcion") String descripcion) {
        Configuracion result = (Configuracion)em.createNamedQuery("Configuracion.findByDesc")
            .setParameter("descripcion", descripcion)
            .getSingleResult();
        return result;
    }
}
