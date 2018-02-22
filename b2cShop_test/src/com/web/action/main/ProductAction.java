package com.web.action.main;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.web.dao.ProductDAO;
import com.web.model.Product;
import com.web.util.Pagination;

public class ProductAction extends ActionSupport {
	
	List<Product> products=new ArrayList<Product>();
	//当前第几页
	private int curpage=1;
	private int pagesize=10;
	private int totalPage=0;
	
	
	
	
	public int getTotalPage() {
		return totalPage;
	}



	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}



	public int getPagesize() {
		return pagesize;
	}



	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}



	public int getCurpage() {
		return curpage;
	}



	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}



	public List<Product> getProducts() {
		return products;
	}



	public void setProducts(List<Product> products) {
		this.products = products;
	}



	public String list(){
		ProductDAO dao=new ProductDAO();
		products=dao.ListProducts();
		return SUCCESS;
	}
	public String listPage(){
		ProductDAO dao=new ProductDAO();
		products=dao.ListProductsByPage((curpage-1)*pagesize, pagesize);
		//分页
		int amountpage=dao.getTotalReCord();
		if(amountpage>0){
			totalPage=amountpage/pagesize==0?amountpage/pagesize:amountpage/pagesize+1;
		}
		
		return SUCCESS;
	}
	
}
