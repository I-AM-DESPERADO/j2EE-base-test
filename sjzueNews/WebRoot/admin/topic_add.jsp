
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topicList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="CSS/admin.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
<jsp:include page="/common/top.jsp"></jsp:include>    
<div id="admin_bar">
  <div id="status">管理员： 登录  &#160;&#160;&#160;&#160; <a href="#">login out</a></div>
  <div id="channel"> </div>
</div>
<div id="main">
  <jsp:include page="/common/memu_left.jsp"></jsp:include>
  <div id="opt_area">
  	<h1 id="opt_type">
	添加主题：
</h1>
<form action="admin/do_topic.jsp" method="post">
	<p>
		<label>
			主题名称
		</label>
		<input name="tname" type="text" class="opt_input" />
	</p>
	<input name="action" type="hidden" value="add">
	<input type="submit" value="提交" class="opt_sub" />
	<input type="reset" value="重置" class="opt_sub" />
</form>
  </div>
</div>
<div id="site_link"> <a href="#">关于我们</a><span>|</span> <a href="#">Aboue Us</a><span>|</span> <a href="#">联系我们</a><span>|</span> <a href="#">广告服务</a><span>|</span> <a href="#">供稿服务</a><span>|</span> <a href="#">法律声明</a><span>|</span> <a href="#">招聘信息</a><span>|</span> <a href="#">网站地图</a><span>|</span> <a href="#">留言反馈</a> </div>
<jsp:include page="/common/bottom.jsp"></jsp:include>
  </body>
</html>


