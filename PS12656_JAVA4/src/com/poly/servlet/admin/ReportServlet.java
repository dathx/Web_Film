package com.poly.servlet.admin;

import java.io.IOException;
import java.util.Iterator;
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

import com.poly.bean.Favorite;
import com.poly.bean.Report;
import com.poly.bean.UserLogin;
import com.poly.bean.Video;
import com.poly.utils.FavoriteDAO;
import com.poly.utils.UserLoginDAO;

@WebServlet({"/admin/report", "/admin/report-favoriteUser"})
public class ReportServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FavoriteDAO dao = new FavoriteDAO();
		
		this.doFavorite(req,resp);
		this.doFavoriteUser(req,resp);
		
		String uri = req.getRequestURI();
		
		if (uri.contains("report-favoriteUser")) {
			this.fillFavoriteUser(req,resp);
			System.out.println("b4");
		}
		
		//String title = req.getParameter("Title");
		//List<Favorite> listUser = dao.findUserLikeByVideo(title);
		//for(Favorite favorite: listUser) {
		//	System.out.println(favorite.getId());
		//}
		this.doSharedFriend(req,resp);
		
		//req.setAttribute("listUser", listUser);
		req.setAttribute("view", "/ADMIN/report.jsp");
		req.getRequestDispatcher("/ADMIN/AdminIndex.jsp").forward(req, resp);
	}

	private void fillFavoriteUser(HttpServletRequest req, HttpServletResponse resp) {
		String keyword = req.getParameter("Title");
		// Nạp persistence.xml và tạo EntityManagerFactory
		System.out.println("b2");
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC					
			TypedQuery<Favorite> query = em.createNamedQuery("Favorite.findFavoriteUserByTitle",Favorite.class);	//tạo đối tượng truy vấn
			query.setParameter("title", keyword);
			List<Favorite> list = query.getResultList();//Truy vấn
			System.out.println("b1");
			req.setAttribute("listFavoriteUser", list);
			
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			System.out.println("Tim thành công!");
							
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác					
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();	
		
	}

	private void doSharedFriend(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC
			String jpql="select o from Video o where o.shares is not empty";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class); // tạo đối tượng truy vấn
			List<Video> list = query.getResultList();// Truy vấn
			req.setAttribute("shareFriend", list);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác

		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác

			System.out.println("Error: " + e);
		}
		em.close();
		emf.close();
		
	}

	private void doFavoriteUser(HttpServletRequest req, HttpServletResponse resp) {
				// Nạp persistence.xml và tạo EntityManagerFactory
				EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
				// Tạo EntityManager để bắt đầu làm việc với CSDL
				EntityManager em = emf.createEntityManager();
				try {
					em.getTransaction().begin(); // Bắt đầu Transaction
					// MÃ THAO TÁC
					String jpql="select o from Video o where o.favorites is not empty";// lấy những video có người like
					TypedQuery<Video> query = em.createQuery(jpql, Video.class); // tạo đối tượng truy vấn
					List<Video> list = query.getResultList();// Truy vấn
					req.setAttribute("videoFavorite", list);
					em.getTransaction().commit(); // Chấp nhận kết quả thao tác

				} catch (Exception e) {
					em.getTransaction().rollback(); // Hủy thao tác

					System.out.println("Error: " + e);
				}
				em.close();
				emf.close();
			}


	private void doFavorite(HttpServletRequest req, HttpServletResponse resp) {
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// MÃ THAO TÁC
			String jpql = "select new Report(o.video.title,count(o), max(o.likeDate),min(o.likeDate)) from Favorite o group by o.video.title";
			TypedQuery<Report> query = em.createQuery(jpql, Report.class); // tạo đối tượng truy vấn
			List<Report> list = query.getResultList();// Truy vấn
			req.setAttribute("report", list);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác

		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác

			System.out.println("Error: " + e);
		}
		em.close();
		emf.close();
	}
}
