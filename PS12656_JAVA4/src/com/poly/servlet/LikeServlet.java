package com.poly.servlet;

import java.io.IOException;
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

import org.apache.commons.beanutils.BeanUtils;

import com.poly.bean.Favorite;
import com.poly.bean.UserLogin;
import com.poly.bean.Video;
import com.poly.utils.FavoriteDAO;
import com.poly.utils.UserLoginDAO;
import com.poly.utils.VideoDAO;
@WebServlet("/like")
public class LikeServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		FavoriteDAO dao = new FavoriteDAO();
		//Favorite favorite = new Favorite();
		String uri = req.getRequestURI();
		//String vdid = uri.substring(uri.lastIndexOf("/")+1);//Lấy id ở cuối đường dẫn		
		if(uri.contains("like")) {
			try {
				String usID= req.getParameter("usID");
				String vdID = req.getParameter("vdID");
				UserLoginDAO usdao=new UserLoginDAO();
				VideoDAO vdDAO=new VideoDAO();
				UserLogin user=usdao.findByID(usID);
				Video video=vdDAO.findById(vdID);
				Favorite fv=new Favorite();
				fv.setUser(user);
				fv.setVideo(video);
				fv.setLikeDate(new Date());
				FavoriteDAO dao2=new FavoriteDAO();
				dao2.Like(fv);	
			} catch (Exception e) {
				req.setAttribute("message","Thêm mới thất bại!");
			}
		}
		req.getRequestDispatcher("/myfavorite").forward(req, resp);
	}
}
