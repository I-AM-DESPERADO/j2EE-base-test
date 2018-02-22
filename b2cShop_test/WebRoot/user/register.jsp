<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath%>css/login.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/page_bottom.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/validatorTidyMode.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.4.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/formValidator-4.0.1.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/formValidatorRegex.js"></script>
		<script type="text/javascript" src="<%=basePath%>myjs/regist.js"></script>
  </head>
  
  <body>
     <div class="login_top">
	<a href="<%=basePath%>main/main.html">
	<img class="logo" src="<%=basePath%>images/logo.gif" /> </a>
</div>
		<div class="login_step">
			注册步骤:
			<span class="red_bold">1.填写信息</span> &gt; 2.验证邮箱 &gt; 3.注册成功
		</div>
		<div class="fill_message">
			<form id="form1" name="ctl00" action="loginAction.action" method="post" >
				<h2>
					以下均为必填项
				</h2>
				<table class="tab_login" >
					<tr>
						<td valign="top" class="w1">
							请填写您的Email地址：
						</td>
						<td>
							<input type="text" name="email" value="" id="txtEmail" class="text_input" />
							<div class="text_left" id="emailValidMsg">
								<p>
									请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。
								</p>
								<span id="email_info" style="color:red"></span>
								<span id="email_info_ok" style="color: blue"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置您在当当网的昵称：
						</td>
						<td>
							<input type="text" name="nickname" value="" id="txtNickName" class="text_input" />
							<div class="text_left" id="nickNameValidMsg">
								<p>
									您的昵称可以由小写英文字母、中文、数字组成，
								</p>
								<p>
									长度3－10个字符，一个汉字为两个字符。
								</p>
								<span id="nickname_info" style="color:red"></span>
								<span id="nickname_info_ok" style="color:blue"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置密码：
						</td>
						<td>
							<input type="password" name="password" id="txtPassword" class="text_input" />
							<div class="text_left" id="passwordValidMsg">
								<p>
									您的密码可以由大小写英文字母、数字组成，长度6－20位。
								</p>
								<span id="password_info" style="color:red"></span>
								<span id="password_info_ok"style="color:blue"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							再次输入您设置的密码：
						</td>
						<td>
							<input type="password" name="password1" id="txtRepeatPass" class="text_input" />
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1_info" style="color:red"></span>
							<span id="password1_info_ok" style="color:blue"></span>
							</div>
						</td>
					</tr>
					
				</table>

				<div class="login_in">
				<input type="submit" id="btnClientRegister" name="submit" value="&#27880; &#20876;" class="button_1" />

				</div>
			</form>




		</div>
		
  <jsp:include page="../common/footer.jsp"></jsp:include>
  </body>
</html>
