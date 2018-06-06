<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="subTitle" value="Half of 73°C公益平台" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="java008.project@gmail.com">
	<title>${subTitle}</title>

	<!-- favicon -->
    <link rel="shortcut icon" href="images/ico/logo_haifof73c-01.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="css/template.css" />
</head>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header" >
		<div id="nino-headerInner">	
			<nav id="nino-navbar" class="navbar navbar-default" style="background-color:rgba(243,129,129,0.8);" >
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="">Half of 73°C</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
							<!-- 	<li class="active"><a href="#nino-header"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li> -->
								<li><a href="#nino-latestBlog">最新消息</a></li>
								<li><a href="foundation/foundation_main.jsp">關於基金會</a></li>
								<li><a href="#nino-ourTeam">捐款募資</a></li>
								<li><a href="#nino-ourTeam">志工相助</a></li>
								<li><a href="#nino-portfolio">愛的傳遞</a></li>
								<li><a href="#nino-whatWeDo">關於本站</a></li>		
								<c:if test = "${not empty memAccount}">					
									<li><a href="member/queryOneMembers_HO73.do">會員專區</a></li>
								</c:if>
								<c:if test = "${empty memAccount}">
									<li><a href="member/login">google登入</a></li>
								</c:if>
								<c:if test = "${not empty memAccount}">	
									<li><a href="member/logout">登出</a></li>
								</c:if>
							</ul>
						</div><!-- /.navbar-collapse -->
						
						<div class="nino-menuItem pull-right">							
							<ul class="nino-iconsGroup nav navbar-nav">
								<li><a href="supplyBox.jsp"><i class="mdi mdi-cart-outline nino-icon"></i></a></li>
								<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
							</ul>
						</div>
					</div>	
				</div><!-- /.container-fluid -->
			</nav>

			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
