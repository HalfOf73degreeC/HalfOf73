<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<head>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>會員專區-基金會申請</title>

<!-- favicon -->
<link rel="shortcut icon" href="images/ico/like.png">
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

</head>

<body>
	<!-- Header-->
	<!-- Story About Us
    ================================================== -->
	<header>
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html">Half of 73°C - 基金會資訊</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="nino-menuItem pull-right">
					<!-- /.navbar-collapse -->
					<ul class="nino-iconsGroup nav navbar-nav">
						<li><a href="supplyBox.html"><i
								class="mdi mdi-cart-outline nino-icon"></i></a></li>
						<li><a href="#" class="nino-search"><i
								class="mdi mdi-magnify nino-icon"></i></a></li>
							<c:set var="fun" value="${foundationBean}"></c:set>
						<c:if test = "${not empty fun.funAccount}">					
							<li><a href="" style="padding: 9px 5px 5px;">
									<img src="${fun.funImage}"
									style="border-radius:50%; max-width: 30px; height: auto;">
								</a>
							</li>
						</c:if>
						<c:if test = "${empty fun.funAccount}">
									<li><a href=""></a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- /.container-fluid -->
		</nav>
	</header>
	<!--/#header-->
	<!-- Testimonial
    ================================================== -->
   <section id="nino-latestBlog">
   <c:set var="fun" value="${foundationBean}"></c:set>
	<div class="content_nosplit_left">
		<article>
			<h2>${fun.funName}</h2>
			<div class="article_info">
<!-- 				<div class="article_share">分享 -->
<!-- 					<a href="http://www.facebook.com/sharer.php?u=www.npo.org.tw/npolist_detail.asp?id=6731&amp;t=" target="_blank"> -->
<!-- 						<img src="image/common_share_fb.gif" alt="分享到Facebook" width="16" height="16" /> -->
<!-- 					</a> -->
<!-- 					<a href="http://www.plurk.com/?qualifier=shares&status=www.npo.org.tw/npolist_detail.asp?id=6731" target="_blank"> -->
<!-- 						<img src="image/common_share_plurk.gif" alt="分享到Plurk" width="16" height="16" /> -->
<!-- 					</a> -->
<!-- 					<g:plusone size="small" count="false"></g:plusone> -->
<!-- 				</div>  -->
<!-- 				<div class="col-md-6"> -->
<!-- 					<div class="text-center"> -->
<!-- 						<a href="" style="padding: 9px 5px 5px;"> -->
<%-- 									<img src="${fun.funImage}" --%>
<!-- 									style="border-radius:50%; max-width: 150px; height: auto;"> -->
<!-- 								</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="article_author">
<!-- 					<a href="#">臺北榮民總醫院 社會工作室</a> -->
				</div>
				<div class="article_date">
				<h3 align="right">更新日期: ${fun.insertDate}</h3>
				</div>
		    <div class="article_fb">
	
<!-- 					<iframe src="http://www.facebook.com/widgets/like.php?href=http://www.npo.org.tw/npolist_detail.asp?id=6731" scrolling="no" -->
<!-- 					 frameborder="0" style="border:none; width:450px; height:25px"></iframe> -->
				</div>
			</div>
			
				<h3>聯絡資訊
				</h3>
				<table border="0" cellspacing="1" cellpadding="0" width="100%" >
					<tr>
						<th width="12%">機構名稱</th>
						<td width="88%">${fun.funName}</td>
					</tr>
					<tr>
						<th>愛心碼</th>
						<td>${fun.funIdcard}</td>
					</tr>
					<tr>
						<th>執行長</th>
						<td>${fun.funCeo}</td>
					</tr>
					<tr>
						<th>連絡人</th>
						<td>${fun.funContact}</td>
					</tr>
					<tr>
						<th>電話</th>
						<td>${fun.funTel}</td>
					</tr>
					<tr>
						<th>傳真</th>
						<td>${fun.funFax}</td>
					</tr>
	
					<tr>
						<th>網址</th>
						<td>
							<A href="${fun.funDomain}" target="_blank">${fun.funDomain}</A>
						</td>
					</tr>
					<tr>
						<th>電子郵件</th>
						<td>
							<A href="${fun.funEmail}">${fun.funEmail}</A>
						</td>
					</tr>
					<tr>
						<th>地址</th>
						<td>
							${fun.funAddress}
						</td>
					</tr>
				</table>
					<div class="mapWrap">
					<iframe width="600" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com.tw/maps?hl=zh-TW&amp;q=%E8%87%BA%E5%8C%97%E5%B8%82%E7%9F%B3%E7%89%8C%E8%B7%AF%E4%BA%8C%E6%AE%B5201%E8%99%9F&amp;ie=UTF8&amp;hq=&amp;hnear=%E8%87%BA%E5%8C%97%E5%B8%82%E7%9F%B3%E7%89%8C%E8%B7%AF%E4%BA%8C%E6%AE%B5201%E8%99%9F&amp;gl=tw&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
				    </div>
				<h3>基本資料 </h3>
				<table border="0" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<th width="12%">創辦人</th>
						<td width="88%">${fun.funFounder}</td>
					</tr>
					<tr>
						<th>成立日期</th>
						<td>${fun.funCreateDate}</td>
					</tr>
					<tr>
						<th>許可機關</th>
						<td>${fun.funAllowOrg}</td>
					</tr>
	
					<tr>
						<th>成立主旨</th>
						<td>
							${fun.funIntent}
						</td>
					</tr>
	
					<tr>
						<th>工作重點</th>
						<td>
							${fun.funArticle}
						</td>
					</tr>
	
					<tr>
						<th>服務區域</th>
						<td>
							${fun.funArea.replaceAll(","," ")}
						</td>
					</tr>
	
					<tr>
						<th>服務對象</th>
						<td>
							${fun.funServiceUser.replaceAll(","," ")}
						</td>
					</tr>
	
					<tr>
						<th>服務項目</th>
						<td>
						    ${fun.funService.replaceAll(","," ")}
						</td>
					</tr>
	
				</table>
			</section>
		</article>
	</div>
</section>
		<!--/#nino-whatWeDo-->
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
										href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
									<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
									<a href="" class="nino-icon"><i
										class="mdi mdi-youtube-play"></i></a> <a href="" class="nino-icon"><i
										class="mdi mdi-dribbble"></i></a> <a href="" class="nino-icon"><i
										class="mdi mdi-tumblr"></i></a>
								</div>
							</div>
							<form action="" class="nino-subscribeForm">
								<div class="input-group input-group-lg">
									<input type="email" class="form-control"
										placeholder="Your Email"> <span
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

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- css3-mediaqueries.js for IE less than 9 -->
		<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</body>
</html>