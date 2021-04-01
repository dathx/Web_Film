package com.poly.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/share/*")
public class ShareServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			this.share(req,resp);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//req.setAttribute("message", "Share đã sảy ra lỗi"+e);
		}
		req.setAttribute("view","/share.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

	private void share(HttpServletRequest req, HttpServletResponse resp) throws AddressException, MessagingException {
		
		String link = req.getRequestURI();
		//Gủi email chào
		//Thong so ket noi SMTP Server
        Properties p = new Properties();
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.host", "smtp.gmail.com");
        p.put("mail.smtp.port", 587);
        
        //Ket noi SMTP Server
        Session s = Session.getInstance(p, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                    	String username = "dathxps12656@fpt.edu.vn";
                        String password = "dat241910029";
                        return new PasswordAuthentication(username,password );
                    }});    

        String from = "dathxps12656@fpt.edu.vn";
		String to = req.getParameter("to");	
		String subject = "Share video";
		String body = "http://localhost:8080"+link;
				
		
		//Tao message
        MimeMessage msg = new MimeMessage(s);
        msg.setFrom(new InternetAddress(from));
        msg.setRecipients(Message.RecipientType.CC, to);
        msg.setSubject(subject,"utf-8");
        msg.setText(body,"utf-8","html");
        msg.setReplyTo(msg.getFrom());	            
        Transport.send(msg);
      
        req.setAttribute("message", "Chia sẻ thành công");
		
	}
	
}
