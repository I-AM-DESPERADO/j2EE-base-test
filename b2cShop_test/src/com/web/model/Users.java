package com.web.model;

import java.sql.Date;

public class Users {
	private int id;
	private String nickname;
	private String password;
	private String email;
	private Date last_login_time;
	private String last_login_ip;
	private boolean has_deleted;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public Date getLast_login_time() {
		return last_login_time;
	}
	public void setLast_login_time(Date lastLoginTime) {
		last_login_time = lastLoginTime;
	}
	public String getLast_login_ip() {
		return last_login_ip;
	}
	public void setLast_login_ip(String lastLoginIp) {
		last_login_ip = lastLoginIp;
	}
	public boolean isHas_deleted() {
		return has_deleted;
	}
	public void setHas_deleted(boolean hasDeleted) {
		has_deleted = hasDeleted;
	}
	
}
