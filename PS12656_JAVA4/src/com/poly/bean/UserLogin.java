package com.poly.bean;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.OneToMany;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;

/*@NamedQueries({
	@NamedQuery(name="User.findAll", query="SELECT o FROM User o"),
	@NamedQuery(name="User.findByRole", query = "SELECT o FROM User o WHERE o.admin=:role"),
})*/


@Entity
@Table(name = "USERLOGIN")
public class UserLogin {

	@Id
	@Column(name = "USERID")
	String id;
	@Column(name = "USERPASSWORD")
	String password;
	@Column(name = "EMAIL")
	String email;
	@Column(name = "FULLNAME")
	String fullname;
	@Column(name = "ROLES")
	Boolean admin = false;
	
	@OneToMany(mappedBy = "user")//,fetch = FetchType.EAGER
	List<Favorite> favorites;
	
	@OneToMany(mappedBy = "user")//,fetch = FetchType.EAGER
	List<Share> shares;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Boolean getAdmin() {
		return admin;
	}

	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}
	
	public List<Favorite> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public UserLogin() {
		// TODO Auto-generated constructor stub
	}

	public UserLogin(String id, String password, String email, String fullname, Boolean admin,
			List<Favorite> favorites) {
		super();
		this.id = id;
		this.password = password;
		this.email = email;
		this.fullname = fullname;
		this.admin = admin;
		this.favorites = favorites;
	}
	
	
}
