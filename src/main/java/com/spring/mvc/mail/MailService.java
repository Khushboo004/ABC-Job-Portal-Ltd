package com.spring.mvc.mail;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
@Autowired
	private JavaMailSender mailSender;



	public void sendMail(String emailId)
	{
		MimeMessage message =  this.mailSender.createMimeMessage();
		MimeMessageHelper mimeHelper;
		try {
			mimeHelper = new MimeMessageHelper(message,true);
			mimeHelper.setTo(emailId);
			
			
			mimeHelper.setFrom("rehnumakhushboo812@gmail.com");
			mimeHelper.setSubject("Password Reset");
			mimeHelper.setText("<html><body style=\"font-size: 1rem;\"><h2>Hi! This is ABC Jobs Pte Ltd</h2><h4>If you want to reset the password, click on the Reset Password button</h4>"
					+ "<button style=\""
					+ " border-radius: 1rem; text-decoration:none;background:cadetblue;padding:15px; color: black; font-size: 20px;border: none;\">\r\n"
					+ "<a href='http://localhost:8080/ABC-Job/resetPassword/"
					+emailId+"/'> Reset Password</a></button> </body></html>",true);
			mailSender.send(message);
		} catch (MessagingException e) {
			System.out.println("Error Sending email "+ e.getMessage());
		}
		
	}
}