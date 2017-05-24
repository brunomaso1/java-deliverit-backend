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
import ucu.deliverit.backcore.entidades.Cliente;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("cliente")
public class ClienteFacadeREST extends AbstractFacade<Cliente> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public ClienteFacadeREST() {
        super(Cliente.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Cliente entity) {
        RespuestaGeneral r = new RespuestaGeneral();
        
        // Valido que los parámetros cumplan con la Entidad en cuestión
        if (entity == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Cliente" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getTelefono() == null) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
            r.setMensaje("Teléfono" + RespuestaGeneral.MENSAJE_VALOR_NULO);
            r.setObjeto(null);
        } else if (entity.getTelefono().length() > 9 || entity.getTelefono().length() < 8) {
            r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_INCORRECTO);
            r.setMensaje("Teléfono" + RespuestaGeneral.MENSAJE_VALOR_INCORRECTO);
            r.setObjeto(null);
        } else {
            r = super.create(entity);
        }       
        
        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Cliente entity) {
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
    public Cliente find(@PathParam("id") Integer id) {
        return super.find(id);
    }
    
    @GET
    @Path("findBySucursal/{idSucursal}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Cliente> findBySucursal(@PathParam("idSucursal") Integer idSucursal) {
        String consulta = "SELECT c FROM Cliente c"
                + " JOIN c.pedidoCollection p"
                + " WHERE p.viaje.sucursal.id = :idSucursal";
        TypedQuery<Cliente> query = em.createQuery(consulta, Cliente.class);     
        query.setParameter("idSucursal", idSucursal);
        
        List<Cliente> results = query.getResultList();
        
        return results;
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Cliente> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Cliente> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
