<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mem" value="${memberBean}"></c:set>
<ul class="nino-iconsGroup nav navbar-nav" style="max-height: 44px;">
	<li><a href="${pageContext.request.contextPath}/goods/goodsCarts1.jsp"><i
			class="mdi mdi-cart-outline nino-icon"></i></a></li>
	<li><a href="#" class="nino-search" style="padding-right: 13px;"><i
			class="mdi mdi-magnify nino-icon"></i></a></li>
	<c:if test="${not empty mem.memPicUrl}">
		<li class="dropdown">
			<div style="padding: 9px 5px 5px;" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">
				<c:if test="${empty mem.fileName}">
				<img src="${mem.memPicUrl}"
					style="border-radius: 50%; max-width: 30px; height: auto;">
				</c:if>
				<c:if test="${not empty mem.fileName}">
				<img src="${pageContext.request.contextPath}/member/showPicture.do?memAccount=${mem.memAccount}"
					style="border-radius: 50%; max-width: 30px; height: 30px;">
				</c:if>
			</div>
			<ul class="dropdown-menu dropdown-menu-right"
				style="margin-top: 5.5px; background-color: rgba(56, 56, 56, 0.55);">
				<c:if test="${mem.memType == '1'}">
				<li><a href="${pageContext.request.contextPath}/member/memberZone.jsp"
					style="font-size: 13px; color: white;">會員專區</a></li>
				</c:if>
				<c:if test="${mem.memType == '2'}">
				<li><a href="${pageContext.request.contextPath}/foundation/foundation_register.jsp"
					style="font-size: 13px; color: white;">資料維護</a></li>
				<li><a href="${pageContext.request.contextPath}/foundationView/payBoxMain.jsp"
					style="font-size: 13px; color: white;">捐款管理</a></li>
				<li><a href="${pageContext.request.contextPath}/foundationView/goodsMain.jsp"
					style="font-size: 13px; color: white;">義賣管理</a></li>
				<li><a href="${pageContext.request.contextPath}/foundationView/supplyMain.jsp"
					style="font-size: 13px; color: white;">物資管理</a></li>
				</c:if>
				<li><a href="${pageContext.request.contextPath}/member/logout"
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
				<li><a href="${pageContext.request.contextPath}/member/login"
					style="font-size: 13px; color: white;">GOOGLE登入</a></li>
			</ul>
		</li>
	</c:if>
</ul>