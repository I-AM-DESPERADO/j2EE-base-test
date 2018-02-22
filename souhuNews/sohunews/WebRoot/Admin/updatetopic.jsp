<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新主题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/htstyle.css" rel="stylesheet" type="text/css" />
    
  </head>
  
  <body>
   
            <%
  			String id=request.getParameter("id");
 			 String action=request.getParameter("action");
  			//1.加载驱动
  			Class.forName("com.mysql.jdbc.Driver");
 			 //jdbc:mysql//[hostname][:port]/[dbname][?param1=value1][&param2=value2]….
 			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
  			//2.建立连接
  			Statement stmt=con.createStatement();
  			String sql="select * from topic where tid="+id;
 			 ResultSet rs=stmt.executeQuery(sql);
  			if(rs.next()){
	 		 %>	  
	 		 <div id="opt_area">
	   		 <h1>修改主题</h1>
	   		 <form action="Admin/dotopic.jsp" method="get" >
	    	<p>
	    	<
	    	<label>主题名称</label>
	    	<input type="hidden" name="action" value="update">
	    	<input type="hidden" name="id" value="<%=rs.getInt("tid") %>">  
	    	<input type="text" name="tname" class="opt_input" value="<%=rs.getString("tname") %>"> 
	    	</p>
	    	<input type="submit" value="提交" class="opt_sub"> 
	   		 </form>
	    
	  		</div>
	  
	 		 <%	  
  			}
 			 %>
           
  </body>
</html>
