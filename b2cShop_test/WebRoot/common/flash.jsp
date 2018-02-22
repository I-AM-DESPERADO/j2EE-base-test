<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'flash.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	*{
		margin:0px;
		padding:0px;
	}
	#d1{
		border:1px solid #aaa;
		margin-left: 0px;
		margin-top: 10px;
		width: 180px;
		height: 104px;
		overflow: hidden;
		position: relative;
	}
	#adv,#num{
		position: absolute;
	}
	ul li{
		list-style: none;
		display: inline;
	}
	#adv li img{
		width: 180px;
		height: 104px;
		display: block;
	}
	#num{
		right: 4px;
		bottom: -2px;
	}
	#num li{
		float:left;
		color:#ff7300;
		text-align: center;
		line-height: 16px;
		width: 16px;
		height: 16px;
		font-family: Arial;
		font-size: 12px;
		cursor: pointer;
		overflow: hidden;
		margin: 3px 1px;
		border: 1px solid #ff7300;
		background-color: #fff;
	}
	.on{
		color:#fff;
		line-height: 21px;
		width: 21px;
		height: 21xp;
		font-size: 16px;
		margin: 0 1px;
		border:0;
		background-color: #ff7300;
		font-weight: bold;
	}
</style>
<script src="<%=basePath%>js/jquery-1.4.4.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		var index=0;
		var length=$("#num li").length;
		var timer;
		$("#num li").mouseover(function(){
			index=$("#num li").index(this);
			showImage(index);
		}).eq(0).mouseover();
		$("#d1").hover(function(){
			clearInterval(timer);
		},function(){
			timer=setInterval(function(){
			showImage(index);
			index++;
			if(index==length){
				index=0;
			}
		},3000);
		}).trigger("mouseleave");
	});
	function showImage(index){
		var height=$("#d1").height();
		$("#adv").stop(true).animate({top:-height*index},1000);
		$("#num li").removeClass("on").eq(index).addClass("on");
	}
</script>
  </head>
  
  <body>
   	<div id="d1">
		<ul id="adv">
			<li><img src="<%=basePath%>images/default/11.jpg"/></li>
			<li><img src="<%=basePath%>images/default/12.jpg"/></li>
			<li><img src="<%=basePath%>images/default/13.jpg"/></li>
			<li><img src="<%=basePath%>images/default/14.jpg"/></li>
			<li><img src="<%=basePath%>images/default/15.jpg"/></li>
		</ul>
		<ul id="num">
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
	</div>
	</body>
</html>

