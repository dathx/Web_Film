package com.poly.webfilter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.bean.UserLogin;

@WebFilter({"/myfavorite","/change-password","/sign-out","/edit-profile","/like/*","/admin/*"})
public class AuthFilter implements HttpFilter {
	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String uri = req.getRequestURI();
		UserLogin user = (UserLogin)req.getSession().getAttribute("user");
		String error="";
		if (user==null) {//Chuaw dang nhap
			error = resp.encodeURL("Vui long dang nhap");
		}else if (!user.getAdmin()&&uri.contains("admin")) {//ko phai admin
			error=resp.encodeURL("Vui long dang nhap voi vai tro admin");
		}
		if (!error.isEmpty()) {//truy cap ko hop le
			req.getSession().setAttribute("security", uri);
			resp.sendRedirect("/PS12656_JAVA4/sign-in?error="+resp.encodeURL(error));
		}else {//Truy cap hop le
			chain.doFilter(req, resp);
		}
	}
}
