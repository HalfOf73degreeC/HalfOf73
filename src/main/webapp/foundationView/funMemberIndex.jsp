<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap2.min.css">
    <link rel="stylesheet" type="text/css" href="./css/prettyPhoto.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="./css/template.css">
    <link rel="stylesheet" href="./resource/WOW-master/css/libs/animate.css">
    <title>Foundation Backstage</title>
</head>

<body style="background: #FFF0F5;">
    <section id="nino-ourTeam">
        <div class="container">
            <h2 class="nino-sectionHeading title wow fadeInDown">
                <span class="nino-subHeading" style="font-family: '微軟正黑體';font-size: 40px;">會員管理</span>
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
                                    <a href="http://localhost:8080/HalfOf73/goods/queryAllGoods_HO73.do" style="font-size: 36px">最新消息管理</a>
                                </div>
                                <img src="./img/news.jpg" alt=""style="border-radius: 15%;">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="item">
                            <div class="overlay box" href="#">
                                <div class="content">
                                    <a href="http://localhost:8080/HalfOf73/supply.html#nino-portfolio" style="font-size: 36px">愛的回饋</a>
                                </div>
                                <img src="./img/love.jpg" alt=""style="border-radius: 15%;">
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
                                    <a href="http://localhost:8080/HalfOf73/volunteer.html" style="font-size: 36px">需求物資管理</a>
                                </div>
                                <img src="./img/stuff.jpg" alt=""style="border-radius: 15%;">
                            </div>
                        </div>
                    </div>
                    <div class="row nino-hoverEffect">
                        <div class="col-md-4 col-sm-4 box-down1">
                            <div class="item">
                                <div class="overlay box" href="#">
                                    <div class="content">
                                        <a href="${pageContext.request.contextPath}/foundationView/paymentMain.jsp" style="font-size: 36px">捐款管理</a>
                                    </div>
                                    <img src="./img/499808264.jpg" alt=""style="border-radius: 15%;">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4 box-down2">
                            <div class="item">
                                <div class="overlay box" href="#">
                                    <div class="content">
                                        <a href="http://localhost:8080/HalfOf73/volunteer.html" style="font-size: 36px">義賣商品上架</a>
                                    </div>
                                    <img src="./img/sale.jpg" alt=""style="border-radius: 15%;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="#" style="font-size: 20px;color: #FF5511;">會員資料設定</a>
                </div>
            </div>
        </div>
    </section>
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
</body>

</html>