/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.hilos;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.helpers.ViajeHelper;

/**
 *
 * @author DeliverIT
 */
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
