package ucu.deliverit.backcore.hilos;

import java.net.ConnectException;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import ucu.deliverit.backcore.entidades.Mail;
import ucu.deliverit.backcore.entidades.Viaje;
import ucu.deliverit.backcore.entidades.servicios.PedidoFacadeREST;

public class EnviarMail extends Thread {
    private Mail mail;
    private Viaje viaje;
    private boolean aceptarFinalizar;
    private PedidoFacadeREST pedidoFacade;
    
    public EnviarMail(Mail mail, Viaje viaje, boolean aceptarFinalizar, PedidoFacadeREST pedidoFacade) {
        this.mail = mail;
        this.viaje = viaje;
        this.aceptarFinalizar = aceptarFinalizar;
        this.pedidoFacade = pedidoFacade;
    }
    
    @Override
    public void run() { 
        try {
            mail.enviarMail(viaje, aceptarFinalizar, pedidoFacade);
            this.finalize();
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (ConnectException e) {
            e.printStackTrace();
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
    }
}