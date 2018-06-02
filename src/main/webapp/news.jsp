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
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="css/unslider.css" />
<link rel="stylesheet" type="text/css" href="css/template.css" />
<link rel="stylesheet" type="text/css" href="css/halfOf73.css" />

<!-- javascript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="js/modernizr.custom.97074.js"></script>
<script type="text/javascript"
	src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="js/unslider-min.js"></script>
<script type="text/javascript" src="js/template.js"></script>

</head>
<body>
	<header id="nino-story">
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#nino-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="../index.jsp">Half Of 73°C</a>
				</div>

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
					<ul class="nino-iconsGroup nav navbar-nav">
						<li><a href="supplyBox.html"><i
								class="mdi mdi-cart-outline nino-icon"></i></a></li>
						<li><a href="#" class="nino-search"><i
								class="mdi mdi-magnify nino-icon"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!--header 結束，內容開始  -->
	<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->
	<section id="nino-latestBlog">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">最新消息</span>
			</h2>
			<div class="sectionContent" id='somedivS'></div>
		</div>
	</section>
	<!--/#nino-latestBlog-->
	<script>
	$(document).ready(
			var xhr = new XMLHttpRequest();			
			xhr.open("GET", "getNewsPage", true);
			xhr.open("GET", "getMemberPage?page=" + page, true);
			xhr.send();
// 			xhr.onreadystatechange = function(){
// 				if(xhr.status == 200 && xhr.readyState == 4){
// 					var str = "<table border='1'>";
// 					var arr = JSON.parse(xhr.responseText);
// 					for(var i = 0; i < arr.length; i++){ 
// 						var obj = arr[i];
			$("#somedivS").empty();
		    $.getJSON('allBooks.json',function(categoriesJson) {
		    	var $row;
		    	$.each(categoriesJson,function(index, element) {
				    if(index % 3==0){
				    	$row = $('<div class="row">').appendTo($('#somedivS'));
				    }
				    var $divcol = $('<div class="col-md-4 col-sm-4">').appendTo($row);
				    	var $article = $('<article>').appendTo($divcol);
				    		var $articleThumb = $('<div class="articleThumb">').appendTo($article);
				    			var $goodsImageSize = $('<div class="goodsImageSize">').appendTo($articleThumb)
								.append("<img style='width: 300px;' src='../../ch00/util/GetImage?no=" + element.bookId + "'>");
							var $articleTitle = $('<h3 class="articleTitle">').appendTo($article)
							.html(element.title);
							var $articlePrice = $('<h3 class="articleTitle" style="text-align: right;">').appendTo($article)
				    		.html(element.price);
							var $articleMeta = $('<div class="articleMeta">').appendTo($article)
							.html(element.author + "(JQuery版)");	
		    	});
			});
	);
</script>
</body>
</html>
