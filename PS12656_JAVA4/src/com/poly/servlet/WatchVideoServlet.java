package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.poly.bean.UserLogin;
import com.poly.bean.Video;
@WebServlet("/play-video/*")
public class WatchVideoServlet extends HttpServlet{
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			this.moviesDetail(req,resp);	
			this.asideMovies(req,resp);
			//req.setAttribute("view","/single.jsp");
			req.getRequestDispatcher("/single.jsp").forward(req, resp);
		}

	private void asideMovies(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory  emf  = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		//Tao EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();//Bắt đầu
			//Mã thao tác
			Query query = em.createNamedQuery("8videoAside");
			List<Video> list = query.getResultList();
			req.setAttribute("listVideo", list);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();//Hủy thao tác			
		}
		em.close();
		emf.close();	
		
	}

	private void moviesDetail(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		String uri = req.getRequestURI();
		String vdid = uri.substring(uri.lastIndexOf("/")+1);
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC		
			//UserLogin userLogin = (UserLogin) req.getSession().getAttribute("user");
			//UserLogin user = em.find(UserLogin.class, userLogin.getId());
			//req.setAttribute("user", user);
			String jpql = "select o from Video o where id=:vdid"; // câu lệnh truy vấn jpql
			TypedQuery<Video> query = em.createQuery(jpql,Video.class);	//tạo đối tượng truy vấn				
			query.setParameter("vdid",vdid );
			System.out.println(req.getParameter("id"));
			List<Video> list = query.getResultList();//Truy vấn
			req.setAttribute("play", list);		
			System.out.println(list);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			System.out.println("Tim thành công!");			
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác			
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();
		
	}
	
	
}
