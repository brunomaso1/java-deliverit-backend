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
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

/**
 *
 * @author JMArtegoytia
 */
@Stateless
@Path("direccion")
public class DireccionFacadeREST extends AbstractFacade<Direccion> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public DireccionFacadeREST() {
        super(Direccion.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Direccion entity) {
        RespuestaGeneral r = new RespuestaGeneral();        
        
        if (entity.getCalle() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Calle" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getNroPuerta() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Nº de puerta" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Direccion entity) {
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
    public Direccion find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Direccion> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Direccion> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        Direccion dir = new Direccion();
        dir.setEsquina("Joaquín Suárez");
        dir.setLatitud(-31.3822146);
        dir.setLongitud(-57.9693184);
        
        RespuestaGeneral r = create(dir);
        
        
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}
