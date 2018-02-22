$(document).ready(function(){
	$(".li1").hover(function(){
		$(this).children("ul").slideDown();
	},function(){
		$(this).children("ul").slideUp();
	});
});
