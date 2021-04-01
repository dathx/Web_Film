package com.poly.servlet.admin;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;


import com.poly.bean.Video;
import com.poly.utils.VideoDAO;

@MultipartConfig
@WebServlet({"/admin/video-edition/*", "/admin/video-create", "/admin/video-update", "/admin/video-delete"})
public class VideoEditionServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
//		//lưu các file poster vào thu mục file
//		File dir= new File(req.getServletContext().getRealPath("/files"));
//		Part photo = req.getPart("poster");
//		File poster = new File(dir,photo.getSubmittedFileName());
//		photo.write(poster.getAbsolutePath());
//		
		
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String uri = req.getRequestURI();
		
		
		
		
		if(uri.contains("video-edition")) {
			String id = uri.substring(uri.lastIndexOf("/")+1);//Lấy id ở cuối đường dẫn
			video=dao.findById(id);
		}else if (uri.contains("video-create")) {
			try {
				//video.setId(req.getParameter("id"));
				//video.setPoster(poster.getName());
				BeanUtils.populate(video, req.getParameterMap());
				dao.create(video);
				req.setAttribute("message", "Thêm mới thành công!");
			} catch (Exception e) {
				req.setAttribute("message","Thêm mới thất bại!"+e);
				System.out.println(e);
			}
		}else if (uri.contains("update")) {
			try {
				/*
				 * video.setId(req.getParameter("id"));
				 * video.setPoster(req.getParameter("poster"));
				 * video.setTitle(req.getParameter("title"));
				 * video.setActive(Boolean.parseBoolean(req.getParameter("action")));
				 * video.setDescription(req.getParameter("description")); video.setViews(15);
				 */
				//video.setPoster(poster.getName());
				BeanUtils.populate(video, req.getParameterMap());
				dao.update(video);
				req.setAttribute("message", "Cập nhật thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại!"+e);
			}
		}else if (uri.contains("delete")) {
			try {
				//video.setId(req.getParameter("id"));
				//video.setPoster(poster.getName());
				String id= req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại!"+e);
			}
		}
		
		req.setAttribute("formvideo", video);
		req.setAttribute("view", "/ADMIN/movies-edition.jsp");
		req.getRequestDispatcher("/ADMIN/AdminIndex.jsp").forward(req, resp);
	}
}
