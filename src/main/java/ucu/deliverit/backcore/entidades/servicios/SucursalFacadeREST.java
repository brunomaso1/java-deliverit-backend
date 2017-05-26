package ucu.deliverit.backcore.entidades.servicios;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
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
import ucu.deliverit.backcore.entidades.Cliente;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("sucursal")
public class SucursalFacadeREST extends AbstractFacade<Sucursal> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public SucursalFacadeREST() {
        super(Sucursal.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Sucursal entity) {
        RespuestaGeneral r = new RespuestaGeneral();
  
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Sucursal" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getDireccion() == null) {
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
    public void edit(@PathParam("id") Integer id, Sucursal entity) {
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
    public Sucursal find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Sucursal> findAll() {
        return super.findAll();
    }
    
    @GET
    @Path("findPedidos/{sucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findPedidos(@PathParam("sucursal") Integer sucursal) {
        List<Pedido> retorno = new ArrayList<>();
        
        String consulta = "SELECT p FROM Pedido p"
                + " JOIN p.viaje v"
                + " WHERE v.sucursal.id = :sucursal";
        TypedQuery<Pedido> query = em.createQuery(consulta, Pedido.class);     
        query.setParameter("sucursal", sucursal);
        
        List<Pedido> results = query.getResultList();
        
        return results;
    }
    
    @GET
    @Path("findViajes/{sucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Viaje> findViajes(@PathParam("sucursal") Integer sucursal) {
        
        String consulta = "SELECT v FROM Viaje v"
                + " WHERE v.sucursal.id = :sucursal";
        TypedQuery<Viaje> query = em.createQuery(consulta, Viaje.class);     
        query.setParameter("sucursal", sucursal);
        
        List<Viaje> results = query.getResultList();
        return results;
    }
    
    @GET
    @Path("findPedidosToday/{sucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Pedido> findPedidosToday(@PathParam("sucursal") Integer sucursal) {
        List<Pedido> retorno = new ArrayList<>();
        
        String consulta = "SELECT p.id, p.cliente, p.viaje FROM Pedido p"
                + " JOIN p.viaje v"
                + " WHERE v.sucursal.id = :sucursal AND (p.fecha >= :today)";
        TypedQuery<Object[]> query = em.createQuery(consulta, Object[].class);  
        
        Timestamp today = Timestamp.valueOf(LocalDateTime.now());
        today.setHours(0);
        today.setMinutes(0);
        today.setSeconds(0);
        
        query.setParameter("sucursal", sucursal);
        query.setParameter("today", today);
        
        List<Object[]> results = query.getResultList();
        
        for (Object[] result : results) {
            Pedido p = new Pedido();
            p.setId((Integer)result[0]);
            p.setCliente((Cliente) result[1]);
          
            Viaje v = (Viaje) result[2];
            Viaje vAuxiliar = new Viaje();
            vAuxiliar.setId(v.getId());
            vAuxiliar.setDelivery(v.getDelivery());
            vAuxiliar.setPrecio(v.getPrecio());
            vAuxiliar.setEstado(v.getEstado());
            vAuxiliar.setFecha(v.getFecha());
            p.setViaje(vAuxiliar);         

            retorno.add(p);
        }
        
        return retorno;
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
