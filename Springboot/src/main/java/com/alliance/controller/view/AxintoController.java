package com.alliance.controller.view;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.entity.EmployeeDetails;
import com.alliance.service.AxintoService;

@Controller
public class AxintoController {
	@Autowired
	private AxintoService service;
	
	@RequestMapping("/sendmail")
	private String sendmail() throws AddressException, MessagingException, IOException {
		   Properties props = new Properties();
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.port", "587");
		   
		   Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		      protected PasswordAuthentication getPasswordAuthentication() {
		         return new PasswordAuthentication("allianceproject143@gmail.com", "alliancepassword143!");
		      }
		   });
		   Message msg = new MimeMessage(session);
		   msg.setFrom(new InternetAddress("allianceproject143@gmail.com", false));

		   msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("allianceproject143@gmail.com"));
		   msg.setSubject("Test subject");
		   msg.setContent("Test content", "text/html");
		   msg.setSentDate(new Date());

		   MimeBodyPart messageBodyPart = new MimeBodyPart();
		   messageBodyPart.setContent("Test body", "text/html");

		   Multipart multipart = new MimeMultipart();
		   multipart.addBodyPart(messageBodyPart);
		  // MimeBodyPart attachPart = new MimeBodyPart();

		   //attachPart.attachFile("/var/tmp/image19.png");
		  // multipart.addBodyPart(attachPart);
		   msg.setContent(multipart);
		   Transport.send(msg);   
		   return "/dashboard";
	}
	
	@RequestMapping("/employees")
	public String employees(ModelMap modelMap) {
		List<EmployeeDetails> empList=service.getEmployeeDetailsList();
		modelMap.addAttribute("empList",empList);
		System.out.println("id:"+empList.get(0).getId());
		return "employees";
	}
}
