package ucu.deliverit.backcore.entidades.servicios;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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
import ucu.deliverit.backcore.entidades.Usuario;
import ucu.deliverit.backcore.respuestas.RespuestaGeneral;

@Stateless
@Path("usuario")
public class UsuarioFacadeREST extends AbstractFacade<Usuario> {

    @PersistenceContext(unitName = "ucu.deliverit_BackCore_war_1.0PU")
    private EntityManager em;

    public UsuarioFacadeREST() {
            super(Usuario.class);
    }

    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public RespuestaGeneral create(Usuario entity) {
        RespuestaGeneral r = new RespuestaGeneral();

        if (entity == null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
                r.setMensaje("Usuario" + RespuestaGeneral.MENSAJE_VALOR_NULO);
                r.setObjeto(null);
        } else if (entity.getNombre() == null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
                r.setMensaje("Nombre usuario" + RespuestaGeneral.MENSAJE_VALOR_NULO);
                r.setObjeto(null);
        } else if (entity.getPassword() == null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
                r.setMensaje("Contraseña" + RespuestaGeneral.MENSAJE_VALOR_NULO);
                r.setObjeto(null);
        } else if (entity.getTelefono() == null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
                r.setMensaje("Teléfono" + RespuestaGeneral.MENSAJE_VALOR_NULO);
                r.setObjeto(null);
        } else if (entity.getTelefono().length() > 9 || entity.getTelefono().length() < 8) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_INCORRECTO);
                r.setMensaje("Teléfono" + RespuestaGeneral.MENSAJE_VALOR_INCORRECTO);
                r.setObjeto(null);
        } else if (entity.getCuentaRedPagos() == null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_VALOR_NULO);
                r.setMensaje("Cuenta de RedPagos" + RespuestaGeneral.MENSAJE_VALOR_NULO);
                r.setObjeto(null);
        } else {
            Usuario u = findUserByName(entity.getNombre());
            if (u.getId() != null) {
                r.setCodigo(RespuestaGeneral.CODIGO_ERROR_YA_EXISTE);
                r.setMensaje(entity.getNombre() + RespuestaGeneral.MENSAJE_VALOR_YA_EXISTE);
                r.setObjeto(null);
            } else {
                r = super.create(entity);
            }            
        }

        return r;
    }

    @PUT
    @Path("{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public void edit(@PathParam("id") Integer id, Usuario entity) {
            super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
            super.remove(super.find(id));
    }

    @GET
    @Path("login/{nombreUsuario}/{password}")
    @Produces(MediaType.APPLICATION_JSON)
    public Usuario login(@PathParam("nombreUsuario") String nombreUsuario,
                    @PathParam("password") String password) {
        Usuario result = (Usuario)em.createNamedQuery("Usuario.login")
            .setParameter("usuario", nombreUsuario)
            .setParameter("password", password)
            .getSingleResult();
        return result;
    }

    @GET
    @Path("findUserByName/{nombreUsuario}")
    @Produces(MediaType.APPLICATION_JSON)
    public Usuario findUserByName(@PathParam("nombreUsuario") String nombreUsuario) {
        Usuario result = new Usuario();
        try {
            result = (Usuario)em.createNamedQuery("Usuario.findByNombre")
                .setParameter("nombre", nombreUsuario)
                .getSingleResult();
        } catch (NoResultException e) {
            e.printStackTrace();
        }
        
        return result;
    }

    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Usuario find(@PathParam("id") Integer id) {
            return super.find(id);
    }

    @GET
    @Override
    @Produces(MediaType.APPLICATION_JSON)
    public List<Usuario> findAll() {
            return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Usuario> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
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
