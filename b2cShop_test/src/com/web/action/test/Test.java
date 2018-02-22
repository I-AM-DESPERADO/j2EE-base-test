package com.web.action.test;

import java.util.List;

import com.web.dao.ProductDAO;
import com.web.model.Product;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ProductDAO dao=new ProductDAO();
		List<Product> products=dao.ListProducts();
		//System.out.println(products.get(1).getProductName());
	}

}
