<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div>
	<center>
		<hr style="height: 1px; width: 972px; color: #cfcfcf" />
		<div class="b_left"></div>
		<div class="publish_bottom_message2">
			<div class="copyright">
				Copyright (C) 当当网 2004-2008, All Rights Reserved
			</div>
			<div class="validate">
				<a
					href="#http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098"
					target="_blank"> <img
						src="<%=basePath%>images/validate.gif"
						border="0" /> </a>
				<p>
					<a href="" target="_blank">京ICP证041189号</a>
				</p>
			</div>
		</div>
	</center>
</div>
  </body>
</html>
