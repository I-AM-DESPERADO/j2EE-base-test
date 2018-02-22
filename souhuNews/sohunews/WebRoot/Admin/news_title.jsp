<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'news_content.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/newslist.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    <%
  		try{
	  	//1.加载驱动程序
	 	Class.forName("com.mysql.jdbc.Driver"); 
	 	String id=request.getParameter("id");
	 	//2建立连接
		//jdbc:mysql://localhost:3306/test
	 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
	 	String sql="select * from newss where tid="+id; 
	 	Statement stmt=con.createStatement();
		//3.发送命令
	 	ResultSet rs=stmt.executeQuery(sql);		
				%>
	           
				<% 
    			//4.对结果进行处理
    			int i=0;
   					while(rs.next()){
   					 	if(i == 5)
   	    		   		 {
   	    			  		 %><br><%
   	    			  			 i=1;
   	    		   		}%>
    				<table cellspacing="2"><!--cellspacing单元格距离-->
                		<tr>
                    		<td width="400px"><li><a href='Admin/news_content.jsp?id=<%=rs.getInt("nid")%>'><%=rs.getString("ntitle") %></a></li></td>
                        	<td><%=rs.getString("ncreatedate") %></td>
		            	</tr>
    				</table>	
    					
    				<%	i++;
   					}
   					
  				}catch(Exception e){
					e.printStackTrace();  
  				}%>
  </body>
</html>
