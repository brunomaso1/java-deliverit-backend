package ucu.deliverit.backcore.hilos;

import java.io.IOException;
import org.json.JSONException;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.ViajeHelper;

public class MatchearDeliveryThread extends Thread {
    private Viaje viaje;
    private ViajeHelper helper;
    
    public MatchearDeliveryThread(Viaje viaje, ViajeHelper helper) {
        this.viaje = viaje;
        this.helper = helper;
    }
    
    @Override
    public void run() {
        try {
            this.helper.matchearDelivery(this.viaje);
        } catch (JSONException e) {
        
        } catch (IOException e) {
            
        } catch (Exception e) {
        
        }
        
    }
}
