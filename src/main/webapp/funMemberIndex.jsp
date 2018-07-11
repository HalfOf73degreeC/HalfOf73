<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading" style="font-size: 30px">後台管理</span>
			</h2>
			 <p class="nino-sectionDesc wow fadeInDown" style="font-family: '微軟正黑體';font-size: 20px;">
                誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！
            </p>          <!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item" style="border-radius:12px;">
							<div class="overlay" href="#">
								<div class="content">
									<a href="${pageContext.request.contextPath}/foundationView/goodsMain.jsp" style="font-size: 36px">義賣商品上架</a>
								</div>
								<img src="${pageContext.request.contextPath}/foundationView/img/sale.jpg" alt="" style="border-radius:12px;">
							</div>
						</div>
<!-- 						<div class="info">
							<h4 class="name">Matthew Dix</h4>
							<span class="regency">Graphic Design</span>
						</div> -->
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item" style="border-radius:12px;">
							<div class="overlay" href="#" >
								<div class="content" >
									<a href="${pageContext.request.contextPath}/foundationView/payBoxMain.jsp" style="font-size: 36px">捐款管理</a>
								</div>
								<img src="${pageContext.request.contextPath}/foundationView/img/499808264.jpg" alt="" style="border-radius:12px;">
							</div>
						</div>
<!-- 						<div class="info">
							<h4 class="name">Christopher Campbell</h4>
							<span class="regency">Branding/UX design</span>
						</div> -->
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item" style="border-radius: 12px;">
							<div class="overlay" href="#">
								<div class="content">
									<a href="${pageContext.request.contextPath}/foundationView/supplyMain.jsp" style="font-size: 36px" >需求物資管理</a>
								</div>
								<img src="${pageContext.request.contextPath}/foundationView/img/stuff.jpg" alt="" style="border-radius:12px;">
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