<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mem" value="${memberBean}"></c:set>
<ul class="nino-iconsGroup nav navbar-nav" style="max-height: 44px;">
	<li><a href="supplyBox.jsp"><i
			class="mdi mdi-cart-outline nino-icon"></i></a></li>
	<li><a href="#" class="nino-search" style="padding-right: 13px;"><i
			class="mdi mdi-magnify nino-icon"></i></a></li>
	<c:if test="${not empty mem.memPicUrl}">
		<li class="dropdown">
			<div style="padding: 9px 5px 5px;" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">
				<img src="${mem.memPicUrl}"
					style="border-radius: 50%; max-width: 30px; height: auto;">
			</div>
			<ul class="dropdown-menu dropdown-menu-right"
				style="margin-top: 5.5px; background-color: rgba(56, 56, 56, 0.55);">
				<li><a href="member/memberZone.jsp"
					style="font-size: 13px; color: white;">會員專區</a></li>
				<li><a href="member/logout"
					style="font-size: 13px; color: white;">登出</a></li>
				<!-- 							            <li><a href="#">Something else here</a></li> -->
				<!-- 							            <li role="separator" class="divider"></li> -->
				<!-- 							            <li><a href="#">Separated link</a></li> -->
				<!-- 							            <li role="separator" class="divider"></li> -->
				<!-- 							            <li><a href="#">One more separated link</a></li> -->
			</ul>
		</li>
	</c:if>
	<c:if test="${empty mem.memPicUrl}">
		<li class="dropdown">
			<div
				style="width: 40px; font-size: 13px; color: white; margin-top: 13px; text-align: right;"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false">登入</div>
			<ul class="dropdown-menu dropdown-menu-right"
				style="margin-top: 15px; background-color: rgba(56, 56, 56, 0.55);">
				<li><a href="member/login"
					style="font-size: 13px; color: white;">GOOGLE登入</a></li>
			</ul>
		</li>
	</c:if>
</ul>
<!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
<form action="" id="nino-searchForm">
	<input type="text" placeholder="Search..."
		class="form-control nino-searchInput"> <i
		class="mdi mdi-close nino-close"></i>
</form>
<!--/#nino-searchForm-->