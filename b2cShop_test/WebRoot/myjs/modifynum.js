function strip(str){
				//g表示匹配整个字符串
				var reg=/(^\s*)|(\s*$)/g;
				return str.replace(reg,'');
			}
			function modify(id,qty){
				if(strip(qty).length==0){
					alert('数量不能为空');
					return;
				}
				var reg=/^\d+$/;
				if(!reg.test(strip(qty))){
					alert('数量必须为正整数');
					return;
				}
				location='modifyAction?id='+id+'&num='+strip(qty);
			}