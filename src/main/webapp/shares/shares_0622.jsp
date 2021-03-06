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
		<div class="container" >
			<!-- 			<h2 class="nino-sectionHeading"> -->
			<!-- 				<span class="nino-subHeading">最新消息</span> -->
			<!-- 			</h2> -->
			<div w3-include-html="${pageContext.request.contextPath}/loading.jsp"></div>
			<div class="sectionContent" id='somedivS'></div>
		</div>
	</section>


	<!--/#nino-latestBlog-->
	<!--footer-->


	<div w3-include-html="${pageContext.request.contextPath}/footer.jsp"></div>
	<script>
	var shareslist;
		$(document)
				.ready(
						function() {
							var xhr = new XMLHttpRequest();
							xhr.open("Get", "getLoveSharesPage", true);
							xhr.send();
							xhr.onreadystatechange = function() {
								if (xhr.status == 200 && xhr.readyState == 4) {
									shareslist = JSON.parse(xhr.responseText);
									$(loadingGif).hide(500);
									for (var i = 0; i < shareslist.length; i++) {
										var shares = shareslist[i];
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
												.append("<img style='width: 300px;' src='" + shares.sharesImg + "'>");
										var $divdate = $('<div class="date">')
												.appendTo($articleThumb)
												.append('<span class="text" style="font: bolder 20px 微軟正黑體">'
																+ shares.insertMonth
																+ '</span>')
												.append('<span class="number">'
																+ shares.insertDay
																+ '</span>');
										var $sharesTitle = $(
												'<h3 class="articleTitle" date-sharesId="'+ i +'" style="cursor:pointer">')
												.appendTo($article).html(
														shares.sharesName);
										var $sharesArticle = $(
												'<p class="articleDesc">')
												.appendTo($article).html(
														shares.sharesArticle);
										var $articleMeta = $(
												'<div class="articleMeta">')
												.appendTo($article).append(
														'<a href="#"><i class="mdi mdi-eye nino-icon"></i>'
																+ shares.sharesView
																+ '</a>')
												.append(
														'<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
																+ shares.sharesUid
																+ '</a>')
																
										$("h3#articleTitle").click(function (){
											console.log('foo');
											var shares = shareslist[i];
											$("#nino-whatWeDo").empty();
											var $container = $('<div class="container">')
											.appendTo($nino-whatWeDo);
											var sharestitle = $('<h2 class="nino-sectionHeading" style="text-align:left">'
													+'<span class="nino-subHeading" style="text-align:left"><h1>'
													+shares.sharesName+'<h1></span>	'
													+'</h2>').appendTo(container);
											var sharesinsterday = $('<div class="articleMeta" style="text-align:right;">'
													+'<a style="text-align:right; color:gray;">'
													+ shares.insertMonth +shares.insertDay + '日</a>'
													+'</div>').appendTo(container);
											var sharesviews = $('<div id="nino-latestBlog" style="text-align:left">'
													+'<article>'
													+'<div class="articleMeta">'
													+'<a><i class="mdi mdi-eye nino-icon"></i>'
													+ shares.sharesView + '</a>'
													+'<a><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
													+ shares.sharesUid + '15</a>'
													+'</div><br></article></div>').appendTo(container);
											var $sectionContent = $('<div class="sectionContent">').appendTo(container);
											var $row =  $('<div class="row">').appendTo(sectionContent);
											var sharesimage = $('<div class="col-md-6">'
													+'<div class="text-center">'
													+'<img src="'+shares.sharesImg+'">'
													+ shares.sharesImgIntro
													+'<a style="color:gray;">'
													+'</a></div></div>').appendTo(row);
											var sharesArticle = $('<div class="col-md-6">'
													+'<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">'
													+'<p>'+ shares.sharesArticle +'</p></div></div>').appendTo(row);
											
											});	
																
									}									
									var len = 50; // 文字>50變成"..."
								    $(".articleDesc").each(function(i){
								        if($(this).text().length>len){
								            $(this).attr("title",$(this).text());
								            var text=$(this).text().substring(0,len-1)+"...";
								            $(this).text(text);
								        }
								    });
// 								    <!-- 	dialog視窗  -->
								    $( "#dialog" ).dialog({
								    	width: ($(document).width())*0.8,
								        autoOpen: false,
								        modal: true,
								     	draggable: false,
								        resizable: false,
								        show: {
								          effect: "fade",
								          duration: 500
								        },
								        hide: {
								          effect: "fade",
								          duration: 500
								        }
								    });
// 								    
// 								    <!-- 	dialog視窗.內容  -->
								    $( ".articleTitle" ).on( "click", function() {
								        $( "#dialog" ).dialog( "open" );
								        var sharesId = $(this).attr("date-sharesId");
// 								        alert(sharesId);
								        var shares = shareslist[sharesId];
								        $( "#dialog" ).children("h1").html(shares.sharesName);
								        $( "#dialog" ).children("p").html(shares.sharesArticle);
								        $( "#dialog" ).children("img").attr("src",shares.sharesImg);
								        <!-- 	dialog視窗.關閉  -->
						
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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script type="text/javascript" src="../js/jquery.ba-outside-events.js"></script>
	<div id="dialog" title="Basic dialog">
		<h1>新聞標題</h1>
		<p>新聞內容</p>
		<img src="新聞圖片"/>
	</div>
</body>
</html>
