package com.poly.webfilter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class AppFilter implements HttpFilter{
	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException{
			req.setCharacterEncoding("utf-8");		
			resp.setCharacterEncoding("utf-8");	
			RRShare.add(req, resp);
			chain.doFilter(req, resp);
			RRShare.remove();
	}
}
