/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.tasks;

import java.util.Timer;
import java.util.TimerTask;
import javax.ejb.EJB;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.entidades.servicios.ViajeFacadeREST;
import static ucu.deliverit.backcore.entidades.servicios.ViajeFacadeREST.DISTANCIA_BUSQUEDA_KM;

/**
 *
 * @author JMArtegoytia
 */
public class TimerObject extends TimerTask {
    public static boolean IS_RUNNING;
    
    private Timer timer;
    
    private Viaje viaje;
    
    @EJB
    private ViajeFacadeREST viajeREST;
    
    public TimerObject (ViajeFacadeREST viajeREST, Viaje viaje) {
        IS_RUNNING = true;
        this.viajeREST = viajeREST;
        this.viaje = viaje;
        this.run();
    }

    @Override
    public void run() {
        // Se crea un timerTask que consulta cada 30 segundos si el viaje
        // tiene un delivery asociado
        this.timer = new Timer();  
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                System.out.println("***** RUN *****");
                Viaje viajeANotificar = viajeREST.find(getViaje().getId());

                // Alguien tomó el viaje, terminar este proceso
                if (viajeANotificar.getDelivery() != null) {
                    ViajeFacadeREST.DISTANCIA_BUSQUEDA_KM = 10;
                    IS_RUNNING = false;
                    timer.cancel();
                    timer.purge();
                    return;
                }  
            }
        }, 0, 10000);
    }
    
    /**
     * @return the timer
     */
    public Timer getTimer() {
        return timer;
    }

    /**
     * @param timer the timer to set
     */
    public void setTimer(Timer timer) {
        this.timer = timer;
    }

    /**
     * @return the viaje
     */
    public Viaje getViaje() {
        return viaje;
    }

    /**
     * @param viaje the viaje to set
     */
    public void setViaje(Viaje viaje) {
        this.viaje = viaje;
    }

    /**
     * @return the viajeREST
     */
    public ViajeFacadeREST getViajeREST() {
        return viajeREST;
    }

    /**
     * @param viajeREST the viajeREST to set
     */
    public void setViajeREST(ViajeFacadeREST viajeREST) {
        this.viajeREST = viajeREST;
    }
}
