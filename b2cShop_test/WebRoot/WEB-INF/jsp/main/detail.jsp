<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	     <link href="<%=basePath%>css/book.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/second.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/jqzoom.css" type="text/css"/>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.4.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jqzoom.js"></script>
		<script type="text/javascript" src="<%=basePath%>myjs/zoom.js"></script>
		<script type="text/javascript" src="<%=basePath%>myjs/buy.js"></script>
  </head>
  
  <body>
      &nbsp;
		<!-- 头部开始 -->
			<jsp:include  page="/common/top.jsp" />
				

		<!-- 头部结束 -->
		<div style="width: 962px; margin: auto;">
			<a href="#" target="_blank"><img
					src="<%=basePath%>images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div
			style="margin-left: 50px; background-color: #FFFFFF; width: 962px; height: 80px; margin: auto;">
			&nbsp;
		</div>
		
			<div
				style="margin-left: 50px; background-color: #FFFFFF; width: 962px; margin: auto;">
				<center>

					<form action="add2cart.do" method=post name="">
						<table cellpadding=3 cellspacing=1 align=center class=tableborder1
							width=74%>
							<tr>
								<td valign=middle align=center height=25 colspan="3">
									<font color="#ffffff"><b></b> </font>
								</td>
							</tr>
							<tr>
								<td class=tablebody1 valign=middle width="" rowspan="6">
									&nbsp;&nbsp;
							<a name="link_prd_img" class="jqzoom" href='<%=basePath%>productImages/<s:property value="product.productPic"/>'>
										<img border="0" src="<%=basePath%>productImages/<s:property value="product.productPic"/>" width="127" height="180" /></a> 
								</td>
								<td class=tablebody1 valign=middle align=center width="20%">
									【 作&nbsp;&nbsp;&nbsp; 者 】
								</td>

								<td class=tablebody1 valign=middle width="80%">
									<s:property value="product.author"/>
								</td>
							</tr>
							<tr>
								<td class=tablebody1 valign=middle align=center width="20%">
									【 价&nbsp;&nbsp;&nbsp; 格 】
								</td>
								<td class=tablebody1 valign=middle width="80%">
									￥：&nbsp;&nbsp;<s:property value="product.fixedPrice"/>
								</td>
							</tr>

							<tr>
								<td class=tablebody1 valign=middle align=center width="">
									【出 版 社】
								</td>
								<td class=tablebody1 valign=middle width="">
									 <s:property value="product.publishing"/>
								</td>
							</tr>
							<tr>
								<td class=tablebody1 valign=middle align=center width="">
									【 书&nbsp;&nbsp;&nbsp; 号 】
								</td>

								<td class=tablebody1 valign=middle width="">
									<s:property value="product.printNumber"/>
								</td>
							</tr>
							<tr>
								<td class=tablebody1 valign=middle align=center width="">
									【 页&nbsp;&nbsp;&nbsp; 码 】
								</td>
								<td class=tablebody1 valign=middle width="">
									&nbsp;&nbsp;<s:property value="product.totalPage"/>
								</td>
							</tr>

							<tr>
								<td class=tablebody1 align=center width="" valign="top">
									【 简&nbsp;&nbsp;&nbsp; 介 】
								</td>
								<td class=tablebody1 valign=middle width="">
									<s:property value="product.catalogue"/>
								</td>
							</tr>
							<tr>
								<td class=tablebody2 valign=middle align=center colspan="3">
									<a href="main/buyAction?pid=<s:property value="product.id"/>" >
									 <img border="0" src="<%=basePath%>images/buttom_goumai.gif" width="92" height="21" />
									  </a>
											<span id="buyinfo_21" style="color: red; font-size: 10pt"></span>
								</td>
							</tr>
								
						</table>
					</form>
				</center>
			</div>
		
		<div
			style="margin-left: 50px; background-color: #FFFFFF; width: 962px; height: 80px; margin: auto;">
			&nbsp;
		</div>
		<!--页尾开始 -->
		
				<jsp:include  page="/common/footer.jsp" />

		<!--页尾结束 -->
    

  </body>
</html>
