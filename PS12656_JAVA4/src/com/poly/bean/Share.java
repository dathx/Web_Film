package com.poly.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "SHARE", uniqueConstraints = {
		@UniqueConstraint(columnNames = {"VIDEOID","USERID"})
})
public class Share {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SHAREID")
	Long id;
	
	@ManyToOne  @JoinColumn(name = "USERID")
	UserLogin user;
	
	
	@ManyToOne  @JoinColumn(name = "VIDEOID")
	Video video;
	
	@Column(name = "EMAILS")
	String emails;
	
	@Column(name = "SHAREDATE")
	@Temporal(TemporalType.DATE)
	Date sharedate = new Date();
	
	
	
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
	public String getEmails() {
		return emails;
	}
	public void setEmails(String emails) {
		this.emails = emails;
	}
	public Date getSharedate() {
		return sharedate;
	}
	public void setSharedate(Date sharedate) {
		this.sharedate = sharedate;
	}
	
	public Share() {
		// TODO Auto-generated constructor stub
	}
	public Share(Long id, UserLogin user, Video video, String emails, Date sharedate) {
		super();
		this.id = id;
		this.user = user;
		this.video = video;
		this.emails = emails;
		this.sharedate = sharedate;
	}
	
	
	
	
}
