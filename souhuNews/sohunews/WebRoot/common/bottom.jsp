<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/htstyle.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    <!--bottom-->
   <div id="bottom">
       <div id="bottom1">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于我们&nbsp;|&nbsp;
           Aboue Us&nbsp;|&nbsp;
           联系我们&nbsp;|&nbsp;
           广告服务&nbsp;|&nbsp;
           供稿服务&nbsp;|&nbsp;
           法律声明&nbsp;|&nbsp;
           招聘信息&nbsp;|&nbsp;
           网站地图&nbsp;|&nbsp;
           留言反馈   
       </div>
       <div id="bottom2">
           <ul>
           <li id="l2">24小时客户服务热线:010-68900800</li>
           <li id="l3">常见问题解答</li>
           <li id="l1">新闻热线:010-62748800</li>
           </ul>
           <ul>
           <li id="l2">文明办网文明上网举报电话:010-02748888</li>
           <li id="l5">举报邮箱:</li>
           <li id="l3">jubao@jb-aolech.com.cn</li>
           </ul>

       </div>
       <div id="bottom3">
        <ul>
           <li id="l4">
           Copyight @ 1999-2009 News China gov.AllRight Reserver</li>
        </ul>
        <ul>
           <li id="l4">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新闻中国 版权所有
           </li>
        </ul>
       </div>
   </div>
   <!--bottom-->
  </body>
</html>
