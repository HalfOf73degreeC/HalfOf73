<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<head>

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>會員專區</title>

<!-- favicon -->
<link rel="shortcut icon" href="../images/ico/like.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="../css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="../css/unslider.css" />
<link rel="stylesheet" type="text/css" href="../css/template.css" />

</head>

<body>
	<header id="nino-header">
	<div id="nino-headerInner">
		<nav id="nino-navbar" class="navbar navbar-default navbarColor"
			style="background-color:rgba(243,129,129,0.8);" role="navigation">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#nino-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Half Of 73&deg;C</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<!-- <div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#nino-header">Home <span class="sr-only">(current)</span></a></li>
								<li><a href="#nino-story">About</a></li>
								<li><a href="#nino-services">Service</a></li>
								<li><a href="#nino-ourTeam">Our Team</a></li>
								<li><a href="#nino-portfolio">Work</a></li>
								<li><a href="#nino-latestBlog">Blog</a></li>
							</ul>
						</div> -->
				<!-- /.navbar-collapse -->
				<ul class="nino-iconsGroup nav navbar-nav">
					<li><a href="#"><i class="mdi mdi-cart-outline nino-icon"></i></a></li>
					<li><a href="#" class="nino-search"><i
							class="mdi mdi-magnify nino-icon"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	</header>
	<!--/#header-->

	<CENTER>
		<!-- Header-->
		<!-- Story About Us
    ================================================== -->
		<form action="supplyBoxSend.html" method="post">
			<section>
			<div class="foundationList">
				<div class="container foundationTitle">台灣之心愛護動物協會</div>
				<div class="container supplyBox">
					<table class="table">
						<tr>
							<td></td>
							<td>捐贈募資名稱</td>
							<td>捐贈募資金額</td>
							<td>捐贈募資數量</td>
							<td>小計</td>
							<td>刪除</td>
						</tr>
						<tr>
							<td><img src="images/halfof73/goods_test_img.png"
								height="64px" width="64px"></td>
							<td>麥片</td>
							<td>$1,000</td>
							<td>10</td>
							<td>$10,000</td>
							<td><a href="#"><i class="fa fa-trash-o"
									style="color: #000; font-size: 32px"></i></a> <!-- <button type="button" class="goods-delete-body"></button> -->
						</tr>
						<tr>
							<td><img src="images/halfof73/goods_test_img.png"
								height="64px" width="64px"></td>
							<td>麥片</td>
							<td>$1,000</td>
							<td>10</td>
							<td>$10,000</td>
							<td><a href="#"><i class="fa fa-trash-o"
									style="color: #000; font-size: 32px"></i></a> <!-- <button type="button" class="goods-delete-body"></button> -->
						</tr>
						<tr>
							<td width="15%"></td>
							<td>捐贈募資小計</td>
							<td width="15%"></td>
							<td width="20%">10</td>
							<td>$100,000</td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="foundationList">
				<div class="container supplyBox">
					<table class="table">
						<tr>
							<td>捐贈物資基金會單位總數:3</td>
							<td>10</td>
							<td>$100,000</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="foundationList">
				<div class="container groupButton">
					<button type="submit" class="btn btn-warning">下一步:選擇寄送方式</button>
				</div>
			</div>
			</section>
		</form>

		<!-- Footer
    ================================================== -->
		<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="colInfo">
						<div class="footerLogo">
							<a href="#">Half of 73°C</a>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<div class="nino-followUs">
							<div class="totalFollow">
								<span>15k</span> followers
							</div>
							<div class="socialNetwork">
								<span class="text">Follow Us: </span> <a href=""
									class="nino-icon"><i class="mdi mdi-facebook"></i></a> <a
									href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a> <a
									href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-dribbble"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
							</div>
						</div>
						<form action="" class="nino-subscribeForm">
							<div class="input-group input-group-lg">
								<input type="email" class="form-control"
									placeholder="Your Email" required> <span
									class="input-group-btn">
									<button class="btn btn-success" type="submit">Subscribe</button>
								</span>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="colInfo">
						<h3 class="nino-colHeading">Blogs</h3>
						<ul class="listArticles">
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-4.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-5.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-6.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="colInfo">
						<h3 class="nino-colHeading">instagram</h3>
						<div class="instagramImages clearfix">
							<a href="#"><img src="images/instagram/img-1.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-2.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-3.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-4.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-5.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-6.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-7.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-8.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-9.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-3.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-4.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-5.jpg" alt=""></a>
						</div>
						<a href="#" class="morePhoto">View more photos</a>
					</div>
				</div>
			</div>
			<div class="nino-copyright">
				Copyright &copy; 2018 <a target="_blank"
					href="http://www.ninodezign.com/"
					title="Ninodezign.com - Top quality open source resources for web developer and web designer">halfof73.com</a>.
				All Rights Reserved. <br>
				<!-- 			<br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div> -->
			</div>
		</footer>
		<!--/#footer-->

		<!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
		<form action="" id="nino-searchForm">
			<input type="text" placeholder="Search..."
				class="form-control nino-searchInput"> <i
				class="mdi mdi-close nino-close"></i>
		</form>
		<!--/#nino-searchForm-->

		<!-- Scroll to top
    ================================================== -->
		<a href="#" id="nino-scrollToTop">Go to Top</a>

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

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- css3-mediaqueries.js for IE less than 9 -->
		<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
	</CENTER>
</body>
</html>