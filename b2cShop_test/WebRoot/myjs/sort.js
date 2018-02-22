//用来排序的js
function sort(value){
	if(value=="o1"){
		$.post(
				"main/sortAction!desc",
				function(data){
					if(data.flag){
						alert("降序成功");
					}
				},
				"json"
				
			);
	}else{
		$.post(
		 "main/sortAction!asc",
				function(data){
					if(data.flag){
						alert("升序成功");
					}
				},
				"json"
				
		);
		
	}
	
}