<!-- 						<i class="glyphicon glyphicon-heart"></i> -->
							<img src ="images/ico/logo_haifof73c-01.png" width="150px">
							<span class="nino-subHeading"><br>Half of 73°C</span>
							<br>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Sharing Love</span>
							<span class="nino-subHeadingn"><br>愛的溫度，是我能為你做的事情<br><br>點亮愛，傳遞笑顏的溫暖</span>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Be Together</span>
							<span class="nino-subHeadingn"><br>別讓他們的無助，成為彼此的遺憾<br><br>
							給予最溫暖的溫度</span>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
				</div>
				<!-- Indicators -->
				<ol class="carousel-indicators clearfix">
					<!-- <li data-target="#nino-slider" data-slide-to="0" class="active">
						<div class="inner">
							<span class="number">01</span> intro	
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="1">
						<div class="inner">
							<span class="number">02</span> work
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="2">
						<div class="inner">
							<span class="number">03</span> about
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="3">
						<div class="inner">
							<span class="number">04</span> contacts
						</div>
					</li> -->
				</ol>
			</section>
		</div>
	</header><!--/#header-->
	
     <section id="nino-latestBlog">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">最新消息</span>
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/283.png" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">助孩童遠離暴力威脅，平安長大‎</a></h3>
							<p class="articleDesc">
								邀請您透過公益捐款「終止兒童受暴」行動，一同挺身捍衛兒童平安成長的權利！<br><br>
							</p>

							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/272.png" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">小小益善 支持無國界醫生 </a></h3>
							<p class="articleDesc">
								約3萬5千名救援人員每年為超過80萬人接種麻疹疫苗，立即捐款，支持搶救生命！覆蓋近70個國家 · 數以萬計專業人士投身參與 · 服務超過45年 · 人道救援組織
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/273.png" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">捐款幫助他們 讓他們走向快樂‎</a></h3>
							<p class="articleDesc">
								用小錢幫助他們走向夢想，伊甸邀您加入公益行列，讓他們彩繪不一樣的人生，快點行動！小錢力量大，捐款做愛心 · 捐款送愛，照護偏鄉長輩 · 一塊捐伊甸，一塊做善事
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
							</div>
						</article>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/282.png" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">台灣公益資訊中心</a></h3>
							<p class="articleDesc">
								台灣公益資訊中心係喜瑪拉雅研究發展基金會為台灣非營利組織所建立的公益資訊交流平台，提供公益新聞、活動、人才招募...等訊息發佈，以強化公益團體的資訊 ...
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/296.png" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">Yahoo奇摩公益</a></h3>
							<p class="articleDesc">
								Yahoo奇摩公益提供所有捐款者一個安全、豐富及多元的捐款資訊平台，公益團體更容易地在此匯集社會善心資源，讓捐款更透明，捐款人更安心。
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/293.png" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">樂捐款- 樂公益</a></h3>
							<p class="articleDesc">
								樂公益（Lecoin 角落）立志為社會大眾提供最方便、最值得信賴、最有分享力量的公益橋樑，透過公益捐款為台灣貧窮弱勢的朋友與團體搭把手，助他們度過人生的 ...
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
							</div>
						</article>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/300.png" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">公益- 維基百科</a></h3>
							<p class="articleDesc">
								這是一個消歧義頁，羅列了有相同或相近的標題，但內容不同的條目。如果您是透過某條目的內部連結而轉到本頁，希望您能協助修正該處的內部連結，將它指向正確 ...
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/253.png" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">sed do eiusmod tempor</a></h3>
							<p class="articleDesc">
								Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/289.png" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">incididunt ut labore et dolore</a></h3>
							<p class="articleDesc">
								Elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><br>
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
							</div>
						</article>
					</div>
				</div>
			</div>
    	</div>
    	<!-- <section id="nino-services"> -->
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading-2">
			    <br><a href="news/news.jsp">了解更多</a>
			    </span>
			</h2>
		</div>
		<!-- </section> -->
    </section><!--/#nino-latestBlog-->
    <!-- Testimonial
    ================================================== -->
    <section class="nino-testimonial">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-comment-multiple-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-wechat nino-icon"></i>	
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-message-text-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
    	</div>
    </section><!--/#nino-testimonial-->
	<!-- Portfolio
    ================================================== -->
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">捐款募資／志工相助</span>
			</h2>
			<p class="nino-sectionDesc">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
			</p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="goods/queryAllGoods_HO73.do" style="font-size: 36px">我要捐物</a>
								</div>
								<img src="images/our-team/487227763.jpg" alt="">
							</div>
						</div>
<!-- 						<div class="info">
							<h4 class="name">Matthew Dix</h4>
							<span class="regency">Graphic Design</span>
						</div> -->
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="supply.html#nino-portfolio" style="font-size: 36px">我要捐款</a>
								</div>
								<img src="images/our-team/499808264.jpg" alt="">
							</div>
						</div>
