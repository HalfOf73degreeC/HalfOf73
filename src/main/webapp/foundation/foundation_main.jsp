<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>基金會 - Half Of 73°C</title>

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
<link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="../css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="../css/unslider.css" />
<link rel="stylesheet" type="text/css" href="../css/template.css" />
<link rel="stylesheet" type="text/css" href="../css/halfOf73.css" />
<link rel="stylesheet" href="WOW-master/css/libs/animate.css">

<!-- javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
<script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="../js/unslider-min.js"></script>
<script type="text/javascript" src="../js/template.js"></script>
<script src="WOW-master/dist/wow.min.js"></script>

</head>
<body>
		<header>
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="../logo.jsp"></div>
				<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right" w3-include-html="../navbar_right.jsp"></div>
			    	</div>
					<!-- /.navbar-collapse -->

			<!-- /.container-fluid -->
		</nav>
	</header>
	<!--header 結束，內容開始  -->
	<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->
	<section id="nino-latestBlog">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">基金會</span>
	<div w3-include-html="${pageContext.request.contextPath}/loading.jsp"></div>
			</h2>
			<div class="sectionContent" id='somedivS'></div>
		</div>
	</section>
	<div w3-include-html="../footer.jsp"></div>
	<!--/#nino-latestBlog-->
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
    <script>
	$(document).ready(function() {
		var xhr = new XMLHttpRequest();
		xhr.open("Get", "getFoundationPage", true);
		xhr.send();
		xhr.onreadystatechange = 
		function() {
			if (xhr.status == 200 && xhr.readyState == 4) {
				var str = "<table border='1'>";
				var arr = JSON.parse(xhr.responseText);
				$(loadingGif).hide(500);
				for (var i = 0; i < arr.length; i++) {
					var foundation = arr[i];
				    var $row;
					if(i % 4==0){
						$row = $('<div class="row">').appendTo($('#somedivS'));
					}
				    var $divcol = $('<div class="col-md-3 col-sm-3">').appendTo($row);
				    	var $article = $('<article>').appendTo($divcol);
				    		var $articleThumb = $('<div class="articleThumb">').appendTo($article);
				    			var $wow = $('<div class="focus wow bounceIn">').appendTo($articleThumb);
				    				var $image = $("<img style='width: 225px; border-radius:5%;' src='" + foundation.funImage + "'>").appendTo($wow);

				    		var $line = $('<div style="border-bottom: 1px solid #e5e5e5;">').appendTo($article);
				    			var $articleTitle = $('<h3 class="articleTitle">').appendTo($line);   
				    				var $href = $('<a href="eachFoundationPage.do?funIdcard=' + foundation.funIdcard + '">').appendTo($articleTitle)  
				    				.html(foundation.funName);
				    		var $articleDesc = $('<p class="articleDesc">').appendTo($article)
				    		.html(foundation.funIntent);
				    		
				}
			}
		}
	});

	
	
</script>
<script src="https://www.w3schools.com/lib/w3.js"></script>
			<script>
				w3.includeHTML();
			</script>
</body>
</html>
