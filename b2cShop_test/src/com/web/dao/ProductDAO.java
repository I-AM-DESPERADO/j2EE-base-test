package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.model.Book;
import com.web.model.Product;
import com.web.util.DBUtil;

public class ProductDAO {
	private Connection conn=null;
	private PreparedStatement prstmt=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	
	/**
	 * 返回所有商品列表
	 * @return
	 */
	public List<Product> ListProducts(){
		List<Product> products=new ArrayList<Product>();
		String sql="select db.*,dp.* from d_book db,d_product dp where db.id=dp.id ";
		try {
			conn=DBUtil.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Book book=new Book();
				book.setId(rs.getInt("db.id"));
				book.setProductName(rs.getString("product_name"));
				book.setProductPic(rs.getString("product_pic"));
				book.setAuthor(rs.getString("author"));
				book.setPublishing(rs.getString("publishing"));
				book.setPublishTime(rs.getLong("publish_time"));
				book.setWordNumber(rs.getString("word_number"));
				book.setWhichEdtion(rs.getString("which_edtion"));
				book.setTotalPage(rs.getString("total_page"));
				book.setPrintTime(rs.getInt("print_time"));
				book.setPrintNumber(rs.getString("print_number"));
				book.setIsbn(rs.getString("isbn"));
				book.setAuthorSummary(rs.getString("author_summary"));
				book.setCatalogue(rs.getString("catalogue"));
				book.setFixedPrice(rs.getDouble("fixed_price"));
				book.setDangPrice(rs.getDouble("dang_price"));
				book.setDescription(rs.getString("description"));
				products.add(book);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		DBUtil.closeConnection(conn, stmt, rs);
		return products;
	}
	/**
	 * 分页返回列表
	 */
	public List<Product> ListProductsByPage(int startindex,int pagesize){
		List<Product> products=new ArrayList<Product>();
		String sql="select db.*,dp.* from d_book db,d_product dp where db.id=dp.id limit ?,?";
		try {
			conn=DBUtil.getConnection();
			prstmt=conn.prepareStatement(sql);
			prstmt.setInt(1, startindex);
			prstmt.setInt(2, pagesize);
			
			rs=prstmt.executeQuery();
			while(rs.next()){
				Book book=new Book();
				book.setId(rs.getInt("db.id"));
				book.setProductName(rs.getString("product_name"));
				book.setProductPic(rs.getString("product_pic"));
				book.setAuthor(rs.getString("author"));
				book.setPublishing(rs.getString("publishing"));
				book.setPublishTime(rs.getLong("publish_time"));
				book.setWordNumber(rs.getString("word_number"));
				book.setWhichEdtion(rs.getString("which_edtion"));
				book.setTotalPage(rs.getString("total_page"));
				book.setPrintTime(rs.getInt("print_time"));
				book.setPrintNumber(rs.getString("print_number"));
				book.setIsbn(rs.getString("isbn"));
				book.setAuthorSummary(rs.getString("author_summary"));
				book.setCatalogue(rs.getString("catalogue"));
				book.setFixedPrice(rs.getDouble("fixed_price"));
				book.setDangPrice(rs.getDouble("dang_price"));
				book.setDescription(rs.getString("description"));
				products.add(book);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		DBUtil.closeConnection(conn, stmt, rs);
		return products;
	}
	/**
	 * 查总记录数
	 */
   public int getTotalReCord(){
	   int result=0;
	   String sql="select count(*) as counts from d_book db,d_product dp where db.id=dp.id";
	   try {
		conn=DBUtil.getConnection();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		if(rs.next()){
			result=rs.getInt("counts");
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	DBUtil.closeConnection(conn, stmt, rs);
	   return result;
   }
   /**
	 * 分页
	 */
	public List<Product> paging(int id,int pageNo,int pageSize) throws Exception {
		Book book = null;
		List<Product> products = new ArrayList<Product>();
		conn = DBUtil.getConnection();
		String sql="select dp.*,db.* from d_category_product dcp join d_product dp on(dcp.product_id=dp.id) join d_book db on (dp.id=db.id) where dcp.cat_id=? limit ?,?";
		prstmt = conn.prepareStatement(sql);
		prstmt.setInt(1, id);
		prstmt.setInt(2, (pageNo-1)*pageSize);
		prstmt.setInt(3, pageSize);
		rs = prstmt.executeQuery();
		while(rs.next()){
			book=new Book();
			book.setId(rs.getInt("id"));
			book.setAuthor(rs.getString("author"));
			book.setPublishing(rs.getString("publishing"));
			book.setPublishTime(rs.getLong("publish_time"));
			book.setWordNumber(rs.getString("word_number"));
			book.setWhichEdtion(rs.getString("which_edtion"));
			book.setTotalPage(rs.getString("total_page"));
			book.setPrintTime(rs.getInt("print_time"));
			book.setPrintNumber(rs.getString("print_number"));
			book.setIsbn(rs.getString("isbn"));
			book.setAuthorSummary(rs.getString("author_summary"));
			book.setCatalogue(rs.getString("catalogue"));
			book.setProductName(rs.getString("product_name"));
			book.setDescription(rs.getString("description"));
			book.setAddTime(rs.getLong("add_time"));
			book.setFixedPrice(rs.getDouble("fixed_price"));
			book.setDangPrice(rs.getDouble("dang_price"));
			book.setKeywords(rs.getString("keywords"));
			book.setHasDeleted(rs.getInt("has_deleted"));
			book.setProductPic(rs.getString("product_pic"));
			products.add(book);
			
		}
		DBUtil.closeConnection(conn, prstmt, rs);
		
		return products;
	}
	/**
	 * 根据商品id 查找到这个商品并且返回。
	 * @throws Exception 
	 */
	public Book findById(int pid) throws Exception{
		Book book = null;
		
		conn = DBUtil.getConnection();
		String sql="select dp.*,db.* from  d_product dp  join d_book db on (dp.id=db.id) where dp.id=?";
		prstmt = conn.prepareStatement(sql);
		prstmt.setInt(1, pid);
	
		rs = prstmt.executeQuery();
		if(rs.next()){
			book=new Book();
			book.setId(rs.getInt("id"));
			book.setAuthor(rs.getString("author"));
			book.setPublishing(rs.getString("publishing"));
			book.setPublishTime(rs.getLong("publish_time"));
			book.setWordNumber(rs.getString("word_number"));
			book.setWhichEdtion(rs.getString("which_edtion"));
			book.setTotalPage(rs.getString("total_page"));
			book.setPrintTime(rs.getInt("print_time"));
			book.setPrintNumber(rs.getString("print_number"));
			book.setIsbn(rs.getString("isbn"));
			book.setAuthorSummary(rs.getString("author_summary"));
			book.setCatalogue(rs.getString("catalogue"));
			book.setProductName(rs.getString("product_name"));
			book.setDescription(rs.getString("description"));
			book.setAddTime(rs.getLong("add_time"));
			book.setFixedPrice(rs.getDouble("fixed_price"));
			book.setDangPrice(rs.getDouble("dang_price"));
			book.setKeywords(rs.getString("keywords"));
			book.setHasDeleted(rs.getInt("has_deleted"));
			book.setProductPic(rs.getString("product_pic"));
		}
		DBUtil.closeConnection(conn, prstmt, rs);
		
		return book;
		
	}
}
