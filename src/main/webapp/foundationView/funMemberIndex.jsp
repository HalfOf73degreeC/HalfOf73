<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- css -->
<link rel="stylesheet" type="text/css" href="./css/bootstrap2.min.css">
<link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="../css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="../css/unslider.css" />
<link rel="stylesheet" type="text/css" href="./css/template.css" />
<link rel="stylesheet" type="text/css" href="../css/halfOf73.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" href="./resource/WOW-master/css/libs/animate.css">
<title>後台管理 - Half Of 73°C</title>
<!-- favicon -->
<link rel="shortcut icon" href="../images/ico/like.png">
<!-- javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

</head>

<body style="background: #FFF0F5;">
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
    <section id="nino-ourTeam">
        <div class="container">
            <h2 class="nino-sectionHeading title wow fadeInDown">
                <span class="nino-subHeading" style="font-family: '微軟正黑體';font-size: 40px;">後台管理</span>
            </h2>
            <p class="nino-sectionDesc wow fadeInDown" style="font-family: '微軟正黑體';font-size: 20px;">
                誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！
            </p>          <!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
            <div class="sectionContent">
                <div class="row nino-hoverEffect">
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="overlay box" href="#">
                                <div class="content box-top">
                                    <a href="${pageContext.request.contextPath}/foundationView/goodsMain.jsp" style="font-size: 36px">義賣商品上架</a>
                                </div>
                                <img src="./img/sale.jpg" alt=""style="border-radius: 15%;">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="overlay box" href="#">
                                <div class="content">
                                    <a href="${pageContext.request.contextPath}/foundationView/payBoxMain.jsp" style="font-size: 36px">捐款管理</a>
                                </div>
                                <img src="./img/499808264.jpg" alt=""style="border-radius: 15%;">
                            </div>
                        </div>
                        <!-- 						<div class="info">
                                    <h4 class="name">Christopher Campbell</h4>
                                    <span class="regency">Branding/UX design</span>
                                </div> -->
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="overlay box" href="#">
                                <div class="content">
                                    <a href="${pageContext.request.contextPath}/foundationView/supplyMain.jsp" style="font-size: 36px">需求物資管理</a>
                                </div>
                                <img src="./img/stuff.jpg" alt=""style="border-radius: 15%;">
                            </div>
                        </div>
                    </div>
<!--                     <div class="row nino-hoverEffect"> -->
<!--                         <div class="col-md-4 col-sm-4 box-down1"> -->
<!--                             <div class="item"> -->
<!--                                 <div class="overlay box" href="#"> -->
<!--                                     <div class="content"> -->
<%--                                         <a href="${pageContext.request.contextPath}/foundationView/payBoxMain.jsp" style="font-size: 36px">愛的回饋</a> --%>
<!--                                     </div> -->
<!--                                     <img src="./img/love.jpg" alt=""style="border-radius: 15%;"> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->

<!--                         <div class="col-md-4 col-sm-4 box-down2"> -->
<!--                             <div class="item"> -->
<!--                                 <div class="overlay box" href="#"> -->
<!--                                     <div class="content"> -->
<%--                                         <a href="${pageContext.request.contextPath}/foundationView/goodsMain.jsp" style="font-size: 36px">最新消息管理</a> --%>
<!--                                     </div> -->
<!--                                     <img src="./img/news.jpg " alt=""style="border-radius: 15%;"> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <a href="#" style="font-size: 20px;color: #FF5511;">會員資料設定</a> -->
                </div>
            </div>
        </div>
    </section>
    <div w3-include-html="${pageContext.request.contextPath}/footer.jsp"></div>
    <script src="./resource/WOW-master/dist/wow.min.js"></script>
    <script>
        wow = new WOW(
            {
                boxClass: 'wow',      // default
                animateClass: 'animated', // default
                offset: 0,          // default
                mobile: true,       // default
                live: true        // default
            }
        )
        wow.init();
    </script>
    <!-- 	include -->
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>
</body>

</html>