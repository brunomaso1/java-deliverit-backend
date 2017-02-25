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
import javax.ws.rs.core.PathSegment;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.SucursalPK;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

/**
 *
 * @author JMArtegoytia
 */
@Stateless
@Path("sucursal")
public class SucursalFacadeREST extends AbstractFacade<Sucursal> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    private SucursalPK getPrimaryKey(PathSegment pathSegment) {
        /*
         * pathSemgent represents a URI path segment and any associated matrix parameters.
         * URI path part is supposed to be in form of 'somePath;id=idValue;restaurant=restaurantValue'.
         * Here 'somePath' is a result of getPath() method invocation and
         * it is ignored in the following code.
         * Matrix parameters are used as field names to build a primary key instance.
         */
        ucu.deliverit.backcore.entidades.SucursalPK key = new ucu.deliverit.backcore.entidades.SucursalPK();
        javax.ws.rs.core.MultivaluedMap<String, String> map = pathSegment.getMatrixParameters();
        java.util.List<String> id = map.get("id");
        if (id != null && !id.isEmpty()) {
            key.setId(new java.lang.Short(id.get(0)));
        }
        java.util.List<String> restaurant = map.get("restaurant");
        if (restaurant != null && !restaurant.isEmpty()) {
            key.setRestaurant(new java.lang.Integer(restaurant.get(0)));
        }
        return key;
    }

    public SucursalFacadeREST() {
        super(Sucursal.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Sucursal entity) {
        RespuestaGeneral r = new RespuestaGeneral();
  
        if (entity.getDireccion() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Dirección" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getRestaurant() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Restaurant" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }           

        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") PathSegment id, Sucursal entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.SucursalPK key = getPrimaryKey(id);
        super.remove(super.find(key));
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Sucursal find(@PathParam("id") PathSegment id) {
        ucu.deliverit.backcore.entidades.SucursalPK key = getPrimaryKey(id);
        return super.find(key);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sucursal> findAll() {
        return super.findAll();
    }
    
    @GET
    @Path("findPedidos/{restaurant}/{sucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findPedidos(@PathParam("restaurant") Integer restaurant,
            @PathParam("sucursal") Integer sucursal) {
        String consulta = "SELECT p FROM Pedido p"
                + " JOIN p.viaje v"
                + " WHERE v.sucursal.sucursalPK.id = :sucursal"
                + " AND v.sucursal.sucursalPK.restaurant = :restaurant";
        TypedQuery<Pedido> query = em.createQuery(consulta, Pedido.class);     
        query.setParameter("sucursal", sucursal);
        query.setParameter("restaurant", restaurant);
        
        List<Pedido> results = query.getResultList();
        
        return results;
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sucursal> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
