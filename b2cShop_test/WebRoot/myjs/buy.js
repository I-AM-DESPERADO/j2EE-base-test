function buy(id){
				$.ajax({
					type: "POST",
					url: "buyAction",
					dataType:"json",
					data: "id="+id,
					success: function(data){
						if(data.flag){
							$("#buyinfo_error"+id).html("");
							$("#buyinfo"+id).html("√您购买成功");
							setTimeout(function(){
								$("#buyinfo"+id).html("");},2000);
						}
						else{
							$("#buyinfo"+id).html("");
							$("#buyinfo_error"+id).html("*您已经购买,请查看购物车");
							setTimeout(function(){
								$("#buyinfo_error"+id).html("");},2000);
						}
					}
				});
			};