package com.poly.bean;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@NamedNativeQueries({
	@NamedNativeQuery(name = "Top12View", query = "select top 12 * from Video order by views desc",resultClass=Video.class),
	@NamedNativeQuery(name = "slideHeader", query = "select * from Video",resultClass=Video.class),
	@NamedNativeQuery(name = "8videoAside", query = "select top 8 *  from Video",resultClass=Video.class),
})




@NamedQueries({
		@NamedQuery(name = "Video.findByKeyword", query = "SELECT distinct o.video FROM Favorite o where o.video.title like :keyword"),
		@NamedQuery(name = "Video.findByUser", query = "SELECT o.video FROM Favorite o WHERE o.user.id=:id"),
		
		  @NamedQuery(name = "Video.findInRange", query =
		  "SELECT distinct o.video from Favorite o where o.likeDate between  :min AND :max"
		  ),		 
		  @NamedQuery(name = "Video.findInMonths", query =
		  "SELECT distinct o.video from Favorite o where month(o.likeDate) in (:months)"
		  )
		 
})

@Entity
@Table(name = "VIDEO")
public class Video {
	
	@Id
	@Column(name = "VIDEOID")
	String id;
	String title;
	String poster;
	String description;
	Integer views = 0;
	Boolean active = true;
	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;
	@OneToMany(mappedBy = "video")
	List<Share> shares;


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getPoster() {
		return poster;
	}


	public void setPoster(String poster) {
		this.poster = poster;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Boolean getActive() {
		return active;
	}


	public void setActive(Boolean active) {
		this.active = active;
	}


	public List<Favorite> getFavorites() {
		return favorites;
	}


	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}


	public Video() {
		// TODO Auto-generated constructor stub
	}


	public Video(String id, String title, String poster, int views, String description, Boolean active,
			List<Favorite> favorites) {
		super();
		this.id = id;
		this.title = title;
		this.poster = poster;
		this.views = views;
		this.description = description;
		this.active = active;
		this.favorites = favorites;
	}
	
	

}
