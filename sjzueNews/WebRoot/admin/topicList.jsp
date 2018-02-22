<%@ page language="java" import="java.util.*,java.sql.*,com.web.news.bean.Topic,com.web.news.bean.dao.TopicDAO" pageEncoding="UTF-8"%>
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
	<script type="text/javascript">
		function changePage(){
			  var page_num=document.getElementById("page_number").value;
			
			  window.location.href="admin/topicList.jsp?pageno="+page_num;
			}
	</script>
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
  	<h1 id="opt_type">主题管理</h1>
  	<ul>
  	<%
  	
  	String curPage_str=request.getParameter("pageno");
  	int page_no=1;
  	if(curPage_str!=null){
  		page_no=Integer.valueOf(curPage_str);
  	}
  	 TopicDAO dao=new TopicDAO();
  	 int total_topic=dao.findAllSize();
  	 int pagesize=10;
  	 int totalPage=total_topic%pagesize==0?total_topic/pagesize:total_topic/pagesize+1;
  	 List<Topic> topics=dao.findAllByPage(page_no,pagesize);
  	for(Topic topic:topics){
  		out.println("<li>"+topic.getTname()+"<a href='#'>修改</a><a href='#'>删除</a></li>");
  	 } 
  	
  	 
  	
  	%>
  	
  	当前页数:<%=page_no %>/<%=totalPage %>
  	
  	<a href="admin/topicList.jsp?pageno=1">首页</a>
  	<%
  		if(page_no==totalPage){
  			%>
  			下一页
  			<%
  		}else{
  			%>
  			<a href="admin/topicList.jsp?pageno=<%=page_no+1 %>">下一页</a>
  			<% 
  		} 
  	
  	%>
  	<%
  		if(page_no==1){
  			%>
  			上一页
  			<%
  		}else{
  			%>
  				<a href="admin/topicList.jsp?pageno=<%=page_no-1 %>">上一页</a>
  			<%
  			
  		}
  	%>
  
  	<a href="admin/topicList.jsp?pageno=<%=totalPage %>">末页</a>
  	
  	<br/>
   
   <%
   	for(int i=1;i<=totalPage;i++){
   		%>
   		<a href="admin/topicList.jsp?pageno=<%=i %>"><%=i %></a>
   		<%
   	}
   
   %>
   	<input type="text" id="page_number">
   	<input type="button" value="确定" onclick="changePage()"/>   
   每页
   	<select >
   	<option>10</option>
   	<option>20</option>
   	<option>30</option>
   	</select>
   </ul>
  </div>
</div>

  </body>
</html>
