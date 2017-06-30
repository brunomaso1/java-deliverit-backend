package ucu.deliverit.backcore.entidades;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mail {    
    private String mail;
    private String mailUser;
    private String mailPass;  
    
    public Mail (String mail, String user, String pass) {
        this.mail = mail;
        this.mailUser = user;
        this.mailPass = pass;
    }
    
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMailUser() {
        return mailUser;
    }

    public void setMailUser(String mailUser) {
        this.mailUser = mailUser;
    }

    public String getMailPass() {
        return mailPass;
    }

    public void setMailPass(String mailPass) {
        this.mailPass = mailPass;
    }
    
    public void enviarMail(Viaje viaje) throws AddressException {	    
        Properties prop = new Properties();
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "25");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");    
		
        Session session = Session.getInstance(prop,
        new javax.mail.Authenticator() {
           protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(mailUser, mailPass);
           }
        });
		
        MimeMessage message = new MimeMessage(session);
		
        Address addressFrom = new InternetAddress(mail);
	
        try {
            message.setFrom(addressFrom);			
            message.setRecipients(Message.RecipientType.TO,
            InternetAddress.parse(viaje.getSucursal().getRestaurant().getUsuario().getMail()));

            message.setSubject("Han aceptado uno de tus viajes!");
            message.setText(crear(viaje), "utf-8", "html");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }        

        System.out.println("***** Mail enviado correctamente .... *****");		
    }
    
    private String crear(Viaje viaje) {
        String texto = "<html>";
        texto += "<div>";
        if (viaje.getDelivery().getUsuario().getFoto() != null) {
            texto += "<div style=\"width:20%; float:left; margin-top: 20px\">";
            texto += "<img alt=\"Foto delivery\" src=\"data:image/png;base64,";
            texto += viaje.getDelivery().getUsuario().getFoto() + "\"/>";
            texto += "</div>";
        }
        texto += "<div style=\"width:80%; float:left;\">";
        texto += "<h2>" + viaje.getDelivery().getNombre() + "</h2><br>";
        texto += "<h3>Fecha: " + viaje.getFecha() + "</h3>";
        texto += "<h3>Id de Viaje: " + viaje.getId() + "</h3>";
        texto += "<h3>Precio: $" + viaje.getPrecio() + "</h3><br>";
        
        texto += "<p>Los pedidos que deberá entregar son los siguientes:</p>";
        for (Pedido p : viaje.getPedidos()) {
            texto += "<p>Id: " + p.getId() + "</p>";
            texto += "<p>Cliente: " + p.getCliente().getNombre() + "</p>";
            texto += "<p>Dirección: " + p.getCliente().getDireccion().getCalle() 
                    + " "
                    + p.getCliente().getDireccion().getNroPuerta() + "</p><br>";
        }        
        
        texto += "</div>";
        texto += "</div>";
        texto += "</html>";
        return texto;
    }
}