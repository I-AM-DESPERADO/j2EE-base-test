package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.web.model.Users;
import com.web.util.DBUtil;

public class UsersDAO {
	
	public boolean save(Users users) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="insert into users(nickname,password,email) values(?,?,?)";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, users.getNickname());
		pst.setString(2, users.getPassword());
		pst.setString(3, users.getEmail());
		int count=pst.executeUpdate();
		if(count>=0)
		{
			return true;
		}else
		{	
			return false;
		}
	}
	
}
