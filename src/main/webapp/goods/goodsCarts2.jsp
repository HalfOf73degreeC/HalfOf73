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
	<link rel="stylesheet" type="text/css" href="../css/halfOf73.css" />
</head>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">					
			<nav id="nino-navbar" class="navbar navbar-default navbarColor" style="background-color:rgba(243,129,129,0.8);" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="../index.jsp">Half Of 73°C</a>
					</div>

					<div class="nino-menuItem pull-right">
	
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#"><i class="mdi mdi-cart-outline nino-icon"></i></a></li>
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
		</div>
	</header><!--/#header-->
    
	<!-- 愛心義賣資訊 -->
	<form action="../shoppingCart/ProcessOrder.do" method="post">
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
						<td></td>
					</tr>
					<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
						<tr>
							<td><div style="height:64px; width:64px;"><img src="../goods/showPicture.do?goodsUid=${anEntry.value.goodsUid}" height="64px"></div></td>
							<td>${anEntry.value.goodsName}</td>
							<td>$<fmt:formatNumber value="${anEntry.value.goodsPrice}" pattern="#,###" /></td>
							<td>${anEntry.value.qty}</td>
							<td>$<fmt:formatNumber value="${anEntry.value.goodsPrice * anEntry.value.qty}" pattern="#,###,###" /></td>
							<td></td>
							
						</tr>

					</c:forEach>
					<tr>
						<td width="15%"></td>
						<td>愛心義賣合計</td>
						<td width="15%"></td>
						<td width="20%"></td>
						<td>$<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" /></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="foundationList">
			<div class="container foundationTitle">請選擇寄送方式</div>
				<div class="container supplyBox">
					<table class="table">
						<tr>
							<td><td>
							<td>運送方式</td>
							<td width="40%">說明</td>
							<td>運費</td>
							<td></td>
						</tr>
						<c:forEach varStatus="stVar" var="DeliveryBean" items="${AllDelivery}">		
							<tr>
								<td>
									<input id="deliveryAmt" type="radio" name="deliveryAmt" value="${DeliveryBean.deliveryAmt}" onclick="addDeliveryAmt()">
								</td>
								<td><img src="${DeliveryBean.deliveryImg}" height="80" width="80"></td>
								<td>${DeliveryBean.deliveryName}</td>
								<td>${DeliveryBean.deliveryDescription}</td>
								<td>$<fmt:formatNumber value="${DeliveryBean.deliveryAmt}" pattern="#,###,###" /></td>
								<td></td>
							</tr>
						</c:forEach>
						<Input type='hidden' name='subtotal' value='${ShoppingCart.subtotal}'>
						<tr>
							<td></td>
							<td></td>
							<td>購物車金額總計</td>
							<td></td>
							<td>$<span id="newSubtotal2" pattern="#,###,###"><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" /></span></td>
							<td></td>
						</tr>
						<Input type='hidden' id ='newSubtotal' name='newSubtotal' value=''>
					</table>
				</div>
			</div>
			<!-- 選擇付款方式 -->
			<div class="foundationList">
			<div class="container foundationTitle">請選擇付款方式</div>
				<div class="container supplyBox">
					<table class="table">
						<tr>
							<td><td>
							<td>付款方式</td>
							<td width="40%">說明</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach varStatus="stVar" var="PaymentBean" items="${AllPayment}">		
							<tr>
								<td>
									<input id="Payment" type="radio" name="Payment" value="${PaymentBean.paymentUid}" onclick="addPayment()">
								</td>
								<td><img src="${PaymentBean.paymentImg}" height="80" width="80"></td>
								<td>${PaymentBean.paymentName}</td>
								<td>${PaymentBean.paymentDescription}</td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="foundationList">
				<div class="container foundationTitle">收件人資料</div>
					<div class="container supplyBox">
						<div class="form-group">
							<label class="col-sm-2 control-label">收件人</label>
							<div class="col-sm-10">
							  	<input class="form-control" id="name" type="text" placeholder="請輸入收件人">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">地址</label>
							<!-- <div class="addressSelector"></div>-->
							<!-- <label class="col-sm-2 control-label"></label>-->
							<div class="col-sm-10">
							  	<input class="form-control" id="address" type="text" placeholder="請輸入地址">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">電話</label>
							<div class="col-sm-10">
							    <input class="form-control" id="tel" type="text" placeholder="請輸入電話">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="foundationList">
				<div class="container groupButton">
					<button type="submit" class="btn btn-warning" formaction="BuyGoods.do">&nbsp;&nbsp;上一步:修改物資&nbsp;&nbsp;</button>
					<button type="submit" class="btn btn-warning">下一步:捐贈物資完成</button>
				</div>		
			</div>	
		</div>
	</form>

	
	
    <!-- Footer
    ================================================== -->
    <footer id="footer">
        <div class="container">
        	<div class="row">
        		<div class="col-md-4">
        			<div class="colInfo">
	        			<div class="footerLogo">
	        				<a href="#" >MoGo</a>	
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
	        				<a href="#"><img src="../images/instagram/img-1.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-2.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-5.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-6.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-7.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-8.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-9.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="../images/instagram/img-5.jpg" alt=""></a>
	        			</div>
	        			<a href="#" class="morePhoto">View more photos</a>
        			</div>
        		</div>
        	</div>
			<div class="nino-copyright">Copyright &copy; 2016 <a target="_blank" href="http://www.ninodezign.com/" title="Ninodezign.com - Top quality open source resources for web developer and web designer">Ninodezign.com</a>. All Rights Reserved. <br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div>
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
	<script type="text/javascript" src="../js/jquery.min.js"></script>	
	<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="../js/unslider-min.js"></script>
	<script type="text/javascript" src="../js/template.js"></script>
	<script type="text/javascript" src="../js/tw-city-selector.min.js"></script>
	<script type="text/javascript">
		function addDeliveryAmt() {
			var deliveryAmt = parseInt(document.querySelector('input[name="deliveryAmt"]:checked').value);
			var subtotal = parseInt(document.querySelector('input[name="subtotal"]').value);
			var newSubtotal = deliveryAmt + subtotal;
			document.getElementById("newSubtotal2").innerHTML= newSubtotal;	
			document.getElementById('newSubtotal').value=newSubtotal;
		}
		
		new TwCitySelector({
		    el: ".addressSelector" // 同 DOM querySelector()
		  });
		
	</script>

		
</html>