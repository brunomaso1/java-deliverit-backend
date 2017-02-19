/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades.servicios;

import javax.persistence.EntityManager;
import ucu.deliverit.backcore.entidades.Configuracion;


/**
 *
 * @author JMArtegoytia
 */
public class ConfiguracionFacadeREST extends AbstractFacade<Configuracion> {

    @Override
    protected EntityManager getEntityManager() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ConfiguracionFacadeREST() {
        super(Configuracion.class);
    }
}
