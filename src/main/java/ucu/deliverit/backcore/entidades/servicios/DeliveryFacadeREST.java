/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author JMArtegoytia
 */
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
    public Delivery create(Delivery entity) {
        try {
            Delivery d = super.create(entity);
            return d;
        } catch (Exception e) {
            return null;
        }
        
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
    @Path("findAllSinViajesEnProceso")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Delivery> findAllSinViajesEnProceso() {
        System.out.println("***** Comienza a buscarse deliverys sin Viajes En Proceso *****");
        
        String consulta = "SELECT d FROM Delivery d"
                + " WHERE d.id NOT IN (SELECT v.delivery.id FROM Viaje v WHERE v.estado.id = 3)";
        TypedQuery<Delivery> query = em.createQuery(consulta, Delivery.class);     
        
        List<Delivery> results = query.getResultList();
        
        System.out.println("***** Cantidad de deliverys encontrados: " + results.size() + " *****");
        
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