<!-- 						<div class="info">
							<h4 class="name">Christopher Campbell</h4>
							<span class="regency">Branding/UX design</span>
						</div> -->
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="volunteer.html" style="font-size: 36px">我要當志工</a>
								</div>
								<img src="images/our-team/volunteer.jpg" alt="">
							</div>
						</div>
						<!-- <div class="info">
							<h4 class="name">Michael Fertig </h4>
							<span class="regency">Developer</span>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Testimonial
    ================================================== -->
    <section class="nino-testimonial bg-white">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="images/testimonial/churchill.jpg" alt="">
							</div>
							<div>
								<p class="quote">"We make a living by what we get. We make a life by what we give."</p>
								<span class="name">Winston S. Churchill</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="images/testimonial/mother_teresa.jpg" alt="">
							</div>
							<div>
								<p class="quote">"It's not how much we give but how much love we put into giving."</p>
								<span class="name">Mother Teresa</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="images/testimonial/brian_tracy.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Love only grows by sharing. You can only have more for yourself by giving it away to others."</p>
								<span class="name">Brian Tracy</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
    	</div>
    </section><!--/#nino-testimonial-->

    <!-- Happy Client
    ================================================== -->
    <section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">愛的傳遞</span>
			</h2>
			<p class="nino-sectionDesc">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
			</p>
		</div>
		<div class="sectionContent">
			<ul class="nino-portfolioItems">
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C 和可可鹼，由於多添加糖分，因此具有高能量值。由天然成分製作的巧克力對人類之外的許多動物有毒（例如: 狗），但對人類無毒、且其中微量的可可鹼是健康的反鎮靜成分。故食用有助提升精神，增強興奮等功效。可可含有苯乙胺，坊間流傳能使人有戀愛感覺的流言 。巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C 和可可鹼，由於多添加糖分，因此具有高能量值。由天然成分製作的巧克力對人類之外的許多動物有毒（例如: 狗），但對人類無毒、且其中微量的可可鹼是健康的反鎮靜成分。故食用有助提升精神，增強興奮等功效。可可含有苯乙胺，坊間流傳能使人有戀愛感覺的流言 。巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C 和可可鹼，由於多添加糖分，因此具有高能量值。由天然成分製作的巧克力對人類之外的許多動物有毒（例如: 狗），但對人類無毒、且其中微量的可可鹼是健康的反鎮靜成分。故食用有助提升精神，增強興奮等功效。可可含有苯乙胺，坊間流傳能使人有戀愛感覺的流言 。巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C" href="images/our-work/img-1.jpg">
						<img src="images/our-work/img-1.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-crown nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-2.jpg">
						<img src="images/our-work/img-2.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-cube-outline nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-3.jpg">
						<img src="images/our-work/img-3.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-desktop-mac nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-4.jpg">
						<img src="images/our-work/img-4.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-flower nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-5.jpg">
						<img src="images/our-work/img-5.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-gamepad-variant nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-6.jpg">
						<img src="images/our-work/img-6.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-gnome nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="查看更多" href="images/our-work/img-7.jpg">
						<img src="images/our-work/img-7.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-guitar-electric nino-icon"></i> -->
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</section><!--/#nino-portfolio-->

	<section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">關於本站</span>
			</h2>
			<p class="nino-sectionDesc">
				Half of 73°C是一個公益平台，我們希望透過網站及手機APP幫助到台灣的弱勢族群，
				也致力於使用戶有更方便且信任的互助管道。 
			</p>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<img src="images/what-we-do/img-1.jpg" alt="">
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="fas fa-lightbulb nino-icon"></i>
											發想起源
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="fas fa-hands-helping nino-icon"></i> 
											我們的理念
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="fas fa-flag-checkered nino-icon"></i> 
											未來展望
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->
    <footer id="footer">
        <div class="container">
        	<div class="row">
        		<div class="col-md-4">
        			<div class="colInfo">
	        			<div class="footerLogo">
	        				<a href="#" >Half of 73°C</a>	
	        			</div>
	        			<p>
	        				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	        			</p>
	        			<div class="nino-followUs">
	        				<div class="totalFollow"><span>15k</span> followers</div>
	        				<div class="socialNetwork">
	        					<span class="text">Follow Us: </span>
	        					<a href="" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-dribbble"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
	        				</div>
	        			</div>
	        			<form action="" class="nino-subscribeForm">
	        				<div class="input-group input-group-lg">
								<input type="email" class="form-control" placeholder="Your Email" required>
								<span class="input-group-btn">
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
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="images/our-blog/img-4.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="images/our-blog/img-5.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="images/our-blog/img-6.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
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
			<div class="nino-copyright">Copyright &copy; 2018 <a target="_blank" href="http://www.ninodezign.com/" title="Ninodezign.com - Top quality open source resources for web developer and web designer">halfof73.com</a>. All Rights Reserved. 
			<br>
<!-- 			<br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div> -->
        </div>
    </footer><!--/#footer-->

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	
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
	<script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
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