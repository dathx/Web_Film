package com.poly.utils;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.poly.bean.UserLogin;

public class UserLoginDAO {
	EntityManager em = JpaUtils.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		em.close();//�?óng EntityManager khi DAO bị giải phóng
		super.finalize();
	}
	
	//thêm user  mới vào csdl 
	public UserLogin create(UserLogin entity) {
		try {
			em.getTransaction().begin();// Bắt đầu Transaction
			em.persist(entity);// Insert entity vào CSDL
			em.getTransaction().commit();// Chấp nhận kết quả thao tác
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Hủy thao tác
			throw new RuntimeException(e);
		}
	}
	//Cập nhật user
		public UserLogin update(UserLogin entity) {
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
		
		//tìm kiếm user theo id
		public UserLogin findByID(String id) {
			UserLogin entity = em.find(UserLogin.class, id);
			return entity;
		}	
		
		
		//xóa user theo id
		public UserLogin remove(String id) {
			try {
				UserLogin entity = this.findByID(id); // g�?i hàm tìm id
				em.getTransaction().begin();// Bắt đầu Transaction
				em.remove(entity);// Insert entity vào CSDL
				em.getTransaction().commit();// Chấp nhận kết quả thao tác
				return entity;
			} catch (Exception e) {
				em.getTransaction().rollback();// Hủy thao tác
				throw new RuntimeException(e);
			}
		}
		
		public List<UserLogin> findAll(){
			String jpql = "select o from User o"; // câu lệnh truy vấn jpql
			TypedQuery<UserLogin> query = em.createQuery(jpql,UserLogin.class);	//tạo đối tượng truy vấn
			List<UserLogin> list = query.getResultList();//Truy vấn
			return list;// trả v�? list kq
		}
		

	
}
