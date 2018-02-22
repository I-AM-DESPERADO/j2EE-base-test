<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加主题</title>

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/htstyle.css" rel="stylesheet" type="text/css" />
  </head>
  
 <body>

    <h1>添加主题</h1>
    <form action="Admin/dotopic.jsp"  method="get" >
    	<p>
    	
    	<label>主题名称</label>
    	<input type="hidden" value="add" name="action" />
    	<input type="text" name="tname" class="opt_input"> 
    	</p>
    	<input type="submit" value="提交" class="opt_sub"> 
    </form>

</body>
</html>
