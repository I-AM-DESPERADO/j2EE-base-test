<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
  　   <script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>	
    <script charset="utf-8" src="js/createdata.js" type=text/javascript></script>
    　<script>
        　　 var editor;
         　　KindEditor.ready(function(K) {
                 　　editor = K.create('#editor_id');
         　　});
         　　var options = {
          　　cssPath : '/css/index.css',
         　　 filterMode : true
    　　　　};
   　　　　var editor = K.create('textarea[name="ncontent"]', options);
 　　　 </script>
  </head>
  
  <body>
    	<form action="Admin/donews.jsp"  method="get" >
   	<p>
   			  <label>新闻主题:</label>
   			  <%
   			  String nid=request.getParameter("id");%>
   			 <input type="hidden" name="id" value="nid">
   			 <input type="hidden" value="update" name="action" />
   			  <% 
            try{
	  		 //1.加载驱动程序
	 		Class.forName("com.mysql.jdbc.Driver"); 
	 		//2建立连接
			 //jdbc:mysql://localhost:3306/test
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
             //2.建立连接
			 String sql="select * from topic"; 
			 Statement stmt=con.createStatement();
			//3.发送命令
			 ResultSet rs=stmt.executeQuery(sql);
			%>
			<%
   			 //4.对结果进行处理
   			  %>
             <select name="number">
             
              <% 
   			 while(rs.next()){
    		%>  	     		
    			<option value="<%=rs.getInt("tid")%>"><%=rs.getString("Tname")%></option>    		    		
    		<%
    		}%>
    		 
    		</select>
    		<%
 			 }catch(Exception e){
				e.printStackTrace();  
 			 }
 			 %>
 			 </br>
 			 </p>
           <%
  	
 			 String action=request.getParameter("action");
  			//1.加载驱动
  			Class.forName("com.mysql.jdbc.Driver");
 			 //jdbc:mysql//[hostname][:port]/[dbname][?param1=value1][&param2=value2]….
 			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
  			//2.建立连接
  			Statement stmt=con.createStatement();
  			String sql="select * from newss where nid="+nid;
 			 ResultSet rs=stmt.executeQuery(sql);
  			if(rs.next()){
	 		 %>	  
	 		 <div id="opt_area">
	   		 <h1>修改新闻</h1>
	   		 
	    	
    	    <label>新闻标题:</label>    
    	     <input type="text" name="ntitle" class="opt_input" value="<%=rs.getString("ntitle") %>"> 
    		</p>
    		<p>
    	
	    	<label>新闻内容:</label>
	    	
	    	<textarea id="editor_id" name="ncontent" style="width:675px;height:170px;"></textarea>   
	    	</p>
	    	
	    	
	    	<label>新闻作者:</label>
	    	<input type="text" name="nauthor" class="opt_input" value="<%=rs.getString("nauthor") %>"> 
	    	</p>
	    	
	    	
	    	<label>创建日期:</label>
	    	<input type="text" name="ncreatedate" style="border:1px solid #999;" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" readonly="readonly" />  
    		</p>
    		
	    	<input type="submit" value="提交" class="opt_sub"> 
	   		 </form>
	    
	  		</div>
	  
	 		 <%	  
  			}
 			 %>
 			 </form>
  </body>
</html>
