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
    <link href="css/htstyle.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
    <!--top-->
   <div id="top">
       <div id="top1">
       欢迎使用新闻管理系统！
       </div>
       <div id="top4">
           <div id="top2">
           </div>
           
           <div id="top3">
           </div>
       </div>
   </div>
   <!--/top-->
   
   <!--main-->
   <div id="main">
       <div id="main_top">
       管理员：登陆&nbsp;&nbsp;<u>login out</u>
       </div>
       <div id="main_left">
           <table cellspacing="10"><!--单元格距离--> 
           <tr>
             <td><a href="Admin/news_add.jsp" target="xianshi" id="new1">添加新闻</a></td>
           </tr> 
           <tr>
             <td><a href="Admin/main_right1.jsp" target="xianshi" id="new1">编辑新闻</a></td>
           </tr>
           <tr>
             <td><a href="Admin/main_right1.jsp" target="xianshi" id="new1">查找新闻</a></td>
           </tr>
           <tr>
             <td><a href="Admin/top_add.jsp" target="xianshi" id="new1">添加主题</a></td>
           </tr>
           <tr>
             <td><a href="Admin/main_right1.jsp" target="xianshi" id="new1">编辑主题</a></td>
           </tr>
    
           </table>
       </div>
  </body>
</html>
