package com.web.news.bean.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.news.bean.Topic;
import com.web.news.bean.util.DBUtil;

public class TopicDAO {
  //对数据库增删改查
	public boolean insert(Topic topic) throws SQLException{
		
		DBUtil db=new DBUtil();
		boolean result=true;
		Connection con=db.getConnection();
		String sql="insert into topic(tname) values('"+topic.getTname()+"')";
		Statement stmt=con.createStatement();
		int result_count=stmt.executeUpdate(sql);
		db.closeConnection( stmt, con);
		if(result_count>0){
			result=true;
		}else{
			result=false;
		}
		return result;
	}
	public void delete(Topic topic){
			
		}
	public void update(Topic topic){
		
	}
	public Topic findById(int tid){
		Topic topic=new Topic();
		//连数据库
		return topic;
	}
	public List<Topic> findAll() throws SQLException{
		List<Topic> list=new ArrayList<Topic>();
		DBUtil db=new DBUtil();
		boolean result=true;
		Connection con=db.getConnection();
		String sql="select * from Topic";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			Topic topic=new Topic();
			topic.setTid(rs.getInt("tid"));
			topic.setTname(rs.getString("tname"));
			list.add(topic);
		}
		return list;
	}
	public int findAllSize() throws SQLException{
		
		int result=0;
		DBUtil db=new DBUtil();
		
		Connection con=db.getConnection();
		String sql="select count(*) from Topic";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		if(rs.next()){
			result=rs.getInt(1);
		}
		return result;
	}
	public List<Topic> findAllByPage(int CurrentPage,int pagesize ) throws SQLException{
		List<Topic> list=new ArrayList<Topic>();
		DBUtil db=new DBUtil();
		Connection con=db.getConnection();
		String sql="select * from Topic limit "+(CurrentPage-1)*pagesize+","+pagesize;
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			Topic topic=new Topic();
			topic.setTid(rs.getInt("tid"));
			topic.setTname(rs.getString("tname"));
			list.add(topic);
		}
		return list;
	}
}
