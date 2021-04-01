package com.poly.webfilter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class I18nFilter implements HttpFilter {
		@Override
		public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
				throws IOException, ServletException {
			// TODO Auto-generated method stub
			String lang = req.getParameter("lang");
			if(lang!=null) {
				req.getSession().setAttribute("lang",lang);
			}
			chain.doFilter(req, resp);			
		}
}
