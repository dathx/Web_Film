package com.poly.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.UserLogin;
import com.poly.utils.UserLoginDAO;
@WebServlet({"/admin/user-edition/*","/admin/user-update","/admin/user-delete"})
public class UserEditionServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		UserLoginDAO dao = new UserLoginDAO();
		UserLogin userLogin = new UserLogin();
		String uri = req.getRequestURI();
		
		if(uri.contains("user-edition")) {
			String id = uri.substring(uri.lastIndexOf("/")+1);//Lấy id ở cuối đường dẫn
			userLogin=dao.findByID(id);
		}else if (uri.contains("user-update")) {
			try {
				BeanUtils.populate(userLogin, req.getParameterMap());
				dao.update(userLogin);
				req.setAttribute("message", "Cập nhật thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại!");
			}
		}else if (uri.contains("user-delete")) {
			try {
				String id= req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại!");
			}
		}
		req.setAttribute("form", userLogin);
		req.setAttribute("view", "/ADMIN/user-edition.jsp");
		req.getRequestDispatcher("/ADMIN/AdminIndex.jsp").forward(req, resp);
	}
}
