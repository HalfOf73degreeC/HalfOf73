<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="subTitle" value="Half of 73°C公益平台" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="java008.project@gmail.com">
<title>${subTitle}</title>

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
</head>
<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
	<div id="nino-headerInner">
		<nav id="nino-navbar" class="navbar navbar-default" style="background-color:rgba(243,129,129,0.8);" >
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="../logo.jsp"></div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
							<!-- 	<li class="active"><a href="#nino-header"><i class="glyphicon glyphicon-home"></i><span class="sr-only">(current)</span></a></li> -->
<!-- 								<li><a href="#nino-latestBlog">最新消息</a></li> -->
<!-- 								<li><a href="foundation/foundation_detail.jsp">基金會</a></li> -->
<!-- 								<li><a href="#nino-ourTeam">捐款募資</a></li> -->
<!-- 								<li><a href="#nino-portfolio">愛的傳遞</a></li> -->
<!-- 								<li><a href="#nino-whatWeDo">關於本站</a></li>		 -->
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
						
						<div class="nino-menuItem pull-right" w3-include-html="../navbar_right.jsp"></div>
					</div>	
				</div><!-- /.container-fluid -->
			</nav>
	</div>
	</header>
	<!--/#header-->

	<!-- 捐贈箱資訊 -->
	<c:set var="OrderBean" value="${OrderBean}"></c:set>
	<form action="${pageContext.request.contextPath}/index.jsp" method="post">
		<div class="foundationList">
			<div class="container foundationTitle"><h1>${memName} 您好</h1> <h2>愛心商品訂購單已成立</h2></div>
			<div class="container supplyBox">
				<label><h2>感謝您的購買</h2></label><br>
				<label><h2>匯款銀行代碼:${paymentATMBankId}</h2></label><br>
				<label><h2>匯款銀行帳號:${paymentATMAccount}</h2></label><br>
				<label style="color: red">請於三日內匯款，若未匯款將自動取消訂單</label>
			</div>
		</div>
		<div class="foundationList">
			<div class="container groupButton">
				<button type="submit" class="btn btn-warning" formaction="../index.jsp">回首頁</button>
			</div>
		</div>
		</div>
	</form>

	<div w3-include-html="../footer.jsp"></div>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="../js/unslider-min.js"></script>
	<script type="text/javascript" src="../js/template.js"></script>
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>
</html>