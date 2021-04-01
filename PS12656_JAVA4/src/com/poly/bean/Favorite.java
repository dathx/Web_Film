package com.poly.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/*@NamedStoredProcedureQueries({
@NamedStoredProcedureQuery(name = "User.sp_FindUserLikeByVideo",
procedureName = "sp_FindUserLikeByVideo",
resultClasses = Favorite.class, 
parameters = @StoredProcedureParameter(type = String.class, name = "Title"))
})
*/
/*@NamedNativeQueries({
	@NamedNativeQuery(name = "FIND", query = "SELECT U.USERID,U.FULLNAME,U.EMAIL, F.LIKEDATE  FROM FAVORITE F JOIN USERLOGIN U ON F.USERID=U.USERID JOIN VIDEO V ON F.VIDEOID=V.ID WHERE V.TITLE like ?",resultClass=Video.class),
})
*/

@NamedQueries({
	@NamedQuery(name = "Favorite.findFavoriteUserByTitle", query = "SELECT  o.user,o.video FROM Favorite o where o.video.title like :title"), 
	 @NamedQuery(name = "Video.unlike", query ="delete from Favorite o where o.user.id=:userid and o.video.id =:videoid ")
})
@Entity
@Table(name = "FAVORITE", uniqueConstraints = {
		@UniqueConstraint(columnNames = {"VIDEOID","USERID"})
})
public class Favorite {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "FAVORITEID")
	Long id;
	
	
	@ManyToOne  @JoinColumn(name = "USERID")
	UserLogin user;
	
	
	@ManyToOne  @JoinColumn(name = "VIDEOID")
	Video video;
	
	
	@Column(name = "LIKEDATE")
	@Temporal(TemporalType.DATE)
	Date likeDate = new Date();


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public UserLogin getUser() {
		return user;
	}


	public void setUser(UserLogin user) {
		this.user = user;
	}


	public Video getVideo() {
		return video;
	}


	public void setVideo(Video video) {
		this.video = video;
	}


	public Date getLikeDate() {
		return likeDate;
	}


	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}

	public Favorite() {
		// TODO Auto-generated constructor stub
	}


	public Favorite(Long id, UserLogin user, Video video, Date likeDate) {
		super();
		this.id = id;
		this.user = user;
		this.video = video;
		this.likeDate = likeDate;
	}
	
	

	

}
