
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
	<!-- icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
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


	<script type="text/javascript" src="js/jquery.min.js"></script>	
</head>
<body data-target="#nino-navbar" data-spy="scroll">
<c:set var="mem" value="${memberBean}"></c:set>
	<!-- Header
    ================================================== -->
	<header id="nino-header" >
		<div id="nino-headerInner" style="padding-bottom: 115px;">	
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
				<div class="carousel-inner" role="listbox" style="margin-top:70px;">
					<div class="item active">
						<h2 class="nino-sectionHeading">
<!-- 						<i class="glyphicon glyphicon-heart"></i> -->
							<img src ="images/ico/102.png" width="350px">
<!-- 							<span class="nino-subHeading"><br>Half of 73°C</span> -->
							<br>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item" style="margin-top:0px;">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Sharing Love</span>
							<span class="nino-subHeadingnn"><br><br>愛的溫度，是我能為你做的事情<br>
							<br><br>點亮盼望，傳遞愛</span>
						</h2>
						<!-- <a href="#" class="nino-btn">Learn more</a> -->
					</div>
					<div class="item" style="margin-top:0px;">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Be Together</span>
							<span class="nino-subHeadingnn"><br><br>別讓他們的無助，成為彼此的遺憾<br>
							<br><br>你的微光，將是我們的希望</span>
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
			<div class="sectionContent" id='NewsPage' date-newsMuch="3" data-contextPath="${pageContext.request.contextPath}"></div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/news.js"></script>
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
    	<div class="container" >
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

	<!-- Portfolio
    ================================================== -->
	<section id="nino-ourTeam">
		<c:choose>
		   <c:when test="${mem.memType == '2'}">
		     <div w3-include-html="${pageContext.request.contextPath}/funMemberIndex.jsp"></div>
		   </c:when>
		   <c:otherwise>
		   	 <div w3-include-html="${pageContext.request.contextPath}/visitorIndex.jsp"></div>
		   </c:otherwise>
		</c:choose>
	</section>
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
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="這是來自蘭嶼達悟族小朋友最真摯的笑容，當我們苦於沒有學習環境時，謝謝你們的支持" href="images/halfof73/Lanyu.jpg">
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
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="聯合國指出: 全球每年有超過13噸的食物遭到浪費，雖然普羅大眾都過著得以溫飽的生活，但實際上仍然痛苦的人還很多。只要減少1/4的食物浪費，便能讓全球的人口都妮吃飽。" href="images/halfof73/Dubai.jpg">
						<img src="images/halfof73/Dubai.jpg" />
						<div class="overlay">
							<div class="content">
								<!-- <i class="mdi mdi-cube-outline nino-icon"></i> -->
								<h4 class="title" style='font-size:25px;'>貧窮的縮影</h4>
								<span class="desc" style='font-size:15px;'>城市內的一隅，需要幫助的人不曾消失</span>
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
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="流浪動物的平均存活年限僅有二至三年，希望你我一同伸出援手，幫助他們找到一個溫暖的家" href="images/halfof73/cat.jpg">
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
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="有您的支持，煎熬的日子也會輕鬆一點吧！，謝謝您的陪伴，病痛的苦楚因為有了你們而輕減了" href="images/halfof73/cancer.jpg">
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
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="在花蓮，每一分鐘就有一個家庭流離失所。謝謝你們關懷花蓮災後重建的工程項目，你的關注可以督促花蓮縣政府的做事態度！" href="images/halfof73/rock.jpg">
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
				<li id="toShare" class="item">
<!-- 					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="" href="shares/shares.jsp" OnClick="window.open('shares/shares.jsp','_self')"> -->
						<a href="shares/shares.jsp">
						<img src="images/halfof73/child.jpg" />
<!-- 						<div class="overlay"> -->
							<div class="content">
								<!-- <i class="mdi mdi-guitar-electric nino-icon"></i> -->
								<h4 class="title" style='font-size:25px; text-align:center;'>了解更多</h4>
								<span class="desc" style='font-size:15px; margin-left:12%; color:#fff;'>謝謝你們的善心，讓我們有更好的未來</span>
							</div>
<!-- 						</div> -->
<!-- 					</a> -->
						</a>
				</li>
			</ul>
		</div>
<!-- 		<div class="container"> -->
<!--     		<h2 class="nino-sectionHeading"> -->
<!-- 				<span class="nino-subHeading-2" style="margin-top:20px;"> -->
<!-- 			    <br><a href="shares/shares.jsp">了解更多</a> -->
<!-- 			    </span> -->
<!-- 			</h2> -->
<!-- 		</div> -->
	</section><!--/#nino-portfolio-->

	<section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading" style="font-size: 30px">關於本站</span>
			</h2>
			<p class="nino-sectionDesc" style="font-size: 25px">
				Half of 73°C是一個公益平台，我們希望透過網站幫助台灣的弱勢族群，
				也致力於讓使用者有更方便且值得信賴的互助管道。 
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
									<div class="panel-body"  style="height:297px;">
										　　"Half of 73°C"源自我們認為人與人之間的相處，需要保持一種"溫度"。而人體的平均體溫是36.5°C，有了你我，愛才完整。
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
									<div class="panel-body" style="height:297px;">
											　　我們希望能夠實現當每一個人，願意為了他人付出時能有一個簡易使用的管道，而且不必擔心自己所貢獻的
											一份心意是否有確實傳達。<br>　　大文豪莎士比亞曾寫到過：慈悲不是出於勉强，它如同甘露一樣從天上降下塵世；不但給幸福於受施之人，
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
									<div class="panel-body" style="height:297px;">
										　　我們一直致力於提供所有使用者良好的捐募平台，未來希望能讓更多地基金會也能一同參與。
										我們也會不斷提升使用的簡便度和針對所有有需求、不論是需要施予他人或受施於他人的使用者，
										更貼近生活所需地去協助大家。<br>
										　　往後我們也希望擴展至更多使用平台，不論是Android或是iOS系統。讓大家的愛心能夠在更多地方延伸。
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

	
 	<div w3-include-html="footer.jsp"></div>
    <!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>
	
	<!-- javascript -->
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
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
</html>