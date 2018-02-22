function checkAdd(){
	return checkName() &&　checkAddress() &&　checkPostal() &&　checkPhone() && checkMobile();
	alert( checkName() &&　checkAddress() &&　checkPostal() &&　checkPhone() && checkMobile());
}

function checkName(){
	var name=$("#receiveName").val();
	$("#nameMsg").html("");
	if(!name){
		$("#nameMsg").html("收件人姓名不能为空");
		return false;
	}else{
		$("#nameMsg").html("该姓名可用");
		return true;
	}
}

function checkAddress(){
	 
	var address=$("#fullAddress").val();
	$("#addressMsg").html("");
	if(!address){
		$("#addressMsg").html("详细地址不能为空");
		return false;
	}else{
		$("#addressMsg").html("该地址可用");
		return true;
	}
	 
}
function checkPostal(){
	var postal=$("#postalCode").val();
	var reg = /^\d{6}$/;
	$("#postalMsg").html("");
	if(!postal){
		$("#postalMsg").html("邮政编码不能为空");
		return false;
	}else if(!reg.test(postal)){
		$("#postalMsg").html("邮政编码必须为6位数字");
		return false;
	}else{
		$("#postalMsg").html("该邮政编码可用");
		return true;
	}
	 
	
}
function checkPhone(){
	var phone=$("#phone").val();
	var reg=/^((\d{3}[-－]\d{8})|(\d{4}[-－]\d{7})|(\d{11}))$/;
	$("#phoneMsg").html("");
	if(!phone){
		$("#phoneMsg").html("电话不能为空");
		return false;
	}else if(!reg.test(phone)){
		$("#phoneMsg").html("电话格式不正确");
		return false;
	}else{
		$("#phoneMsg").html("该电话可用");
		return true;
	}
	 
}
function checkMobile(){
	var mobile=$("#mobile").val();
	var reg=/^\d{11}$/;
	$("#mobileMsg").html("");
	if(!mobile){
		$("#mobileMsg").html("手机不能为空");
		return false;
	}else if(!reg.test(mobile)){
		$("#mobileMsg").html("手机必须为11位数字");
		return false;
	}else{
		$("#mobileMsg").html("该手机可用");
		return true;
	}
	 
}

