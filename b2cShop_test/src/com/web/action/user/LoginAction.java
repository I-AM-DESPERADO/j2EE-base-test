package com.web.action.user;

import com.opensymphony.xwork2.ActionSupport;
import com.web.action.BaseAction;
import com.web.dao.UsersDAO;
import com.web.model.Users;

public class LoginAction extends BaseAction {
	private String nickname;
	private String password;
	private String email;
	
	
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


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	
	public String regist(){
		
		UsersDAO dao=new UsersDAO();
		Users user=new Users();
		user.setNickname(nickname);
		user.setPassword(password);
		user.setEmail(email);
		try {
			dao.save(user);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;
	}
	
}
