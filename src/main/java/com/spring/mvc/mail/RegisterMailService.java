package com.spring.mvc.mail;


import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;


@Service
public class RegisterMailService {
	@Autowired
	private JavaMailSender mailSender;
	
	public  void sendMail(String emailId,String userName ){
		
		MimeMessage message =  this.mailSender.createMimeMessage();
		MimeMessageHelper mimeHelper;
		
		
		try {
			mimeHelper =new MimeMessageHelper(message,true);
			mimeHelper.setTo(emailId);
			mimeHelper.setFrom("rehnumakhushboo812@gmail.com");
			mimeHelper.setSubject("Registration Email Confirmation");
			mimeHelper.setText("<html><body><h1>ABC Ptd Ltd</h1>"+ "\n"+
					"<h3>Hi "+userName+"</h3>"+"\n"+"   "
					+ " <h3 style=\"color: rgb(114, 114, 202);\">You have registered successfully</h3>\r\n"
				
					+ ""+"\n"+new Date()+"</body></html>",true);
			mailSender.send(message);
			
		}catch(MessagingException e) {
			System.out.println("Error Sending message"+e.getMessage());
	}
	}

}
