/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 *
 * @author JMArtegoytia
 */
@javax.ws.rs.ApplicationPath("ws")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(ucu.deliverit.backcore.entidades.servicios.ClienteFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.ClienteTelefonoFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.DeliveryFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.DireccionFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.EstadoViajeFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.PedidoFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.RestaurantFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.SucursalFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.TransaccionFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.UbicacionFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.UsuarioFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.UsuarioTelefonoFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.VehiculoFacadeREST.class);
        resources.add(ucu.deliverit.backcore.entidades.servicios.ViajeFacadeREST.class);
    }
    
}
