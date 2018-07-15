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
<title>募集物資商品 - Half Of 73°C</title>

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
					<div class="navbar-header" w3-include-html="${pageContext.request.contextPath}/logo.jsp"></div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left"
							id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<!-- 								<li><a href="queryAllGoods_HO73.do">回到商品總攬</a></li> -->
								<!-- 								<li class="active"><a href="#nino-story">商品基本資料</a></li> -->
								<!-- 								<li><a href="#nino-ourTeam">商品詳細資料</a></li> -->
							</ul>
						</div>
						<!-- /.navbar-collapse -->

						<div class="nino-menuItem pull-right"
							w3-include-html="${pageContext.request.contextPath}/navbar_right.jsp"></div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	<!--header 結束，內容開始  -->
	<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->
	<%-- 	<c:set var="list" value="${AllGoods}"></c:set> --%>
	<section id="nino-latestBlog">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">募集物資商品</span>
			</h2>
			<div class="sectionContent">
				<c:forEach varStatus="stVar" var="SupplyBean" items="${AllSupply}">
					<c:if test="${stVar.index % 4 == 0}">
						<div class="row">
					</c:if>
					<form action="BuySupply.do" method="post">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="thumbnail">
								<div class="subImgSize" style="width:250px; height:300px; text-align : center;">
									<img src="showPicture.do?supUid=${SupplyBean.supUid}" style="width:auto; height:250px; margin:5px; vertical-align : middle;">
								</div>
								<div class="caption">
									<h3>${SupplyBean.supName}‎</h3>
									<p>${SupplyBean.foundationBean_HO73.funName}</p>
									<c:if test="${empty SupplyBean.supIntro}">
										<p>&nbsp;</p>
									</c:if>
									<c:if test="${not empty SupplyBean.supIntro}">
										<p>${SupplyBean.supIntro}</p>
									</c:if>
									<p><h2 class="bg-danger">需求量:${SupplyBean.supNeedStock}<h2></p>
									<div class="row">
										<div class="col-sm-5">
											<h5>捐贈量:</h5>
												<select name='qty' class="form-control form-control-sm" style="width: 70px;">
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
										</div>
									</div>
									<Input type='hidden' name='funUid' value='${SupplyBean.foundationBean_HO73.funIdcard}'>
									<Input type='hidden' name='funName' value='${SupplyBean.foundationBean_HO73.funName}'>
									<Input type='hidden' name='funAddress' value='${SupplyBean.foundationBean_HO73.funAddress}'>
									<Input type='hidden' name='funTel' value='${SupplyBean.foundationBean_HO73.funTel}'>
									<Input type='hidden' name='supUid' value='${SupplyBean.supUid}'>
									<Input type='hidden' name='supName' value='${SupplyBean.supName}'>

									<Input type='hidden' name='pageNo' value='${param.pageNo}'>
									<p style="margin: 0px 0px 0px 60%;">
<!-- 										<a href="BuySupply.do" class="btn btn-primary" role="button"><i class="icon-cc-jcb custumStyle"></i>我要捐贈</a> -->
									<c:if test="${empty SupplyShoppingCart.content}">
										<Input class="btn btn-primary" type='submit' value='我要捐贈'>
									</c:if>
									<c:if test="${not empty SupplyShoppingCart.content}">
										<Input class="btn btn-primary disabled" type='submit' value='我要捐贈' disabled>
									</c:if>
									</p>
								</div>
							</div>
						</div>
						</form>
					<c:if test="${stVar.index % 4 == 3}">
						</div>
					</c:if>
			<c:if test="${stVar.last}">
				<c:if test="${stVar.index % 4 != 3}">
			</div>
				</c:if>
			</c:if>
		</c:forEach>
	</section>
	<!--/#nino-latestBlog-->

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

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
</html>
