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
	<section id="nino-latestBlog" >
		<div class="container" >
			<!-- 			<h2 class="nino-sectionHeading"> -->
			<!-- 				<span class="nino-subHeading">最新消息</span> -->
			<!-- 			</h2> -->
			
			<div class="sectionContent" id='NewsPage'></div>
		</div>
	</section>


	<!--/#nino-latestBlog-->
	<!--footer-->


	<div w3-include-html="${pageContext.request.contextPath}/footer.jsp"></div>
	
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" />
	<script>
	var newslist;

// 	Ajax 將News資料送給畫面
		$(document)
				.ready(function() {
					$("body").append('<div class="modal fade bs-OneNews-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">'
			        		+'<div class="modal-dialog modal-lg" role="document">'
			        		+'<div class="modal-content" style="padding: 30px" id="oneNews">'
			        		+'</div></div></div>');
			        
					$loadingGIF = $('<div w3-include-html="${pageContext.request.contextPath}/loading.jsp"></div>').appendTo($('#NewsPage'));
							var xhr = new XMLHttpRequest();
							xhr.open("Get", "getNewsPage", true);
							xhr.send();
							xhr.onreadystatechange = function() {
								if (xhr.status == 200 && xhr.readyState == 4) {									
									newslist = JSON.parse(xhr.responseText);
									$(loadingGif).hide(500);
									for (var i = 0; i < newslist.length; i++) {
										var news = newslist[i];
										var $row;
										if (i % 3 == 0) {
											$row = $('<div class="row">')
													.appendTo($('#NewsPage'));
										}
										var $newscol = $(
												'<div class="col-md-4 col-sm-4 animated fadeInUp" id="newscol" style="margin-top: 30px">')
												.appendTo($row);
										var $article = $('<article class="article" data-toggle="modal" data-target=".bs-OneNews-modal-lg" date-newsId="'+ news.newsUid +'" style="cursor:pointer">').appendTo(
												$newscol);
										var $articleThumb = $(
												'<div class="articleThumb">')
												.appendTo($article);
										var $goodsImageSize = $(
												'<div class="newsImageSize">')
												.appendTo($articleThumb)
												.append("<img src='" + news.newsImg + "'>");
										var $divdate = $('<div class="date">')
												.appendTo($articleThumb)
												.append('<span class="text" style="font: bolder 20px 微軟正黑體">'
																+ news.insertMonth
																+ '</span>')
												.append('<span class="number">'
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
									var len = 80; // 文字>80變成"..."
								    $(".articleDesc").each(function(i){
								        if($(this).text().length>len){
// 								            $(this).attr("title",$(this).text());
								            var text=$(this).text().substring(0,len-1)+"...";
								            $(this).text(text);
								        }
								    });
								    var Tlen = 25; // 標題文字>25變成"..."
								    $(".articleTitle").each(function(i){
								        if($(this).text().length>Tlen){
// 								            $(this).attr("title",$(this).text());
								            var text=$(this).text().substring(0,Tlen-1)+"...";
								            $(this).text(text);
								        }
								    });
// 								    
// 								    <!-- 	dialog視窗.內容  -->
								    $( ".article" ).on( "click", function() {
										$("#oneNews").empty();
										var newsId = $(this).attr("date-newsId");
// 								        <!-- 	News資料庫連線  -->
								        var xhr_oneNews = new XMLHttpRequest();								        
								        xhr_oneNews.open("Post", "getNewsPage?newsUid="+newsId , true);
								        xhr_oneNews.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
								        xhr_oneNews.send();
								        xhr_oneNews.onreadystatechange = function() {
								        	
											if (xhr_oneNews.status == 200 && xhr_oneNews.readyState == 4) {
												var oneNews = JSON.parse(xhr_oneNews.responseText);
// 												console.log(oneNews);
												$(".article[date-newsId="+oneNews.newsUid+"]").children(".articleMeta").children("a:nth-child(1)").html('<i class="mdi mdi-eye nino-icon"></i>'+ oneNews.newsView);
											}}
								        for (var i = 0; i < newslist.length; i++) {
											var news = newslist[i];
											if (news.newsUid == newsId) {
												$( "#oneNews" ).append('<h1 style="font-weight: bold;">'+news.newsName+'</h1>');
											    $( "#oneNews" ).append('<p>'+news.insertDate+'</p>');
											    $( "#oneNews" ).append('<h4>'+news.newsArticle+'</h4>');
											    $( "#oneNews" ).append('<img width="100%" src="'+news.newsImg+'"/>');
											}
								        }
								        
								    });
								      
								}
							}
							
						});
		
		
		
		
	</script>
	<script type="text/javascript" src="../js/template.js"></script>
<!-- 	include -->
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>
<!-- 	dialog視窗  -->
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script type="text/javascript" src="../js/jquery.ba-outside-events.js"></script>

</body>
</html>
