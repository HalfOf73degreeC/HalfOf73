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
    <link rel="shortcut icon" href="images/ico/like.png">
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
<c:set var="mem" value="${memberBean}"></c:set>
	<!-- Header
    ================================================== -->
	<header id="nino-header" >
		<div id="nino-headerInner">	
			<nav id="nino-navbar" class="navbar navbar-default" style="background-color:rgba(243,129,129,0.8);" >
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="logo.jsp"></div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
							<!-- 	<li class="active"><a href="#nino-header"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li> -->
								<li><a href="#nino-latestBlog">最新消息</a></li>
								<li><a href="foundation/foundation_main.jsp">基金會</a></li>
								<li><a href="#nino-ourTeam">捐款募資</a></li>
								<li><a href="#nino-portfolio">愛的傳遞</a></li>
								<li><a href="#nino-whatWeDo">關於本站</a></li>		
<%-- 								<c:if test = "${not empty memAccount}">					 --%>
<!-- 									<li><a href="member/queryOneMembers_HO73.do">會員專區</a></li> -->
<%-- 								</c:if> --%>
<%-- 								<c:if test = "${empty memAccount}"> --%>
<!-- 									<li><a href="member/login">google登入</a></li> -->
<%-- 								</c:if> --%>
<%-- 								<c:if test = "${not empty memAccount}">	 --%>
<!-- 									<li><a href="member/logout">登出</a></li> -->
<%-- 								</c:if> --%>
							</ul>
						</div><!-- /.navbar-collapse -->
						
						<div class="nino-menuItem pull-right" w3-include-html="navbar_right.jsp"></div>
					</div>	
				</div><!-- /.container-fluid -->
			</nav>
	
			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
<!-- 						<i class="glyphicon glyphicon-heart"></i> -->
							<img src ="images/ico/102.png" width="350px">
