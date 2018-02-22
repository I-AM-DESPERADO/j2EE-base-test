package com.web.action.main;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.web.service.CartService;

public class BuyAction extends ActionSupport {
	private int pid;
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stubreturn return super.execute();
		 ActionContext actionContext = ActionContext.getContext();
	     Map session = actionContext.getSession();
		 CartService cart=(CartService)session.get("cart");
		 if(cart!=null){
			 cart.add(pid);
			 session.put("cart", cart);
			 return SUCCESS;
		 }else{
			 cart=new CartService();
			 cart.add(pid);
			 session.put("cart", cart);
			 return SUCCESS;
			 
		 }
		
	}
}
