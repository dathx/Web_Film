package com.poly.servlet.admin;

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

import com.poly.bean.Video;

@WebServlet("/admin/video-list")
public class VideoListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC
			String jpql = "select o from Video o";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class); // tạo đối tượng truy vấn
			List<Video> list = query.getResultList();// Truy vấn
			req.setAttribute("listvideo", list);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác

		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác

			System.out.println("Error: " + e);
		}
		em.close();
		emf.close();
		req.setAttribute("view", "/ADMIN/movies-list.jsp");
		req.getRequestDispatcher("/ADMIN/AdminIndex.jsp").forward(req, resp);
	}
}
