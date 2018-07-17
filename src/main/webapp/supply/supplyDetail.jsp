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
<title>愛心商品-Half Of 73°C</title>

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

</head>

<body>
	<header id="nino-header">
	<div id="nino-headerInner">
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
						<li><a href="queryAllGoods_HO73.do">回到商品總攬</a></li>
						<li class="active"><a href="#nino-story">商品基本資料</a></li>
						<li><a href="#nino-ourTeam">商品詳細資料</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->

				<div class="nino-menuItem pull-right"
					w3-include-html="../navbar_right.jsp"></div>
			</div>
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	</header>

	<!-- Header-->
	<!-- Story About Us
    ================================================== -->
	<c:set var="goodsBean" value="${goodsBean}"></c:set>
	<form action="BuyGoods.do" method="post">
		<section id="nino-whatWeDo">
		<div class="container">
			<div class="card">
				<div class="row">
					<aside class="col-sm-5 border-right"> <article>
					<div>
						<div class="goodsDetailImageSize">
							<img src="showPicture.do?goodsUid=${goodsBean.goodsUid}">
						</div>
					</div>
					<!-- slider-product.// --> </article> <!-- gallery-wrap .end// --> </aside>
					<aside class="col-sm-5"> <article class="card-body p-5">
					<h3 class="mb-3">${goodsBean.goodsName}</h3>

					<p>
						<span class="h3 text-warning"> <span>$</span> <span>${goodsBean.goodsPrice}</span>
						</span> <span>/${goodsBean.goodsSize}</span>
					</p>
					<!-- price-detail-wrap .// -->
					<dl>
						<dt></dt>
						<dd>
							<p>${goodsBean.goodsIntro}</p>
						</dd>
					</dl>
					<!-- item-property-hor .// -->
					<dl>
						<dt>付款方式</dt>
						<dd>
							<span class="form-check-label">信用卡</span> <span
								class="form-check-label">/</span> <span class="form-check-label">ATM</span>
						</dd>
					</dl>
					<!-- item-property-hor .// -->
					<dl>
						<dt>配送方式</dt>
						<dd>
							<span class="form-check-label">宅配</span> <span
								class="form-check-label">/</span> <span class="form-check-label">7-11超商</span>
						</dd>
					</dl>
					<!-- item-property-hor .// -->

					<hr>
					<div class="row">
						<div class="col-sm-5">
							<dl>
								<dt>數量:</dt>
								<dd>
									<select name='qty' class="form-control form-control-sm"
										style="width: 70px;">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
									</select>
								</dd>
							</dl>
							<!-- item-property .// -->
						</div>
					</div>
					<Input type='hidden' name='goodsName'
						value='${goodsBean.goodsName}'>
					<P />
					<Input type='hidden' name='funUid'
						value='${goodsBean.foundationBean_HO73.funIdcard}'>
					<P />
					<Input type='hidden' name='goodsUid' value='${goodsBean.goodsUid}'>
					<P />
					<Input type='hidden' name='goodsPrice'
						value='${goodsBean.goodsPrice}'>
					<P />
					<Input type='hidden' name='goodsImg' value='${goodsBean.goodsImg}'>
					<P />
					<Input type='hidden' name='pageNo' value='${param.pageNo}'>
					<P />
<!-- 					<a href="#" class="btn btn-lg btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;立即購買&nbsp;&nbsp;&nbsp;&nbsp;</a> -->
					<!-- <a href="#" class="btn btn-lg btn-primary"> <i class="fas fa-shopping-cart"></i>加入購物車-->
					<Input class="btn btn-lg btn-primary" type='submit' value='加入購物車'>
					</a> </article> <!-- card-body.// --> </aside>
					<!-- col.// -->
				</div>
				<!-- row.// -->
			</div>
			<!-- card.// -->
		</div>
		<!--container.//--> <!--/#nino-whatWeDo--> </section>
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
			exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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
		<div w3-include-html="../footer.jsp"></div>
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
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- css3-mediaqueries.js for IE less than 9 -->
	<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
</html>