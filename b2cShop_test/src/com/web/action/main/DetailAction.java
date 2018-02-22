package com.web.action.main;

import com.opensymphony.xwork2.ActionSupport;
import com.web.dao.ProductDAO;
import com.web.model.Product;

public class DetailAction extends ActionSupport {
	private int pid;
	private Product product;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ProductDAO dao=new ProductDAO();
		product=dao.findById(pid);
		return SUCCESS;
	}
}
