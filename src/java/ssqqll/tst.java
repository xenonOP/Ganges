////
//package ssqqll;
//import java.io.File;
//import java.lang.System.*;
//import java.util.Properties;
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeBodyPart;
//import javax.mail.internet.MimeMessage;
//import javax.mail.internet.MimeMultipart;
//
//public class tst {
//    public static void main(String[] args) {
//		
//		System.out.println("preparing to send message ...");
//		String message = "Hello , Dear, this is message for security check . ";
//		String subject = "CodersArea : Confirmation";
//		String to = "nirbhay.sharmad@gmail.com";
//		String from = "techsoftindia2018@gmail.com";
//		
////		sendEmail(message,subject,to,from);
//		sendAttach(message,subject,to,from);
//	}
//
//	//this is responsible to send the message with attachment
//	private static void sendAttach(String message, String subject, String to, String from) {
//
//		//Variable for gmail
//		String host="smtp.gmail.com";
//		
//		//get the system properties
//		Properties properties = System.getProperties();
//		System.out.println("PROPERTIES "+properties);
//		
//		//setting important information to properties object
//		
//		//host set
//		properties.put("mail.smtp.host", host);
//		properties.put("mail.smtp.port","465");
//		properties.put("mail.smtp.ssl.enable","true");
//		properties.put("mail.smtp.auth","true");
//		
//		//Step 1: to get the session object..
//		Session session=Session.getInstance(properties, new Authenticator() {
//			@Override
//			protected PasswordAuthentication getPasswordAuthentication() {				
//				return new PasswordAuthentication("kanishrajput123@gmail.com", "dhsvneypxbcjhgvu");
//			}
//			
//			
//			
//		});
//		
//		session.setDebug(true);
//		
//		//Step 2 : compose the message [text,multi media]
//		MimeMessage m = new MimeMessage(session);
//		
//		try {
//		
//		//from email
//		m.setFrom(from);
//		
//		//adding recipient to message
//		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//		
//		//adding subject to message
//		m.setSubject(subject);
//	
//		
//		//attachement..
//		
//		//file path
//		String path="https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80";
//		
//		
//		MimeMultipart mimeMultipart = new MimeMultipart();
//		//text
//		//file
//		
//		MimeBodyPart textMime = new MimeBodyPart();
//		
//		MimeBodyPart fileMime = new MimeBodyPart();
//		
//		try {
//			
//			textMime.setText(message);
//			
//			File file=new File(path);
//			fileMime.attachFile(file);
//			
//			
//			mimeMultipart.addBodyPart(textMime);
//			mimeMultipart.addBodyPart(fileMime);
//		
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
//		
//		
//		m.setContent(mimeMultipart);
//		
//		
//		//send 
//		
//		//Step 3 : send the message using Transport class
//		Transport.send(m);
//		
//		
//		
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//	
//		System.out.println("Sent success...................");
//		
//		
//	}
//    
//}
