<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <jsp:useBean id="baBean" class="_03_listBooks.model.BookAccessBean_Hibernate" scope='request'/> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>最新消息 - Half Of 73°C</title>

<!-- favicon -->
<link rel="shortcut icon" href="../images/ico/like.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="../css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="../css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="../css/unslider.css" />
<link rel="stylesheet" type="text/css" href="../css/template.css" />
<link rel="stylesheet" type="text/css" href="../css/halfOf73.css" />
<!-- javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
<script type="text/javascript"
	src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="../js/unslider-min.js"></script>


</head>
<body>
	<header id="nino-story">
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header" w3-include-html="../logo.jsp"></div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="nino-menuItem pull-right">
					<div class="collapse navbar-collapse pull-left"
						id="nino-navbar-collapse">
						<ul class="nav navbar-nav">
							<!-- 					<li><a href="supply.html">回到商品總攬</a></li> -->
							<!-- 					<li class="active"><a href="#nino-story">商品基本資料</a></li> -->
							<!-- 					<li><a href="#nino-ourTeam">商品詳細資料</a></li> -->
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<div class="nino-menuItem pull-right"
						w3-include-html="../navbar_right.jsp"></div>
				</div>
			</div>
		</nav>
	</header>
	<!--header 結束，內容開始  -->
	<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->

	<section id="nino-latestBlog">
		<div class="container">
			<!-- 			<h2 class="nino-sectionHeading"> -->
			<!-- 				<span class="nino-subHeading">最新消息</span> -->
			<!-- 			</h2> -->
			<div align="center">
				<img id="loadingGif"
					src="${pageContext.request.contextPath}/images/loadingGif.gif"></img>
			</div>
			<div class="sectionContent" id='somedivS'></div>
		</div>
	</section>


	<!--/#nino-latestBlog-->
	<!--footer-->


	<div w3-include-html="../footer.html"></div>
	<script>
		$(document)
				.ready(
						function() {
							var xhr = new XMLHttpRequest();
							xhr.open("Get", "getNewsPage", true);
							xhr.send();
							xhr.onreadystatechange = function() {
								if (xhr.status == 200 && xhr.readyState == 4) {
									var arr = JSON.parse(xhr.responseText);
									$(loadingGif).hide();
									for (var i = 0; i < arr.length; i++) {
										var news = arr[i];
										var $row;
										if (i % 3 == 0) {
											$row = $('<div class="row">')
													.appendTo($('#somedivS'));
										}
										var $divcol = $(
												'<div class="col-md-4 col-sm-4" style="margin-top: 30px">')
												.appendTo($row);
										var $article = $('<article>').appendTo(
												$divcol);
										var $articleThumb = $(
												'<div class="articleThumb">')
												.appendTo($article);
										var $goodsImageSize = $(
												'<div class="newsImageSize">')
												.appendTo($articleThumb)
												.append(
														"<img style='width: 300px;' src='" + news.newsImg + "'>");
										var $divdate = $('<div class="date">')
												.appendTo($articleThumb)
												.append(
														'<span class="text" style="font: bolder 20px 微軟正黑體">'
																+ news.insertMonth
																+ '</span>')
												.append(
														'<span class="number">'
																+ news.insertDay
																+ '</span>');
										var $newsTitle = $(
												'<h3 class="articleTitle">')
												.appendTo($article).html(
														news.newsName);
										var $newsArticle = $(
												'<p class="articleDesc">')
												.appendTo($article).html(
														news.newsArticle);
										var $articleMeta = $(
												'<div class="articleMeta">')
												.appendTo($article).append(
														'<a href="#"><i class="mdi mdi-eye nino-icon"></i>'
																+ news.newsView
																+ '</a>')
												.append(
														'<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
																+ news.newsUid
																+ '</a>')
									}
								}
							}
						});
	</script>
	<script type="text/javascript" src="../js/template.js"></script>
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>
</body>
</html>
