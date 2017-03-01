/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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


/**
 *
 * @author DeliverIT
 */
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
        String consulta = "SELECT c FROM Configuracion c"
                + " WHERE c.descripcion = :descripcion";
        TypedQuery<Configuracion> query = em.createQuery(consulta, Configuracion.class);     
        query.setParameter("descripcion", descripcion);
        
        return query.getSingleResult();
    }
}
