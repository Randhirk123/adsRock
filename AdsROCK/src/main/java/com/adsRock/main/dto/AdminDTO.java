package com.adsRock.main.dto;

import java.util.Date;

import com.adsRock.main.model.Admin;

public class AdminDTO {
	
	private Long id;
	private String name;
	private String email;
	private String userName;
	private Date email_verified_at;
	private String image;
	private String password;
	private Date created_at;
	private Date updated_at;
	
	public AdminDTO() {		
	}
	
	public AdminDTO(Admin admin) {
		this.id=admin.getId();
		this.name=admin.getName();
		this.email=admin.getEmail();
		this.userName = admin.getUserName();
		this.email_verified_at=admin.getEmail_verified_at();
		this.image=admin.getImage();
		this.password = admin.getPassword();
		this.created_at=admin.getCreated_at();
		this.updated_at=admin.getUpdated_at();
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getEmail_verified_at() {
		return email_verified_at;
	}

	public void setEmail_verified_at(Date email_verified_at) {
		this.email_verified_at = email_verified_at;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	

}
