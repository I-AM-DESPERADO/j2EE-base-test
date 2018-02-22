package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.model.Category;
import com.web.util.DBUtil;

public class CategoryDAO {
	private Connection conn=null;
	private PreparedStatement prstmt=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	/**
	 * 1.增加
	 * 2.删除
	 * 3.修改
	 * 4.查找
	 * @throws Exception 
	 * 
	 */
	//返回所有分类的列表
	public List<Category> findAllCategory() throws Exception{
		List<Category> categorys=new ArrayList<Category>();
		String sql="select * from d_category";
		conn=DBUtil.getConnection();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			Category category=new Category();
			category.setId(rs.getInt("id"));
			category.setName(rs.getString("name"));
			category.setEn_name(rs.getString("en_name"));
			category.setTurn(rs.getInt("turn"));
			category.setParent_id(rs.getInt("parent_id"));
			categorys.add(category);
			
		}
		DBUtil.closeConnection(conn, stmt, rs);
		return categorys;
		
	}
	
	//2.该方法是用来搜索每个二级分类
	 
	public List<Category> findAllParentId(int id) throws Exception {
		List<Category> cat = new ArrayList<Category>();
		Category c = null;
		conn = DBUtil.getConnection();
		String sql="select c.* from d_category c  where c.parent_id=?";
		prstmt = conn.prepareStatement(sql);
		prstmt.setInt(1, id);
		rs = prstmt.executeQuery();
		while(rs.next()){
			c = new Category();
			c.setId(rs.getInt("id"));
			
			c.setName(rs.getString("name"));
			c.setTurn(rs.getInt("turn"));
			c.setDescription(rs.getString("description"));
			c.setParent_id(rs.getInt("parent_id"));
			
			c.setEn_name(rs.getString("en_name"));
			cat.add(c);
		}
		DBUtil.closeConnection(conn,prstmt, rs);;
		
		return cat;
	}
}
