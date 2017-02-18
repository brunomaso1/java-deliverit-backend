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
import javax.ws.rs.core.PathSegment;
import ucu.deliverit.backcore.entidades.UsuarioTelefono;
import ucu.deliverit.backcore.entidades.UsuarioTelefonoPK;

/**
 *
 * @author JMArtegoytia
 */
@Stateless
@Path("usuariotelefono")
public class UsuarioTelefonoFacadeREST extends AbstractFacade<UsuarioTelefono> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    private UsuarioTelefonoPK getPrimaryKey(PathSegment pathSegment) {
        /*
         * pathSemgent represents a URI path segment and any associated matrix parameters.
         * URI path part is supposed to be in form of 'somePath;usuario=usuarioValue;telefono=telefonoValue'.
         * Here 'somePath' is a result of getPath() method invocation and
         * it is ignored in the following code.
         * Matrix parameters are used as field names to build a primary key instance.
         */
        ucu.deliverit.backcore.entidades.UsuarioTelefonoPK key = new ucu.deliverit.backcore.entidades.UsuarioTelefonoPK();
        javax.ws.rs.core.MultivaluedMap<String, String> map = pathSegment.getMatrixParameters();
        java.util.List<String> usuario = map.get("usuario");
        if (usuario != null && !usuario.isEmpty()) {
            key.setUsuario(new java.lang.Integer(usuario.get(0)));
        }
        java.util.List<String> telefono = map.get("telefono");
        if (telefono != null && !telefono.isEmpty()) {
            key.setTelefono(telefono.get(0));
        }
        return key;
    }

    public UsuarioTelefonoFacadeREST() {
        super(UsuarioTelefono.class);
    }

    @POST
    @Override
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void create(UsuarioTelefono entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void edit(@PathParam("id") PathSegment id, UsuarioTelefono entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.UsuarioTelefonoPK key = getPrimaryKey(id);
        super.remove(super.find(key));
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public UsuarioTelefono find(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.UsuarioTelefonoPK key = getPrimaryKey(id);
        return super.find(key);
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<UsuarioTelefono> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<UsuarioTelefono> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
