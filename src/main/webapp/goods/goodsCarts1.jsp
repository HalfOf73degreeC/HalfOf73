<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<head>

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>購物車</title>

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
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">

</head>

<body>
	<c:choose>
		<c:when test="${ShoppingCart.subtotal > 0}">
			<c:set var="subtotalMessage" value="金額小計:${ShoppingCart.subtotal} 元" />
			<c:set var="subtotal" value="${ShoppingCart.subtotal}" />
		</c:when>
		<c:otherwise>
			<c:set var="subtotalMessage" value="金額小計:  0 元" />
			<c:set var="subtotal" value="0" />
		</c:otherwise>
	</c:choose>
	<!-- Header
    ================================================== -->
	<header id="nino-header">
	<div id="nino-headerInner">
		<nav id="nino-navbar" class="navbar navbar-default" style="background-color:rgba(243,129,129,0.8);" >
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="${pageContext.request.contextPath}/logo.jsp"></div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
							<!-- 	<li class="active"><a href="#nino-header"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li> -->
								<li><a href="../index.jsp#nino-latestBlog">最新消息</a></li>
								<li><a href="../foundation/foundation_main.jsp">基金會</a></li>
								<li><a href="../index.jsp#nino-ourTeam">捐款募資</a></li>
								<li><a href="../index.jsp#nino-portfolio">愛的傳遞</a></li>
								<li><a href="../index.jsp#nino-whatWeDo">關於本站</a></li>		
							</ul>
						</div><!-- /.navbar-collapse -->
						
						<div class="nino-menuItem pull-right" w3-include-html="${pageContext.request.contextPath}/navbar_right.jsp"></div>
					</div>	
				</div><!-- /.container-fluid -->
			</nav>
	</div>
	</header>
	<!--/#header-->

	<!-- 捐贈箱資訊 -->
	<form action="${pageContext.request.contextPath}/goods/BuyGoodsSend.do" method="post">
		<div class="foundationList">
			<!--<div class="container foundationTitle">台灣之心愛護動物協會</div>-->
			<div class="container supplyBox">
				<table class="table">
					<tr>
						<td></td>
						<td>愛心義賣商品名稱</td>
						<td>愛心義賣金額</td>
						<td>愛心義賣數量</td>
						<td>小計</td>
						<td>操作</td>
					</tr>
					<c:forEach varStatus="vs" var="anEntry"
						items="${ShoppingCart.content}">
						<tr>
							<td><div style="height: 64px; width: 64px;">
									<img
										src="../goods/showPicture.do?goodsUid=${anEntry.value.goodsUid}"
										height="64px">
								</div></td>
							<td>${anEntry.value.goodsName}</td>
							<td>$<fmt:formatNumber value="${anEntry.value.goodsPrice}"
									pattern="#,###" /></td>
							<td><Input class="form-control" id="newQty${vs.index}"
								style="width: 70px; text-align: right" name="newQty" type="text"
								value="<fmt:formatNumber value="${anEntry.value.qty}" />"
								name="qty" onkeypress="return isNumberKey(event)" /></td>
							<td>$<fmt:formatNumber
									value="${anEntry.value.goodsPrice * anEntry.value.qty}"
									pattern="#,###,###" /></td>
							<td><Input class="btn btn-info" type="button" name="update"
								value="修改"
								onclick="modify(${anEntry.key}, ${anEntry.value.qty}, ${vs.index})">
								<Input class="btn btn-danger" type="button" name="delete"
								value="刪除" onclick="confirmDelete(${anEntry.key})"></td>
							<!-- <td><a href="#"><i class="fa fa-trash-o"style="color: #000; font-size: 32px"></i></a> -->
							<!-- <button type="button" class="goods-delete-body"></button> -->
						</tr>

					</c:forEach>
					<tr>
						<td width="15%"></td>
						<td>愛心義賣合計</td>
						<td width="15%"></td>
						<td width="20%"></td>
						<td>$<fmt:formatNumber value="${subtotal}"
								pattern="#,###,###" /></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		<!--
		<div class="foundationList">
			<div class="container supplyBox">
				<table class="table">
					<tr>
						<td width="35%">捐贈物資基金會單位總數: &nbsp; 3</td>
						<td width="18%"></td>
						<td width="20%">10</td>
						<td>$100,000</td>
					</tr>
				</table>
			</div>
		</div>
		-->
		<div class="foundationList">
			<div class="container groupButton">
				<button type="submit" class="btn btn-info"
					onClick="this.form.action='${pageContext.request.contextPath}/goods/queryAllGoods_HO73.do';this.form.method='GET';this.form.submit();">回愛心商品列表</button>
				<button type="submit" class="btn btn-warning">下一步:選擇付款及寄送方式</button>
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
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script type="text/javascript">
		function confirmDelete(n) {
			if (confirm("確定刪除此項商品 ? ") ) {
				document.forms[0].action="<c:url value='/shoppingCart/UpdateItem.do?cmd=DEL&goodsUid=" + n +"' />" ;
				document.forms[0].method="POST";
				document.forms[0].submit();
			} else {
			
			}
		}
		function modify(key, qty, index) {
			var x = "newQty" + index;
			var newQty = document.getElementById(x).value;
			if  (newQty < 0 ) {
				window.alert ('數量不能小於 0');
				return ; 
			}
			if  (newQty == 0 ) {
				window.alert ("請執行刪除功能來刪除此項商品");
				document.getElementById(x).value = qty;
				return ; 
			}
			if  (newQty == qty ) {
				window.alert ("新、舊數量相同，不必修改");
				return ; 
			}
			if (confirm("確定將此商品的數量由" + qty + " 改為 " + newQty + " ? ") ) {
				document.forms[0].action="<c:url value='/shoppingCart/UpdateItem.do?cmd=MOD&goodsUid=" + key + "&newQty=" + newQty +"' />" ;
				document.forms[0].method="POST";
				document.forms[0].submit();
			} else {
				document.getElementById(x).value = qty;
			}
		}
		function isNumberKey(evt)
		{
		   var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57)){
		      return false;
		   }
		   return true;
		}
		function Checkout(qty) {
			if (qty == 0)  {
				alert("無購買任何商品，不需結帳");
				return false;
			}
			if (confirm("再次確認訂單內容 ? ") ) {
				return true;
			} else {
				return false;
			}
		}
		function Abort() {
			if (confirm("確定放棄購物 ? ") ) {
				return true;
			} else {
				return false;
			}
		}
	</script>
	<script>
		w3.includeHTML();
	</script>
</body>
</html>