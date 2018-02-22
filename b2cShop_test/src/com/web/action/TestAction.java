package com.web.action;

import com.web.dao.UsersDAO;
import com.web.model.Users;

public class TestAction {

	public static void main(String[] args) {
		UsersDAO dao=new UsersDAO();
		Users user=new Users();
		user.setNickname("zhangsan");
		user.setPassword("123456");
		user.setEmail("ddd@163.com");
		try {
			dao.save(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
