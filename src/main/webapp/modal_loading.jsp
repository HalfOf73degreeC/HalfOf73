<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/WOW-master/css/libs/animate.css">
<script
	src="${pageContext.request.contextPath}/resource/WOW-master/dist/wow.min.js"></script>
<!-- 若需要使用此loading，需要利用data-toggle="modal" data-target="#modal_loading"加入標籤中 -->
<div class="modal fade" id="modal_loading" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" style="z-index: 1045;">
	<div id="loading"
		style="height: 100%; width: 100%; background-size: cover; background-color: #333333cc;"></div>
	<div class="focus wow fadeInDown" id="inCenter"
		style="width: 150px; height: 150px; background-image: url('${pageContext.request.contextPath}/images/loading.gif'); background-repeat: no-repeat; background-size: cover; position: absolute;"></div>
</div>
<script>
	$(document).ready(function() {

		moveCenter();

		$(window).resize(function() {
			moveCenter();
		});

		function moveCenter() {
			var divWidth = $('#inCenter').width();
			var divHeight = $('#inCenter').height();

			// 會扣除瀏覽器上下的部分
			var winWidth = $(window).width();
			var winHeight = $(window).height();

			$('#inCenter').css({
				left : (winWidth - divWidth) / 2,
				top : (winHeight - divHeight) / 2
			});

		}
	});
</script>
<script>
	wow = new WOW({
		boxClass : 'wow', // default
		animateClass : 'animated', // default
		offset : 0, // default
		mobile : true, // default
		live : true
	// default
	})
	wow.init();
</script>