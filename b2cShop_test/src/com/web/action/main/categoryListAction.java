package com.web.action.main;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.web.dao.CategoryDAO;
import com.web.dao.ProductDAO;
import com.web.model.Category;
import com.web.model.Product;

public class categoryListAction extends ActionSupport {
	private int cateid;
	private List<Category> categorys=new ArrayList<Category>();
	private List<Product> products=new ArrayList<Product>();
	
	private CategoryDAO c_dao=new CategoryDAO();
	private ProductDAO p_dao=new ProductDAO(); 
	
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	
	public List<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}

	public int getCateid() {
		return cateid;
	}

	public void setCateid(int cateid) {
		this.cateid = cateid;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		categorys=c_dao.findAllParentId(cateid);
		products=p_dao.paging(cateid, 1, 5);
		return SUCCESS;
	}
}
