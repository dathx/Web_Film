package com.poly.utils;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.poly.bean.Favorite;
import com.poly.bean.UserLogin;
import com.poly.bean.Video;


public class FavoriteDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// Đóng EntityManager khi DAO bị giải phóng
		super.finalize();
	}

	// thêm user mới vào csdl
	public Favorite Like(Favorite ez) {
		
		try {
			em.getTransaction().begin();// Bắt đầu Transaction
			em.persist(ez);// Insert entity vào CSDL
			em.getTransaction().commit();// Chấp nhận kết quả thao tác
			return ez;
		} catch (Exception e) {
			em.getTransaction().rollback();// Hủy thao tác
			throw new RuntimeException(e);
		}
	}
	
	public void unLike(String userId, String videoId) {
		TypedQuery<Favorite> q = em.createQuery("SELECT o FROM Favorite o WHERE o.user.id=:uid AND o.video.id =:vid ",Favorite.class);
		q.setParameter("uid", userId);
		q.setParameter("vid", videoId);
		
		try {
			em.getTransaction().begin();
			em.remove(q.getResultList().get(0));
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Thêm mới thất bại");
		}
	}

	// Cập nhật user
	public Favorite update(Favorite entity) {
		try {
			em.getTransaction().begin();// Bắt đầu Transaction
			em.merge(entity);// Insert entity vào CSDL
			em.getTransaction().commit();// Chấp nhận kết quả thao tác
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Hủy thao tác
			throw new RuntimeException(e);
		}
	}

	// tìm kiếm user theo id
	public Favorite findByID(String id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}

	// xóa user theo id
	public Favorite remove(String id) {
		try {
			Favorite entity = this.findByID(id); // gọi hàm tìm id
			em.getTransaction().begin();// Bắt đầu Transaction
			em.remove(entity);// Insert entity vào CSDL
			em.getTransaction().commit();// Chấp nhận kết quả thao tác
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Hủy thao tác
			throw new RuntimeException(e);
		}
	}

	public List<Favorite> findAll() {
		String jpql = "select o from Favorite o"; // câu lệnh truy vấn jpql
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class); // tạo đối tượng truy vấn
		List<Favorite> list = query.getResultList();// Truy vấn
		return list;// trả về list kq
	}

	public List findUserLikeByVideo(String title) {
		try {
			EntityManager em = JpaUtils.getEntityManager();
			StoredProcedureQuery query = em.createNamedStoredProcedureQuery("User.sp_FindUserLikeByVideo");
			query.setParameter("Title", title);
			return query.getResultList();
		} catch (Exception e) {
			em.getTransaction().rollback();// Há»§y thao tÃ¡c
			throw new RuntimeException(e);
		}
	}
}
