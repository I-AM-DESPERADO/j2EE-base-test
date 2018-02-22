<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/xwzy_index.css"/>
	<script language="javascript" src="js/xwzy_index.js"></script>
  </head>
  
  <body>
   <!--div container开始-->
<div id="container">
	<!--div top开始-->
	<div id="top">
		<!--div注册开始-->	
	  <div id="zhuce">
		<form class="denglu">
			用户名&nbsp;<input type="text" name="username" size="9" />
			&nbsp;密码&nbsp;<input type="password" name="nima" size="9"  />
            &nbsp;<input type="button" value="登陆" />
			 
		</form>
		<img src="Image/friend_logo.gif" height="28" class="google" />		</div>
		<!--div注册结束-->
		<!--div logo开始-->
		<div id="logo">
			<!--div logo1开始-->
			<div id="logo1"></div><!--div logo1结束-->
			<!--div logo2开始-->
			<div id="logo2"></div><!--div logo2结束-->
		</div><!--div logo结束-->
	</div>
	<!--div top结束-->
	<!--div main开始-->
  <div id="main">
		<!--div left开始-->
		<div id="left">
			<div id="left1">
				<dl>
					<dt class="head1"><img src="Image/title_1.gif" width="148" /></dt>
					<dd class="news1">习近平欢迎瑞士元首访华 与其会谈 会见斯里兰卡总理</dd>
					<dd class="news1">习近平谈党规:从严治党首先要尊崇党章 这三年</dd>
					<dd class="news1">李克强要求破除互联网+流通四大瓶颈 会见德国外长</dd>
					<dd class="news1">张德江会见瑞士元首 俞正声会见“感恩侨爱”代表</dd>
				</dl>
			</div>
			<div id="left1">
				<div id="left1">
				<dl>
					<dt class="head1"><img src="Image/title_2.gif" width="145" /></dt>
					<dd class="news1">习近平欢迎瑞士元首访华 与其会谈 会见斯里兰卡总理</dd>
					<dd class="news1">习近平谈党规:从严治党首先要尊崇党章 这三年</dd>
					<dd class="news1">李克强要求破除互联网+流通四大瓶颈 会见德国外长</dd>
					<dd class="news1">张德江会见瑞士元首 俞正声会见“感恩侨爱”代表</dd>
				</dl>
			</div>
			</div>
			<div id="left1">
				<div id="left1">
				<dl>
					<dt class="head1"><img src="Image/title_3.gif" width="148" /></dt>
					<dd class="news1">习近平欢迎瑞士元首访华 与其会谈 会见斯里兰卡总理</dd>
					<dd class="news1">习近平谈党规:从严治党首先要尊崇党章 这三年</dd>
					<dd class="news1">李克强要求破除互联网+流通四大瓶颈 会见德国外长</dd>
					<dd class="news1">张德江会见瑞士元首 俞正声会见“感恩侨爱”代表</dd>
				</dl>
			</div>
			</div>
		</div><!--div left-->
		
		
		<!--div right-->
		<div id="right">
			<div id="r_logo">
			  <div id="Layer1"></div>
			</div>
				<div id="r_main1">
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
			    		  
			    			<span><a href='Admin/news_title.jsp?id=<%=rs.getInt("tid")%>' target="xianshilan"> <%=rs.getString("tname")%></a></span>
			    		  
			    		<%	
			   			}
			  		}catch(Exception e){
						e.printStackTrace();  
			  		}
			      %>
			     
				</div>
				<hr>
				
					<%
			  		try{
				  		//1.加载驱动程序
				 		Class.forName("com.mysql.jdbc.Driver"); 
				 		//2建立连接
						//jdbc:mysql://localhost:3306/test
				 		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","root");
				 		String sqln="select * from topic";
				 		
				 		
				 		Statement stmtn=conn.createStatement();
						//3.发送命令
				 		ResultSet rsn=stmtn.executeQuery(sqln);
						
					%>
				<div id="r_main2">
					<% 
			    	//4.对结果进行处理
			   			while(rsn.next()){
			   				
			    		%>
			        	<iframe src='Admin/news_title.jsp?id=<%=rsn.getInt("tid")%>' scrolling="no" frameborder="0" name="xianshilan" width="520" height="700"></iframe>
			           		<%	
			   			}
			  		}catch(Exception e){
						e.printStackTrace();  
			  		}
			     	 %>
					
								
				</div>
			<div id="r_img">
				<dl>
					<dt><img src="Image/Picture1.jpg" /></dt>
					<dd id="d1">4月十二生肖财气运势</dd>
				</dl>
				<dl>
					<dt><img src="Image/Picture2.jpg" /></dt>
					<dd id="d1">法源寺丁香海棠绽放 </dd>
				</dl>
				<dl>
					<dt><img src="Image/Picture3.jpg"/></dt>
					<dd id="d1">常见三十五佛画像</dd>
				</dl>
				<dl>
					<dt><img src="Image/Picture4.jpg" /></dt>
					<dd id="d1">七种情况千万别杀生</dd>
				</dl>
			</div>
		</div>
		<div id="layer"></div>
	  <!--div right--> 
	</div>
	<!--div main结束-->
	<!--div bottom开始-->
	<div id="bottom">
		<div id="hezuo"></div>
		<hr />
		<div id="address">
			<ul>
				<li>政府新闻网</li>
				<li>政府新闻网</li>
				<li>政府新闻网</li>
				<li>政府新闻网</li>
				<li>政府新闻网</li>
				<li>政府新闻网</li>
			</ul>
		</div>
	</div><!--div bottom结束-->
	<div id="footer">
  <p class=""> 24小时客户服务热线：010-68988888 &#160;&#160;&#160;&#160; <a href="#">常见问题解答</a> &#160;&#160;&#160;&#160; 新闻热线：010-627488888 <br />
    文明办网文明上网举报电话：010-627488888 &#160;&#160;&#160;&#160; 举报邮箱： <a href="#">jubao@jb-aptech.com.cn</a> </p>
  <p class="copyright"> Copyright &copy; 1999-2009 News China gov, All Right Reserver <br />
    新闻中国 版权所有 </p>
</div>
</div>
<!--div container结束-->
  </body>
</html>
