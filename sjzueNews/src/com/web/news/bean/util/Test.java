package com.web.news.bean.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.web.news.bean.Topic;
import com.web.news.bean.dao.TopicDAO;

public class Test {

	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
	/*	for(int i=104;i<=203;i++){
			Topic topic=new Topic();
			topic.setTname("国内新闻"+i);
			TopicDAO dao=new TopicDAO();
			if(dao.insert(topic)){
				System.out.println("success");
			}
		}*/
		TopicDAO dao=new TopicDAO();
		List<Topic> topics=dao.findAllByPage(2, 10);
		for(Topic topic:topics){
			System.out.println(topic.getTid()+":"+topic.getTname());
		}
		System.out.println("总共"+dao.findAllSize());
		
		
		
	}

}
