$(document).ready(function() {
	setTimeout(
			function() {
				$("#login_bt").on("click",function() {
				var path = $("#googlelogin_bt").attr("data-path");
				$("#googlelogin_bt").attr("href",path+"/member/login?backPage="+window.location.href);
			});
	}, 100 );

});