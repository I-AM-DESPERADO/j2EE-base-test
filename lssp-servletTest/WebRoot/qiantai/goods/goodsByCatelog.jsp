<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
    <script type="text/javascript">
    </script>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE  cellSpacing=0 cellPadding=0 width="100%" align=center border=0  background="<%=path %>/img/reservation01.gif">
				<TR height="90">
					<TD align="center">
					    <jsp:include flush="true" page="/qiantai/inc/incTop1.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/incTop2.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>

        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
				    <TD class=Side vAlign=top align=right width="25%">
						<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
					</TD>
					<td width="1">&nbsp;</td>
					<TD class=Side vAlign=top align=right width="75%">
					    <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<span style="float:left">商品信息</span>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="500">
									<TD>
									    <table cellspacing="5" cellpadding="2">
									          <tr>
									               <c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
									                  <c:if test="${sta.index%4==0}">
									                     </tr><tr>
									                  </c:if>
									                  <td align="center">
														   <a href="<%=path %>/goods?type=goodsDetailQian&id=${goods.id }">  
														      <img width="160" height="120" src="<%=path %>/${goods.fujian }" style="border:1px solid #ccc; padding:3px;"/>
														   </a>
														   <br>
									                       ${goods.mingcheng }
									                       <br>
									                       (￥:${goods.shichangjia }元)
									                  </td>
									              </c:forEach>
									          </tr>
						                  </table>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
    </div>
  </BODY>
</html>
