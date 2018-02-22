<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'do_topic.jsp' starting page</title>
    
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
    <%
    	String tid=request.getParameter("tid");
        String action=request.getParameter("action");
      
       try{
    	   //1.加载驱动程序
    	 Class.forName("com.mysql.jdbc.Driver"); 
    	 //2建立连接
    	 //jdbc:mysql://localhost:3306/test
    	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","123456");
    	
    	   
    	   
    	 if(action.equals("delete")){
    		 String sql="delete from topic where tid="+tid; 
        	 Statement stmt=con.createStatement();
        	 //3.发送命令
             //4.对结果进行处理
        	 int result=stmt.executeUpdate(sql);
        	 if(result>0){
        		 //out.println("添加成功！");
        		 response.sendRedirect("topicList.jsp");
        	 }else
        	 {
        		 out.println("删除失败！！！");
        	 }
    	 }else if(action.equals("add")){
    		 String tname=request.getParameter("tname");
    		 String sql="insert into topic(tname) values('"+tname+"')"; 
        	 Statement stmt=con.createStatement();
        	 //3.发送命令
             //4.对结果进行处理
        	 int result=stmt.executeUpdate(sql);
        	 if(result>0){
        		 //out.println("添加成功！");
        		 response.sendRedirect("topicList.jsp");
        	 }else
        	 {
        		 out.println("添加失败！！！");
        	 }
    	 }else if(action.equals("update")){
    		 String tname=request.getParameter("tname");
    		 String sql="update topic set tname='"+tname+"' where tid="+tid; 
        	 Statement stmt=con.createStatement();
        	
        	 int result=stmt.executeUpdate(sql);
        	 if(result>0){
        		 //out.println("添加成功！");
        		 response.sendRedirect("topicList.jsp");
        	 }else
        	 {
        		 out.println("修改失败！！！");
        	 }
    	 }
    	
       }catch(Exception e){
    	   e.printStackTrace();
       }
      
      
    
    
    %>
  </body>
</html>
