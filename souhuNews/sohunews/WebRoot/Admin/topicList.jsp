<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主题列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/htstyle.css" rel="stylesheet" type="text/css" />
    
  </head>
  
  <body>
            <%
            try{
	  		 //1.加载驱动程序
	 		Class.forName("com.mysql.jdbc.Driver"); 
	 		//2建立连接
			 //jdbc:mysql://localhost:3306/test
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
			 String sql="select * from topic"; 
			 Statement stmt=con.createStatement();
			//3.发送命令
			 ResultSet rs=stmt.executeQuery(sql);
			%>
	
			<% 
   			 //4.对结果进行处理
    
   			 while(rs.next()){
    		%>
    			<li><%=rs.getString("Tname")%>&nbsp;&nbsp;&nbsp;<a href='Admin/updatetopic.jsp?id=<%=rs.getInt("Tid")%>' >修改</a>&nbsp;&nbsp;&nbsp;<a href='Admin/dotopic.jsp?id=<%=rs.getInt("Tid") %>&action=delete' >删除</a></li>
    		<%
    		}
 			 }catch(Exception e){
				e.printStackTrace();  
 			 }
 			 %>
          
  </body>
</html>
