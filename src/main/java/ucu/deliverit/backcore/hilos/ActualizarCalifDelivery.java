package ucu.deliverit.backcore.hilos;

import ucu.deliverit.backcore.helpers.ViajeHelper;

public class ActualizarCalifDelivery extends Thread {
    private ViajeHelper helper;
    private Integer idViaje;
    
    public ActualizarCalifDelivery(ViajeHelper helper, Integer idViaje) {
        this.helper = helper;
        this.idViaje = idViaje;
    }

    @Override
    public void run() { 
        try {
            helper.actualizarCalifDelivery(idViaje);
            this.finalize();
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
    }
}
