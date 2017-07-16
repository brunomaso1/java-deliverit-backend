package ucu.deliverit.backcore.hilos;

import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.TransaccionHelper;

public class PagarThread extends Thread {
    private TransaccionHelper helper;
    private Viaje viaje;
    
    public PagarThread(TransaccionHelper transHelper, Viaje viaje) {
        this.helper = transHelper;
        this.viaje = viaje;
    }
    
    @Override
    public void run() { 
        try {
            helper.pagar(viaje);
            this.finalize();
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
    }
}