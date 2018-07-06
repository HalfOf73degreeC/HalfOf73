<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>Half Of 73&deg;C</title>

<!-- favicon -->
<link rel="shortcut icon" href="images/ico/like.png">
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
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
	<div id="nino-headerInner">
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color:rgba(243,129,129,0.8);">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header" w3-include-html="../logo.jsp"></div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<div class="collapse navbar-collapse pull-left"
					id="nino-navbar-collapse">
					<ul class="nav navbar-nav">
						<!-- 	<li class="active"><a href="#nino-header"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li> -->
						<li><a href="#nino-latestBlog">最新消息</a></li>
						<li><a href="foundation/foundation_detail.jsp">基金會</a></li>
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
				</div>
				<!-- /.navbar-collapse -->

				<div class="nino-menuItem pull-right"
					w3-include-html="../navbar_right.jsp"></div>
			</div>
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	</header>
	<!--/#header-->

	<!-- 愛心義賣資訊 -->
	<form
		action="${pageContext.request.contextPath}/supplyShoppingCart/ProcessOrder.do"
		method="post">
		<div class="foundationList">
			<!--<div class="container foundationTitle">台灣之心愛護動物協會</div>-->
			<div class="container supplyBox">
				<table class="table">
					<tr>
						<td></td>
						<td>捐贈物資名稱</td>
						<td>愛心義賣數量</td>
						<td></td>
					</tr>
					<c:forEach varStatus="vs" var="anEntry"
						items="${SupplyShoppingCart.content}">
						<tr>
							<td><div style="height: 64px; width: 64px;">
									<img
										src="../supply/showPicture.do?supUid=${anEntry.value.supUid}"
										height="64px">
								</div></td>
							<td>${anEntry.value.supName}</td>
							<td>${anEntry.value.qty}</td>
							<td></td>
						</tr>
						<Input type='hidden' name='supName'value='${anEntry.value.supName}'><P />
						<Input type='hidden' name='supUid' value='${anEntry.value.supUid}'><P />
						<Input type='hidden' name='qty' value='${anEntry.value.qty}'><P />
						<Input type='hidden' name='funAddress' value='${anEntry.value.funAddress}'><P />
						<Input type='hidden' name='funName' value='${anEntry.value.funName}'><P />
						<Input type='hidden' name='funTel' value='${anEntry.value.funTel}'><P />

					</c:forEach>
					
				</table>
			</div>
		</div>
		<div class="foundationList">
			<div class="container foundationTitle">請選擇寄送方式</div>
			<div class="container supplyBox">
				<table class="table">
					<tr>
						<td>
						<td>
						<td>運送方式</td>
						<td width="40%">說明</td>
						<td></td>
					</tr>
					<c:forEach varStatus="stVar" var="DeliveryBean"
						items="${AllDelivery}">
						<tr>
							<td><input id="deliveryAmt" type="radio" name="deliveryAmt"
								value="${DeliveryBean.deliveryAmt}" onclick="addDeliveryAmt()">
							</td>
							<td><img src="${DeliveryBean.deliveryImg}" height="80"
								width="80"></td>
							<td>${DeliveryBean.deliveryName}</td>
							<td>${DeliveryBean.deliveryDescription}</td>
							<td></td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
		<c:set var="mem" value="${memberBean}"></c:set>
		<div class="foundationList">
			<div class="container foundationTitle">收據資料</div>
			<div class="container supplyBox">
				<!--Radio group-->
<!-- 				<div class="form-check"> -->
<!-- 					<input name="102" type="radio" class="form-check-input with-gap" id="radio106" checked>  -->
<!-- 					<label class="form-check-label" for="radio106">不需要收據</label> -->
<!-- 				</div> -->
<!-- 				<div class="form-check"> -->
<!-- 					<input name="102" type="radio" class="form-check-input with-gap" id="radio107">  -->
<!-- 					<label class="form-check-label" for="radio107">需要收據</label> -->
<!-- 				</div> -->
				<!--Radio group-->
				<div class="form-group">
					<label class="col-sm-2 control-label">收件人<span
						style='color: red'>*</span></label>
					<div class="col-sm-10">
						<input class="form-control" id="name" name="name" type="text"
							placeholder="請輸入收件人" value="${mem.memName}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">地址<span
						style='color: red'>*</span></label>
					<!-- <div class="addressSelector"></div>-->
					<!-- <label class="col-sm-2 control-label"></label>-->
					<div class="col-sm-10">
						<input class="form-control" id="address" type="text"
							name="address" placeholder="請輸入地址" value="${mem.memAddress}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">電話<span
						style='color: red'>*</span></label>
					<div class="col-sm-10">
						<input class="form-control" id="tel" type="text" name="tel"
							placeholder="請輸入電話ex:0900111222、0222223333"
							value="${mem.memMobile}" data-error="請輸入數字" pattern="[0-9]{10}">
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="foundationList">
			<div class="container groupButton">
<!-- 				<button type="submit" class="btn btn-warning" formaction="BuyGoods.do">&nbsp;&nbsp;上一步:修改物資&nbsp;&nbsp;</button> -->
				<button type="submit" class="btn btn-warning">下一步:捐贈物資完成</button>
			</div>
		</div>
		</div>
	</form>




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
	<div w3-include-html="../footer.html"></div>
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
	<script type="text/javascript" src="../js/tw-city-selector.min.js"></script>
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script type="text/javascript">
		function addDeliveryAmt() {
			var deliveryAmt = parseInt(document
					.querySelector('input[name="deliveryAmt"]:checked').value);
			var subtotal = parseInt(document
					.querySelector('input[name="subtotal"]').value);
			var newSubtotal = deliveryAmt + subtotal;
			document.getElementById("newSubtotal2").innerHTML = newSubtotal;
			document.getElementById('newSubtotal').value = newSubtotal;
		}
	</script>
	<script>
		w3.includeHTML();
	</script>
</html>