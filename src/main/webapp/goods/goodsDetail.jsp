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
<link rel="shortcut icon" href="images/ico/like.png">
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
	<header id="nino-story"> <nav id="nino-navbar"
		class="navbar navbar-default"
		style="background-color:rgba(243,129,129,0.8);">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#nino-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Half Of 73°C - 愛心商品</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="nino-menuItem pull-right">
			<div class="collapse navbar-collapse pull-left"
				id="nino-navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="supply.html">回到商品總攬</a></li>
					<li class="active"><a href="#nino-story">商品基本資料</a></li>
					<li><a href="#nino-ourTeam">商品詳細資料</a></li>
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
	<!-- /.container-fluid --> </nav> </header>
	<!--/#header-->

	<CENTER>
		<!-- Header-->
		<!-- Story About Us
    ================================================== -->
    <c:set var="goodsBean" value="${goodsBean}"></c:set>
		<form action="supplyBox.html" method="post">
			<section id="nino-whatWeDo">
			<div class="container">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">${goodsBean.goodsName}</span>					‎
				</h2>
				<br>
				<div class="sectionContent">
					<div class="row">
						<div class="col-md-6">
							<div class="text-center" style="height: 380">
								<img src="http://imgs.niusnews.com/upload/imgs/default/16JanC/0106micarina/2.560.PNG">
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon"></i>商品說明
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
											<label>需求量: 1000</label><br> <label>規格</label><br>
											<label>物資狀態:全新</label><br> <label>募集時間:2018/05/04
												~ 募完為止</label><br>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseTwo"
												aria-expanded="false" aria-controls="collapseTwo"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-user-alt nino-icon"></i>xxxxxxx基金會聯絡方式
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body">
											<label>聯絡人:王大明</label><br> <label>聯絡電話:02-22222222</label><br>
											<label>地址:台北市新生南路一段97巷</label><br>
										</div>
									</div>
								</div>
								<span class="input-group-btn" align="right"
									style="padding: 0px 0px;">
									<button type="submit" class="btn btn-danger addCart" style="width: 100px;z-index: 1; margin:10px;">加入購物車</button>
									<button type="submit" class="btn btn-danger addCart" style="width: 100px;z-index: 1; margin:10px;">結帳</button>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
			<!--/#nino-whatWeDo-->
		</form>

		<!-- Our Team
    ================================================== -->
		<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">需求說明</span>
			</h2>
			<p class="nino-sectionDesc">Lorem ipsum dolor sit amet,
				consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
				labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat.</p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="images/our-team/img-1.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Matthew Dix</h4>
							<span class="regency">Graphic Design</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="images/our-team/img-2.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Christopher Campbell</h4>
							<span class="regency">Branding/UX design</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="images/our-team/img-3.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Michael Fertig</h4>
							<span class="regency">Developer</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--/#nino-ourTeam-->

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
		<script type="text/javascript"
			src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
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