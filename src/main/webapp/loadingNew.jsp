<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<!-- <link rel="stylesheet" href="css/style.css"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/WOW-master/css/libs/animate.css">
	<script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/WOW-master/dist/wow.min.js"></script>
	<script>
		$(document).ready(function () {

			moveCenter();

			$(window).resize(function () {
				moveCenter();
			});

			function moveCenter() {
				var divWidth = $('#inCenter').width();
				var divHeight = $('#inCenter').height();

				// 會扣除瀏覽器上下的部分
				var winWidth = $(window).width();
				var winHeight = $(window).height();

				$('#inCenter').css({
					left: (winWidth - divWidth) / 2,
					top: (winHeight - divHeight) / 2
				});

			}
		});			
	</script>
	<script>
		//wow = new WOW().init();
		wow = new WOW({
			boxClass: 'wow',      // default
			animateClass: 'animated', // default
			offset: 0,          // default
			mobile: true,       // default
			live: true        // default
		}).init();
	</script>

</head>

<body style="background-color:#333333cc ;">
	<div id="loading" style="height: 100%; width: 100%; background-size: cover; background-color:#ccc;"></div>
	<div class="focus wow fadeInDown" id="inCenter" style="width: 150px; height: 150px; background-image: url('images/ho73Loading.gif'); background-repeat:no-repeat;  background-size: cover; position: absolute;"></div>
</body>

</html>