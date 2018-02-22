<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath%>css/book_head090107.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
    <div class="head_container">
	<div class="head_welcome">
		<div class="head_welcome_right">
			<span class="head_welcome_text"> </span>
			   <span class="head_welcome_text"> <span class="little_n">
					|<a href="loginAction" name="myb2cShop" class="head_black12a">我的当当</a> 
					<a href="#" name="helpcenter" class="head_black12a" target="_blank">帮助</a>
					| 
			    </span> 
			</span>
			<div class="cart gray4012">
				<a href="cartListAction">购物车</a>
			</div>
		</div>
		<span class="head_toutext" id="logininfo">
		
		
		[&nbsp;
		<a href="loginAction" class="b">登录</a>|
		&nbsp;
		<a href="doRegistAction" class="b">注册</a>]
		
		</span>
	</div>
	<div class="head_head_list">
		<div class="head_head_list_left">
			<span class="head_logo"><a href="#" name="backtobook"><img
						src="<%=basePath%>images/booksaleimg/book_logo.gif" /> </a> </span>
		</div>
		<div class="head_head_list_right">

			<div class="head_head_list_right_b">
			</div>
		</div>
	</div>
	<div class="head_search_div">

	</div>
	<div class="head_search_bg"></div>
</div>
  </body>
</html>
