package com.poly.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.UserLogin;
import com.poly.utils.CookieUtils;
import com.poly.utils.UserLoginDAO;
@MultipartConfig
@WebServlet({ "/sign-in", "/sign-up", "/forgot-password", "/edit-profile","/change-password","/sign-out" })
public class AccountServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String id = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);
		req.setAttribute("username", id);
		req.setAttribute("password", password);

		String uri = req.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("edit-profile")) {
			this.doEditProfile(req, resp);
		} else if (uri.contains("forgot-password")) {
			this.doForgotPass(req, resp);
		}else if (uri.contains("change-password")) {
			this.doChangePassword(req,resp);
		}
		else if (uri.contains("sign-out")) {
			req.getSession().setAttribute("user", null);
			req.setAttribute("view", "/Sign-In-Up.jsp");
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		}
	}


	// Đăng nhập
	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		int kt = 1;
		if (method.equalsIgnoreCase("get")) {
			String id = req.getParameter("username");
			String password = req.getParameter("password");
			String remember = req.getParameter("remember");

			try {
				UserLoginDAO dao = new UserLoginDAO();
				UserLogin user = dao.findByID(id);
				if (!user.getPassword().equals(password)) {
					req.setAttribute("message", "Sai mật khẩu!");
				} else {
					if (user.getAdmin()==true) {
						kt=2;
						//req.getRequestDispatcher("/admin/home").forward(req, resp);
					}else {
						//req.getRequestDispatcher("/index").forward(req, resp);
						kt=3;
					}
					req.setAttribute("message", "Đăng nhập thành công!");
					req.getSession().setAttribute("user", user);				
					// ghi nhớ hoặc xóa tài khoản đã nhớ bằng cookie
					int hours = (remember == null) ? 0 : 30 * 24;// 0=xóa
					CookieUtils.add("username", id, hours, resp);
					CookieUtils.add("password", password, hours, resp);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
			}
		}
		if (kt==1) {
			req.setAttribute("view", "/Sign-In-Up.jsp");
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
			
		}else if(kt==3) {
			req.getRequestDispatcher("/index").forward(req, resp);			
		}else {
			req.getRequestDispatcher("/admin/home").forward(req, resp);
		}
		
	}

	// Đăng kí
	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				UserLogin entity = new UserLogin();
				BeanUtils.populate(entity, req.getParameterMap());
				UserLoginDAO dao = new UserLoginDAO();
				dao.create(entity);
				req.setAttribute("message1", "Đăng kí thành công!");
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
	    		String to = req.getParameter("email");	
	    		String subject = "Hi. Chào mừng bạn đến với Dathx movies";
	    		String body = "Từ giờ bạn đã trở thành thành viên của trang web xem phim dathx movies";
	    				
	    		
	    		//Tao message
	            MimeMessage msg = new MimeMessage(s);
	            msg.setFrom(new InternetAddress(from));
	            msg.setRecipients(Message.RecipientType.TO, to);
	            msg.setSubject(subject,"utf-8");
	            msg.setText(body,"utf-8","html");
	            msg.setReplyTo(msg.getFrom());	            
	            Transport.send(msg);
			} catch (Exception e) {
				req.setAttribute("message1", "Đăng kí thất bại!");
			}
		}
		req.setAttribute("view", "/Sign-In-Up.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

	// Quyên mật khẩu
	private void doForgotPass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { // TODO Auto-generated method stub
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			String username = req.getParameter("username");
			String email = req.getParameter("email");
			try {
				UserLoginDAO dao = new UserLoginDAO();
				UserLogin user = dao.findByID(username);
				//nếu user name và email đúng thì gửi mk về  mail 
				if (user.getId().equalsIgnoreCase(username)&& user.getEmail().equalsIgnoreCase(email)) {
					String password = user.getPassword();
					//Gủi Mật khẩu về gmail
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
		    		String to = email;	
		    		String subject = "Lấy lại mật khẩu";
		    		String body = "Mật khẩu của bạn là: "+password;
		    				
		    		
		    		//Tao message
		            MimeMessage msg = new MimeMessage(s);
		            msg.setFrom(new InternetAddress(from));
		            msg.setRecipients(Message.RecipientType.TO, to);
		            msg.setSubject(subject,"utf-8");
		            msg.setText(body,"utf-8","html");
		            msg.setReplyTo(msg.getFrom());	            
		            Transport.send(msg);
		            req.setAttribute("msg1", "Mật khẩu đã được gửi về email của bạn!");
				}
			} catch (Exception e) {
				req.setAttribute("msg1", "Thao tác không thành công! Vui lòng kiểm tra lại username và email!");
			}
		}
		req.setAttribute("view", "/forgotpassword.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	} 
	// Chỉnh sửa thông tin cá nhân
	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserLogin userLogin = (UserLogin) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("post")) {
			try {
				BeanUtils.populate(userLogin, req.getParameterMap());
				UserLoginDAO dao = new UserLoginDAO();
				dao.update(userLogin);
				req.setAttribute("msg", "Cập nhật thành công!");
				req.getSession().setAttribute("user", userLogin);
			} catch (Exception e) {
				req.setAttribute("msg", "Cập nhật thất bại!");
			}
		}
		req.setAttribute("view", "/editprofile.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
	//Đổi mật khẩu
	private void doChangePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserLogin userLogin = (UserLogin) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			try {
				String newpw1 = req.getParameter("newpw1");
				String newpw2 = req.getParameter("newpw2");
				if (!newpw1.equals(newpw2)) {
					req.setAttribute("msg2", "Xác nhận mật khẩu không khớp!");
				}else {		
					  UserLogin userLogin2 = new UserLogin(); 
					  userLogin2.setId(userLogin.getId());//set id = idcũ trong session
					  userLogin2.setPassword(newpw1);//set mk = mk mới1
					  userLogin2.setFullname(userLogin.getFullname());//set name = name cũ trong session
					  userLogin2.setEmail(userLogin.getEmail());//set email = email cũ trong session
					  userLogin2.setAdmin(userLogin.getAdmin());//set admin = admin cũ trong session
					  UserLoginDAO dao1 = new UserLoginDAO(); 
					  dao1.update(userLogin2);
					  req.setAttribute("msg2","Đổi mật khẩu thành công!");
					  req.getSession().setAttribute("user", userLogin2);
					
				}
			} catch (Exception e) {
				req.setAttribute("msg2", "Đổi mật khẩu thất bại!");
			}
		}
		req.setAttribute("view", "/changepassword.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		
	}

}
