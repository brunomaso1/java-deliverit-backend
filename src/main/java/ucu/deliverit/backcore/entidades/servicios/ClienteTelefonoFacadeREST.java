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
import ucu.deliverit.backcore.entidades.ClienteTelefono;
import ucu.deliverit.backcore.entidades.ClienteTelefonoPK;

/**
 *
 * @author JMArtegoytia
 */
@Stateless
@Path("clientetelefono")
public class ClienteTelefonoFacadeREST extends AbstractFacade<ClienteTelefono> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    private ClienteTelefonoPK getPrimaryKey(PathSegment pathSegment) {
        /*
         * pathSemgent represents a URI path segment and any associated matrix parameters.
         * URI path part is supposed to be in form of 'somePath;cliente=clienteValue;telefono=telefonoValue'.
         * Here 'somePath' is a result of getPath() method invocation and
         * it is ignored in the following code.
         * Matrix parameters are used as field names to build a primary key instance.
         */
        ucu.deliverit.backcore.entidades.ClienteTelefonoPK key = new ucu.deliverit.backcore.entidades.ClienteTelefonoPK();
        javax.ws.rs.core.MultivaluedMap<String, String> map = pathSegment.getMatrixParameters();
        java.util.List<String> cliente = map.get("cliente");
        if (cliente != null && !cliente.isEmpty()) {
            key.setCliente(new java.lang.Integer(cliente.get(0)));
        }
        java.util.List<String> telefono = map.get("telefono");
        if (telefono != null && !telefono.isEmpty()) {
            key.setTelefono(telefono.get(0));
        }
        return key;
    }

    public ClienteTelefonoFacadeREST() {
        super(ClienteTelefono.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public ClienteTelefono create(ClienteTelefono entity) {
        try {
            ClienteTelefono ct = super.create(entity);
            return ct;
        } catch (Exception e) {
            return null;
        }
        
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") PathSegment id, ClienteTelefono entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.ClienteTelefonoPK key = getPrimaryKey(id);
        super.remove(super.find(key));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public ClienteTelefono find(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.ClienteTelefonoPK key = getPrimaryKey(id);
        return super.find(key);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<ClienteTelefono> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<ClienteTelefono> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
