package ucu.deliverit.backcore.hilos;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import ucu.deliverit.backcore.entidades.Mail;
import ucu.deliverit.backcore.entidades.Viaje;

public class EnviarMail extends Thread {
    private Mail mail;
    private Viaje viaje;
    
    public EnviarMail(Mail mail, Viaje viaje) {
        this.mail = mail;
        this.viaje = viaje;
    }
    
    @Override
    public void run() { 
        try {
            mail.enviarMail(viaje);
            this.finalize();
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
    }
}