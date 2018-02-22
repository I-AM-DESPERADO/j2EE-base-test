package com.web.action.main;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.web.dao.CategoryDAO;
import com.web.model.Category;

public class CategoryAction extends ActionSupport {
	private List<Category> categorys=new ArrayList<Category>();
    
	public List<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	//方法
	public String list() throws Exception{
		CategoryDAO dao=new CategoryDAO();
		categorys=dao.findAllCategory();
		return SUCCESS;
	}
}
