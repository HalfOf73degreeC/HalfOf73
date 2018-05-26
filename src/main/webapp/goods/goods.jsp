<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <jsp:useBean id="baBean" class="_03_listBooks.model.BookAccessBean_Hibernate" scope='request'/> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>Half Of 73°C | Love with warm heart</title>

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
		
</head>
<body style="background: #EBFFEB;">
	<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->
<%-- 	<c:set var="list" value="${AllGoods}"></c:set> --%>
	<section id="nino-latestBlog">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">最新消息</span>
			</h2>
			<div class="sectionContent">
				<c:forEach varStatus="stVar" var="GoodsBean" items="${AllGoods}">				
					<c:if test="${stVar.index % 3 == 0}">
						<div class="row">
					</c:if>
							<div class="col-md-4 col-sm-4">
								<article>
									<div class="articleThumb">
										<br> <br> <br> <a href="#">
										<img
											src="http://imgs.niusnews.com/upload/imgs/default/16JanC/0106micarina/2.560.PNG"
											>									
											</a>
										<div class="date">
											<span class="number">15</span> <span class="text">Jan</span>
										</div>
									</div>
									<h3 class="articleTitle">
										<a href="queryOneGoods_HO73.do?goodsUid=${GoodsBean.goodsUid}">${GoodsBean.goodsName}‎</a>
									</h3>
									<div style="padding: 10px;">
<!-- 								style="overflow:hidden;white-space: nowrap;text-overflow: ellipsis;" -->
									<p class="articleDesc">
										${GoodsBean.goodsIntro}
									</p>
									</div>
									<h3 class="articleTitle" style="text-align: right;">
										<a href="#" style="color: red;font-weight:bold;">愛心價：${GoodsBean.goodsPrice} 元</a>
									</h3>
									<div class="articleMeta">
										<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a> <a
											href="#"><i
											class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
									</div>
								</article>
							</div>
					<c:if test="${stVar.index % 3 == 2}">
						</div>
					</c:if>
					<c:if test="${stVar.last}">
						<c:if test="${stVar.index % 3 != 2}">
						</div>
						</c:if>
					</c:if>
			</c:forEach>			
			</div>
		</div>
	</section>
	<!--/#nino-latestBlog-->

</body>
</html>
