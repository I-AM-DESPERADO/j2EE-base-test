<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'donews.jsp' starting page</title>
    
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
   
    String action=request.getParameter("action");
    //1.加载驱动
    Class.forName("com.mysql.jdbc.Driver");
    //jdbc:mysql//[hostname][:port]/[dbname][?param1=value1][&param2=value2]….
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
    //2.建立连接
    Statement stmt=con.createStatement();
    if(action.equals("add")){
      	 String tid=request.getParameter("number");
    	 String ntitle=request.getParameter("ntitle");
    	 
    	 String ncontent=request.getParameter("ncontent");
    	 String nauthor=request.getParameter("nauthor");
    	 String ncreatedate=request.getParameter("ncreatedate");
    	 String sql="insert into newss(tid,ntitle,ncontent,nauthor,ncreatedate) values('"+tid+"','"+ntitle+"','"+ncontent+"','"+nauthor+"','"+ncreatedate+"')";
    	    
    	    //3.发送命令
    	    int result=stmt.executeUpdate(sql);
    	    //4结果处理
    	    if(result>0){
    	    	//out.println("添加成功");
    	    	response.sendRedirect("newsList.jsp");
    	    	
    	    }else
    	    {
    	    	out.println("添加失败");	
    	    }
    }else if(action.equals("delete")){
    	String id=request.getParameter("id");
    	 String sql="delete from newss where nid="+id;
 	    
 	    //3.发送命令
 	    int result=stmt.executeUpdate(sql);
 	    //4结果处理
 	    if(result>0){
 	    	
 	    	response.sendRedirect("newsList.jsp");
 	    	
 	    }else
 	    {
 	    	out.println("删除失败");	
 	    }
 	    
    }else if(action.equals("update")){
    	String id=request.getParameter("id");
    	String tid=request.getParameter("number");
    	 String ntitle=request.getParameter("ntitle");
    	 
    	 String ncontent=request.getParameter("ncontent");
    	 String nauthor=request.getParameter("nauthor");
    	 String ncreatedate=request.getParameter("ncreatedate");
   	 	String sql="update newss set tid='"+tid+"',ntitle='"+ntitle+"',ncontent='"+ncontent+"',nauthor='"+nauthor+"',ncreatedate='"+ncreatedate+"' where nid="+id;

	    
	    //3.发送命令
	    int result=stmt.executeUpdate(sql);
	    //4结果处理
	    if(result>0){
	    	//out.println("添加成功");
	    	response.sendRedirect("newsList.jsp");
	    	
	    }else
	    {
	    	out.println("更新失败");	
	    }
    }   
    %>  
  </body>
</html>
