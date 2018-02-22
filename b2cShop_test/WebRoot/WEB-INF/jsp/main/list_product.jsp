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
    
    <title>My JSP 'list_product.jsp' starting page</title>
    
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
   <table align="center" bgcolor="#ereree" border="2">
    	<tr>
    		<td>序号</td>
    		<td>图书名</td>
    		<td>价格</td>
    		<td>图片</td>
    	</tr>
    	
    	 <s:iterator value="products" status="tt"  >
    	<tr>
    		<td><s:property value="id"/></td>
    	    <td><s:property value="productName"/></td>
    	    <td><s:property value="fixedPrice"/><br/></td>
    	    <td><img src='<%=basePath%>productImages/<s:property value="productPic"/>' />  </td>
    	</tr>
    	 </s:iterator>
    	  第<s:property value="curpage"/>页 总<s:property value="totalPage"/>页
    	  <a href="<%=basePath%>main/listProductPage?curpage=1">首页</a>
    	   <a href='<%=basePath%>main/listProductPage?curpage=<s:property value="curpage-1"/>'>上一页</a>
    	  <a href='<%=basePath%>main/listProductPage?curpage=<s:property value="curpage+1"/>'>下一页</a>
    	  末页
    	 <input type="text" name="curpage1" /><input type="button"  value="确定"/>
    	每页<select >
    	
    	</select>条记录
    	 
    </table>
    <s:debug></s:debug>
  </body>
</html>
