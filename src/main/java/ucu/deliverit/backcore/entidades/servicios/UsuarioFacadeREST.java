/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;
import ucu.deliverit.backcore.entidades.Usuario;

/**
 *
 * @author JMArtegoytia
 */
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
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void create(Usuario entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void edit(@PathParam("id") Integer id, Usuario entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Usuario find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Usuario> findAll() {
        ClassLoader classLoader = getClass().getClassLoader();
	
        
         ///////////////////////////////////////
        FirebaseOptions options = null;
        InputStream file = this.getClass().getClassLoader()
                .getResourceAsStream("META-INF/BackCoreFireBase-8a740a7a84f3.json");

        options = new FirebaseOptions.Builder()
                .setServiceAccount(file)
                .setDatabaseUrl("https://backcorefirebase.firebaseio.com")
                .build();
        FirebaseApp.initializeApp(options);
        
        String message_url = new String("https://fcm.googleapis.com/fcm/send");
        String to = new String("dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6");
        String message_key = new String("key=AAAA_mhFqRM:APA91bG-RTlllJMlQ3s9iI3LjXf9KxiW82kXpzhfJ4XyBx2GxrW94NQai7qVRILE8CA62Ye8xrdViNxInMh0kw3fMOJPCvi4lKsby-9zv8Jqy3H-9rvPmrl3qMIfcGNPmXns2mzg6fSV");

        // Generating a JSONObject for the content of the message
        JSONObject message = new JSONObject();
        message.put("message", "TEXT");
        JSONObject protocol = new JSONObject();
        protocol.put("to", to);
        protocol.put("data", message);

        try {
            
            HttpClient httpClient = new DefaultHttpClient();
            HttpPost request = new HttpPost(message_url);
            request.addHeader("content-type", "application/json");
            request.addHeader("Authorization", message_key);

            StringEntity params = new StringEntity(protocol.toString());
            request.setEntity(params);
            System.out.println(params);

            HttpResponse response = httpClient.execute(request);
            System.out.println(response.toString());
        } catch (Exception e) {
        }
        ///////////////////////////////////////
        
        
        
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
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