<!-- 							<span class="nino-subHeading"><br>Half of 73°C</span> -->
							<br>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item" style="margin-top:70px;">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Sharing Love</span>
							<span class="nino-subHeadingn"><br>愛的溫度，是我能為你做的事情<br><br>
							<br>點亮愛，傳遞笑顏的溫暖</span>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item" style="margin-top:70px;">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Be Together</span>
							<span class="nino-subHeadingn"><br>別讓他們的無助<br><br>
							<br>成為你我之間的遺憾</span>
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
				<span class="nino-subHeading" style="font-size: 30px">最新消息</span>
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="./images/halfof73/kid.jpg" alt=""></a>
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
								<a href="#"><img src="./images/halfof73/doctor.jpg" alt=""></a>
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
								<a href="#"><img src="./images/halfof73/donateLove.jpg" alt=""></a>
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
								<a href="#"><img src="./images/halfof73/countryKids.jpg" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">偏鄉促進會</a></h3>
							<p class="articleDesc">
								讓我們一同協助偏鄉地區的小朋友，給予他們更好的生活品質與教育環境，擁有更良好的學習資源
								，需要你我一起努力！...
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
								<a href="#"><img src="./images/halfof73/sameLove.jpg" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">享愛人權基金會</a></h3>
							<p class="articleDesc">
								愛，沒有分別......讓我們一同放下成見，為弱勢族群發聲。也許每個人的力量是渺小的，但是因為有您，所以我們就有力量繼續努力！
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
								<a href="#"><img src="./images/halfof73/woman.jpg" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">婦孺保育協會</a></h3>
							<p class="articleDesc">
								關懷婦孺，你我有責。請正視社會冷暴力的問題，讓我們一同站出來，彼此陪伴度過難關......
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
								<a href="#"><img src="./images/halfof73/together.jpg" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">高齡化社會福利聯盟</a></h3>
							<p class="articleDesc">
								老人安養問題日漸嚴重，懇請支持年長者社會福利制度，讓我們一起把愛傳出去....
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
								<a href="#"><img src="./images/halfof73/pets.php" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">流浪動物之家</a></h3>
							<p class="articleDesc">
								沒有購買，就沒有棄養。以領養代替購買杜絕浪浪來源，以認養代替安樂死......<br><br>
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
								<a href="#"><img src="./images/halfof73/earthquake.jpg" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">震災援助基金會</a></h3>
							<p class="articleDesc">
								天佑花蓮！為花蓮的同胞們盡一份心力！您的微光將會是他們的希望。<br><br>
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
								<p class="quote">"付出比收穫更快樂，給予比接納更心安！關心別人，善待自己！"</p>
								<span class="name">維格斯 ‧ 波頓</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-wechat nino-icon"></i>	
							</div>
							<div>
								<p class="quote">"沒有目標的人猶如沒有舵的船 – 流浪兒、微不足道、什麼都不是。設定人生的目標，並在擁有它後，把上帝給你的精神及力氣投入工作中。"</p>
								<span class="name">湯瑪斯 ‧ 卡萊爾</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-message-text-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"幸福是人類最後的目的和至善的總和，它賦予人類生命的真正的意義。"</p>
								<span class="name">耶羅地 ‧ 席德</span>
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
				<span class="nino-subHeading" style="font-size: 30px">捐款募資／志工相助</span>
			</h2>
			<p class="nino-sectionDesc" style="font-size: 25px">
				我們都會有不需要的東西，以及需要被幫助的地方。<br>
				用你的不需要能成就他人的需要，讓他人的幫助轉化成為你的助力。<br>
				讓我們來創造一個良性循環=)
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
				<span class="nino-subHeading" style="font-size: 30px">愛的傳遞</span>
			</h2>
			<p class="nino-sectionDesc" style="font-size: 25px">
				這些是您幫助過的人們，所能回饋給您的一小部分。
				<br>我們希望這樣感恩的心情，可以直接地傳達到您心中 !
			</p>
		</div>
		<div class="sectionContent">
			<ul class="nino-portfolioItems">
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="這是來自蘭嶼達悟族小朋友最真摯的笑容<br>當我們苦於沒有學習環境時，謝謝你們的支持" href="images/halfof73/Lanyu.jpg">
						<img src="images/halfof73/Lanyu.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-crown nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>達悟族的感謝</h4>
								<span class="desc" style='font-size:15px;'>謝謝你們！讓我們擁有更好的學習環境！</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="杜拜的一隅，雖然看起來很慘<br>但實際上過得比你們台灣人還爽" href="images/halfof73/Dubai.jpg">
						<img src="images/halfof73/Dubai.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-cube-outline nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>杜拜貧窮的縮影</h4>
								<span class="desc" style='font-size:15px;'>雖然比你們還有錢，但還是謝謝你們的捐款</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="高齡社會已是台灣不可忽視的議題。將心比心，這也是往後你我都必須面臨的危機。讓孤獨感不再蔓延，只需要花一點時間的陪伴，就可以讓我們一起感受到溫暖。" href="images/halfof73/oldman.jpeg">
						<img src="images/halfof73/oldman.jpeg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-desktop-mac nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>寂寞老人的獨白</h4>
								<span class="desc" style='font-size:15px;'>你們的陪伴，比起六萬塊還實在。謝謝你們</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="流浪動物的平均存活年限僅有二至三年，希望你我一同伸出援手<br>幫助他們找到一個溫暖的家" href="images/halfof73/cat.jpg">
						<img src="images/halfof73/cat.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-flower nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>浪浪需要一個家</h4>
								<span class="desc" style='font-size:15px;'>謝謝你們捐贈的貓狗糧食！謝謝你們願意伸出援手！</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="有您的支持，煎熬的日子也會輕鬆一點吧！<br>謝謝您的陪伴，病痛的苦楚因為有了你們而輕減了" href="images/halfof73/cancer.jpg">
						<img src="images/halfof73/cancer.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-gamepad-variant nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>癌症基金會感謝您</h4>
								<span class="desc" style='font-size:15px;'>不要讓病痛，成為你我之間的遺憾</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="在花蓮，每一分鐘就有一個家庭流離失所。謝謝你們關懷花蓮災後重建的工程項目<br>你的關注可以督促花蓮縣政府的做事態度！" href="images/halfof73/rock.jpg">
						<img src="images/halfof73/rock.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-gnome nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>花蓮風災援助感謝</h4>
								<span class="desc" style='font-size:15px;'>謝謝每一位曾幫助我們的你！讓我們不至於流落街頭！</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="家庭暴力下成長的孩子，更需要溫暖的愛。<br>不論是捐款或是課餘時光的陪伴，都由衷感謝你們" href="images/halfof73/child.jpg">
						<img src="images/halfof73/child.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-guitar-electric nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>孩子的心願</h4>
								<span class="desc" style='font-size:15px;'>謝謝你們的捐款，讓孩子們有更好的未來</span>
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
				<span class="nino-subHeading" style="font-size: 30px">關於本站</span>
			</h2>
			<p class="nino-sectionDesc" style="font-size: 25px">
				Half of 73°C是一個公益平台，我們希望透過網站及手機APP幫助到台灣的弱勢族群，
				也致力於使用戶有更方便且信任的互助管道。 
			</p>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<img src="images/halfof73/hope.jpg" alt="">
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
										　　有鑑於2018年2月6號的花蓮震災發生後，我們想貢獻一份微薄的心力卻苦於沒有簡單迅速地管道。
										再者亦發生花蓮縣長傅崐萁濫用善款補助業者的情形，這讓我們意識到建立一個方便使用、而且金流明細公開的平台
										是值得我們去努力的。
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
											　　我們希望能夠實現當每一個人，願意為了他人付出時能有一個簡易使用的管道，而且不必擔心自己所貢獻的
											一份心意是否有確實傳達。<br>　　大文豪莎士比亞曾寫到過：慈悲不是出於勉强，一樣從天上降下塵世；它不但給幸福於受施之人，
											也同樣給幸福於施與的人。我們想要回應每一位願意付出之人的赤誠心意，
											將過程與事後追蹤簡單化，讓這樣的心意不會在前置繁雜事務中消磨殆盡。

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
										　　我們一直致力於提供所有使用者良好的捐募平台，未來希望能讓更多地基金會也能一同參與。
										我們也會不斷提升使用的簡便度和針對所有有需求、不論是需要施予他人或受施於他人的使用者，
										更貼近生活所需地去協助大家。
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->
 	<!--footer-->

	
 	<div w3-include-html="footer.html"></div>
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
</html>