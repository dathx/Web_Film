package com.poly.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.poly.bean.UserLogin;
import com.poly.bean.Video;
import com.poly.utils.FavoriteDAO;
import com.poly.utils.UserLoginDAO;
import com.poly.utils.VideoDAO;
@WebServlet("/unlike")
public class UnlikeServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		FavoriteDAO dao = new FavoriteDAO();
		String userID = req.getParameter("usID");
		String videoID = req.getParameter("vdID");
		
		// Nạp persistence.xml và tạo EntityManagerFactory
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PS12656_JAVA4");
		// Tạo EntityManager để bắt đầu làm việc với CSDL
		EntityManager em = emf.createEntityManager();
			
            try {

				em.getTransaction().begin(); // Bắt đầu Transaction
				// MÃ THAO TÁC					
				dao.unLike(userID, videoID);
				em.getTransaction().commit(); // Chấp nhận kết quả thao tác
				System.out.println("Tim thành công!");		
			 	
		} catch (Exception e) {
			em.getTransaction().rollback(); // Hủy thao tác
			
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();
		req.getRequestDispatcher("/myfavorite").forward(req, resp);
	}
	
}
