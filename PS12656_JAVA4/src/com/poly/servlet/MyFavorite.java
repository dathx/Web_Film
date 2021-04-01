package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.bean.UserLogin;
import com.poly.bean.Video;
@WebServlet("/myfavorite")
public class MyFavorite extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//String username = req.getParameter("username");
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC		
			UserLogin userLogin = (UserLogin) req.getSession().getAttribute("user");
			UserLogin user = em.find(UserLogin.class, userLogin.getId());
			req.setAttribute("user", user);
			String jpql = "select o.video from Favorite o where o.user.id=:uid"; // câu lệnh truy vấn jpql
			TypedQuery<Video> query = em.createQuery(jpql,Video.class);	//tạo đối tượng truy vấn
			query.setParameter("uid", userLogin.getId());
			List<Video> list = query.getResultList();//Truy vấn
			req.setAttribute("favorite", list);			
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			System.out.println("Tim thành công!");			
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác			
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();		
		req.setAttribute("view","/views/myfavorite.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
	
}
