package com.web.service;

import java.util.ArrayList;
import java.util.List;

import com.web.dao.ProductDAO;
import com.web.model.Book;
import com.web.model.CartItem;

public class CartService {
	List<CartItem> carts=new ArrayList<CartItem>();
	
	public List<CartItem> getCarts() {
		return carts;
	}
	public void setCarts(List<CartItem> carts) {
		this.carts = carts;
	}
	ProductDAO dao=new ProductDAO();
	//添加  
	public boolean add(int id) throws Exception{
		
		for(CartItem c:carts){
			if(c.getBook().getId()==id){
				c.setQty(c.getQty()+1);
				return false;
			}
		}
		
		Book book=dao.findById(id);
		CartItem item=new CartItem();
		item.setBook(book);
		item.setQty(1);
		item.setBuy(true);
		carts.add(item);
		
		
		return true;
	}
	//清空删除的购物车
	public void clear() throws Exception {
		for(int i = carts.size()-1;i>=0;i--){
			CartItem c = carts.get(i);
			if(c.getBook().getHasDeleted()==1||!c.isBuy()){
				carts.remove(i);
			}
		}
		
	}
	//计算当当网价格
	public double dangCost() throws Exception {
		double cost = 0;
		for(int i=0;i<carts.size();i++){
			CartItem c = carts.get(i);
			if(c.isBuy()&&c.getBook().getHasDeleted()==0){
				cost+=c.getQty()*c.getBook().getDangPrice();
			}
		}
		return cost;
	}
	//删除商品
	public void delete(int id) throws Exception {
		for(CartItem c:carts){
			if(c.getBook().getId()==id){
				c.getBook().setHasDeleted(1);
				c.setBuy(false);
			}
		}
		
	}
	//计算原价格
	public double fixedCost() throws Exception {
		double sum = 0;
		for(CartItem c:carts){
			if(c.getBook().getHasDeleted()==0&&c.isBuy()){
				sum += c.getQty()*c.getBook().getFixedPrice();
			}
		}
		return sum;
	}
	/**
	 * 确认 购买商品
	 */
	public List<CartItem> getBuyProducts() throws Exception {
		List<CartItem> buycarts = new ArrayList<CartItem>();
		for(CartItem c:carts){
			if(c.isBuy()&&(c.getBook().getHasDeleted()==0)){
				buycarts.add(c);
			}
		}
		return buycarts;
	}
	/**
	 * 删除商品
	 */
	public List<CartItem> getDeleteProducts() throws Exception {
		List<CartItem> deletecarts = new ArrayList<CartItem>();
		for(CartItem c:carts){
			if(!c.isBuy()||(c.getBook().getHasDeleted()==1)){
				deletecarts.add(c);
				
			}
		}
		return deletecarts;
	}
	//修改数量
	public void modify(int id, int num) throws Exception {
		for(CartItem c:carts){
			if(c.getBook().getId()==id){
				c.setQty(num);
			}
		}
		
	}
	//恢复
	public void recovery(int id) throws Exception {
		for(CartItem c:carts){
			if(c.getBook().getId()==id){
				c.getBook().setHasDeleted(0);
				c.setBuy(true);
			}
		}
		
		
	}
	/**
	 * 列表，对商品
	 */
	public List<CartItem> list(){
		return carts;
	}
	
	
	/**
	 * 依据content中的内容恢复商品
	 */
	public void load(String content){
		if(content==null||content.equals("0")){
			//cookie中没有保存任何数据，不需要恢复购物车
			return;
		}
			try {
				String[] buffs = content.split(";");
				for(int i=0;i<buffs.length;i++){
					String[] strs = buffs[i].split(",");
					int id = Integer.parseInt(strs[0]);
					int qty = Integer.parseInt(strs[1]);
					int hasDeleted = Integer.parseInt(strs[2]);
				Book book = (Book) dao.findById(id);
				CartItem item = new CartItem();
				book.setHasDeleted(hasDeleted);
				item.setBook(book);
				item.setQty(qty);
				carts.add(item);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}
	//购买之后清除购物车中的产品
	public void clearCart() throws Exception {
		for(int i=carts.size()-1;i>=0;i--){
			CartItem c = carts.get(i);
			if(c.getBook().getHasDeleted()==0&&c.isBuy()){
				carts.remove(i);
			}
		}
		
	}

}
