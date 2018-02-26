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
										<SPAN class=TAG>绿色食品视频</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								
								<TR align="left" height="150">
									<TD>
									   <a class="play-img" href="http://www.le.com/ptv/vplay/27448560.html?ch=sogou_sv&fromvsogou=1" target="_blank">
				                       <img src="<%=path%>/upload/lssp01.jpg" height="120" width="220" alt="河南绿色食品">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://www.le.com/ptv/vplay/27448560.html?ch=sogou_sv&fromvsogou=1" target="_blank">河南绿色食品</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/01285831476203592022.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp02.jpg" height="120" width="220" alt="如何辨别绿色食品">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/01285831476203592022.html?page=videoMultiNeed" target="_blank">如何辨别绿色食品</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/4105153287922426558.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp03.jpg" height="120" width="220" alt="绿色食品宣传">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/4105153287922426558.html?page=videoMultiNeed" target="_blank">绿色食品宣传</a>  
									</TD>
								</TR>
								
								<TR align="left" height="150">
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/06022339483562152702.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp04.jpg" height="120" width="220" alt="绿色食品还原机">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/06022339483562152702.html?page=videoMultiNeed" target="_blank">绿色食品还原机</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/4131270417306125251.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp05.jpg" height="120" width="220" alt="绿色食品标志意义">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/4131270417306125251.html?page=videoMultiNeed" target="_blank">绿色食品标志意义</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/851368062689655291.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp06.jpg" height="120" width="220" alt="辨别绿色食品">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/851368062689655291.html?page=videoMultiNeed" target="_blank"> 绿色食品</a>  
									</TD>
								</TR>
								<TR align="left" height="150">
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/5818292518560513788.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp07.jpg" height="120" width="220" alt="绿色与有机">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/5818292518560513788.html?page=videoMultiNeed" target="_blank">绿色与有机</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/5155932190620374112.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp08.jpg" height="120" width="220" alt="绿色食品准入门槛">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/5155932190620374112.html?page=videoMultiNeed" target="_blank">绿色食品准入门槛</a>  
									</TD>
									<TD>
									   <a class="play-img" href="http://baidu.ku6.com/watch/7369274621420287040.html?page=videoMultiNeed" target="_blank">
				                       <img src="<%=path%>/upload/lssp09.jpg" height="120" width="220" alt="生态农业">
				                       </a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="http://baidu.ku6.com/watch/7369274621420287040.html?page=videoMultiNeed" target="_blank">生态农业</a>  
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
