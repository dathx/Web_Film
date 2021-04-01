package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.bean.Video;
@WebServlet("/index")
public class Index extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doTopView(req,resp);
		
		this.doFillSlideHeader(req,resp);
		req.setAttribute("view", "/views/home.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

	private void doFillSlideHeader(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory  emf  = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		//Tao EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();//Bắt đầu
			//Mã thao tác
			Query query = em.createNamedQuery("slideHeader");
			List<Video> list = query.getResultList();
			req.setAttribute("slideHeader", list);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();//Hủy thao tác			
		}
		em.close();
		emf.close();
	}

	private void doTopView(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
				EntityManagerFactory  emf  = Persistence.createEntityManagerFactory("PS12656_JAVA4");
				//Tao EntityManager để bắt đầu làm việc với CSDL
				EntityManager em = emf.createEntityManager();
				try {
					em.getTransaction().begin();//Bắt đầu
					//Mã thao tác
					Query query = em.createNamedQuery("Top12View");
					List<Video> list = query.getResultList();
					req.setAttribute("top12", list);
					em.getTransaction().commit();
				} catch (Exception e) {
					em.getTransaction().rollback();//Hủy thao tác			
				}
				em.close();
				emf.close();	
	}
}
