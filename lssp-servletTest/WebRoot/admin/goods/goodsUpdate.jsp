<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        <script language="javascript">
          
           function over(picPath)
	       {
			  if (picPath=="")picPath="/img/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
		   
		   function goodsDetailHou(id)
           {
                 var url="<%=path %>/goods?type=goodsDetailHou&id="+id;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/goods?type=goodsAdd" name="formAdd" method="post">
				     <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="4" background="<%=path %>/img/tbg.gif">&nbsp;商品修改&nbsp;</td>
						</tr>
										<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="7%">编号</td>
					<td width="15%">名称</td>
					<td width="7%">介绍</td>
					
					<td width="7%">厂家名称</td>
					<td width="7%">厂家地址</td>
					<td width="7%">厂家电话</td>
					<td width="7%">厂家邮箱</td>
					<td width="7%">图片</td>
					<td width="7%">价格</td>
					<td width="7%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">${sta.index+1}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.bianhao}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.mingcheng}</td>
					<td bgcolor="#FFFFFF" align="center"><a href="#" onclick="goodsDetailHou(${goods.id})" class="pn-loperator">商品描述</a></td>
					
					<td bgcolor="#FFFFFF" align="center">${goods.pinpai}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.dizhi}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.dianhua}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.youxiang}</td>
					<td bgcolor="#FFFFFF" align="center"><div onmouseover = "over('<%=path %>/${goods.fujian}')" onmouseout = "out()" style="cursor:hand;">图片</div></td>
					<td bgcolor="#FFFFFF" align="center">${goods.shichangjia}</td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="保存" onclick="return check()"/>&nbsp; 
						       
						    </td>
						</tr>
						</c:forEach>
					 </table>
			</form>
   </body>
</html>
