<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理-添加主题</title>

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/htstyle.css" rel="stylesheet" type="text/css" />
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
    	 String tname=request.getParameter("tname");
    	 String sql="insert into topic(tname) values('"+tname+"')";
    	    
    	    //3.发送命令
    	    int result=stmt.executeUpdate(sql);
    	    //4结果处理
    	    if(result>0){
    	    	//out.println("添加成功");
    	    	response.sendRedirect("topicList.jsp");
    	    	
    	    }else
    	    {
    	    	out.println("添加失败");	
    	    }
    }else if(action.equals("delete")){
    	String id=request.getParameter("id");
    	 String sql="delete from topic where tid="+id;
 	    
 	    //3.发送命令
 	    int result=stmt.executeUpdate(sql);
 	    //4结果处理
 	    if(result>0){
 	    	//out.println("添加成功");
 	    	response.sendRedirect("topicList.jsp");
 	    	
 	    }else
 	    {
 	    	out.println("删除失败");	
 	    }
 	    
    }else if(action.equals("update")){
    	String id=request.getParameter("id");
    	String tname=request.getParameter("tname");
   	 	String sql="update topic set tname='"+tname+"' where tid="+id;
	    
	    //3.发送命令
	    int result=stmt.executeUpdate(sql);
	    //4结果处理
	    if(result>0){
	    	//out.println("添加成功");
	    	response.sendRedirect("topicList.jsp");
	    	
	    }else
	    {
	    	out.println("删除失败");	
	    }
    }

    %>   
      </body>
</html>
