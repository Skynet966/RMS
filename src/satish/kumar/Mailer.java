package satish.kumar;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {
	public static void send(String to,String subject,String msg){

		final String user="snapcareaboutyou@gmail.com";//change accordingly
		final String pass="snaphireflat123";
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

		//1st step) Get the session object	
		Properties props = new Properties();
		 props.setProperty("mail.smtp.host", "smtp.gmail.com");
	     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
	     props.setProperty("mail.smtp.socketFactory.fallback", "false");
	     props.setProperty("mail.smtp.port", "465");
	     props.setProperty("mail.smtp.socketFactory.port", "465");
	     props.put("mail.smtp.auth", "true");
	     props.put("mail.debug", "true");
	     props.put("mail.store.protocol", "pop3");
	     props.put("mail.transport.protocol", "smtp"); 

	     Session session = Session.getDefaultInstance(props, 
                 new Authenticator(){
                    protected PasswordAuthentication getPasswordAuthentication() {
                       return new PasswordAuthentication(user, pass);
                    }});
		//2nd step)compose message
		try {
		 Message message = new MimeMessage(session);
		 message.setFrom(new InternetAddress(user));
		 message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(to,false));
		 
		//new InternetAddress(user));message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		 message.setSubject(subject);
		 message.setText(msg);
		 
		 //3rd step)send message
		 Transport.send(message);

		 System.out.println("Done");

		 } catch (MessagingException e) {
			throw new RuntimeException(e);
		 }
			
		}
}
