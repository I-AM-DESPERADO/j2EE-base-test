function $F(id){
		return document.getElementById(id);
	}
	function $FF(id){
		return document.getElementById(id).value;
	}
		function valiemail(){
			var txtemail = $F("txtEmail");
			var txtemailV = $FF("txtEmail");
			var txtemail_info=$F("email_info");
			var txtemail_info_ok=$F("email_info_ok");
			var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;//正则邮箱验证
			txtemail_info.innerHTML="";
			txtemail_info_ok.innerHTML="";
			if($("#txtEmail").val()==""){
				txtemail_info.innerHTML="*邮箱不能为空";
				return false;
			}else if(!reg.test(txtemailV)){
				txtemail_info.innerHTML="*邮箱格式不正确";
				return false;
			}else{
			$.ajax({
					type:'post',
					url:"jiHuoYanZMAction",
					dataType:"json",
					data:'email='+$("#txtEmail").val().trim(),
					async:false,
					success:function(data){
					if(data.flag){
						$("#email_info_ok").text("√邮箱正确");
						f=true;
					}else{
						$("#email_info").text("*邮箱不存在");
						f = false;
						
					}
				},
					
				});
			if(f){
				return true;
			}else{
				return false;
			}
			}
		}