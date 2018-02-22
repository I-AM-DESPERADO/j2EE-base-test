<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'category.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>css/book.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/second.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.4.js"></script>
		
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <s:debug></s:debug>

   <div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		
		<!--1级分类开始-->
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<ul>
				<s:iterator value="categorys.{?#this.parent_id==1}"  var="category"> 
					<li class="li1">
					[<a href="<%=basePath%>main/categoryListAction?cateid=<s:property value="#category.id"/>"><s:property value="#category.name"/></a>]
						
						<ul class="ul_left_list">
							<s:iterator value="categorys.{?#this.parent_id==#category.id}" var="cate">
								<!--2级分类开始-->
								<li>
									<a href="#"><s:property value="#cate.name"/></a>
								</li>
								<!--2级分类结束-->
								</s:iterator>
						</ul>
					</li>
				</ul>
				</s:iterator>
				<div class="empty_left">
				</div>
			</div>
			<div class="more2">
			</div>
	

	
		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
   
   
   
   
   
   
   
   
   
   
  </body>
</html>
