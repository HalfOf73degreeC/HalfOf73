
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<head>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>會員專區-基金會申請</title>

<!-- favicon -->
<link rel="shortcut icon" href="images/ico/like.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="css/unslider.css" />
<link rel="stylesheet" type="text/css" href="css/template.css" />

</head>

<body>
	<!-- Header-->
	<!-- Story About Us
    ================================================== -->
	<header>
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="../logo.jsp"></div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="nino-menuItem pull-right" w3-include-html="../navbar_right.jsp"></div>
			</div>
			<!-- /.container-fluid -->
		</nav>
	</header>
	<!--/#header-->
	<!-- Testimonial
    ================================================== -->
    
<c:set var="mem" value="${memberBean}"></c:set>
<c:set var="fun" value="${foundationBean}"></c:set>
	<Form Action="registerFoundation_HO73.do" method="POST">	
	<input type="hidden" name="funImage" value="${mem.memPicUrl}">
	<input type="hidden" name="funAccount" value="${mem.memAccount}">
		<section id="nino-whatWeDo">
			<div class="container">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading" width="350px" style="cursor: default;">基金會申請</span>
				</h2>
				<div class="sectionContent">
					<div class="row">
						<div class="col-md-6">
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>聯絡資訊
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 450px;">
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">名稱 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="黃中平" rows="1"></textarea> -->
												<input type="text" name="funName" class="form-control"
													placeholder="" value="${mem.memName}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">愛心碼 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
												<input type="text" name="funIdcard" class="form-control"
													placeholder="" value="${fun.funIdcard}"
													style="z-index: 1">
<%-- 												<input type="text" class="form-control" name="funIdcard" placeholder="" id="userId" size="10" maxlength="7"  value="<%=${fun.funIdcard}%>" onblur="validate(this)"> --%>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">執行長 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funCeo" class="form-control"
													placeholder="" value="${fun.funCeo}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">聯絡人 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funContact" class="form-control" placeholder=""
													value="${fun.funContact}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">網址 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funDomain" class="form-control" placeholder=""
													value="${fun.funDomain}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">電話 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funTel" class="form-control" placeholder=""
													value="${fun.funTel}" style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">傳真 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funFax" class="form-control" placeholder=""
													value="${fun.funFax}" style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">E-mail :</button>
												</span>
												<c:if test="${empty fun.funEmail2}">
												<input type="email" name="funEmail" class="form-control" placeholder=""
													value="${mem.memEmail}"  style="z-index: 1">
												</c:if>
												<c:if test="${not empty fun.funEmail2}">
												<input type="email" name="funEmail2" class="form-control" placeholder=""
													value="${fun.funEmail2}"
													style="z-index: 1">
												</c:if>
											</div>											
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">地址 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funAddress" class="form-control" placeholder=""
													value="${fun.funAddress}"
													style="z-index: 1">
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>基本資料
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 170px;">
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">創辦人 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="黃中平" rows="1"></textarea> -->
												<input type="text" name="funFounder" class="form-control" placeholder=""
													value="${fun.funFounder}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">成立日期 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
												<input type="date" name="funCreateDate" class="form-control"
													placeholder=""
													value="${fun.funCreateDate}"
													style="z-index: 1">
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<button class="btn btn-success" type="submit"
														style="width: 130px; cursor: default;">許可機關 :</button>
												</span>
												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
												<input type="text" name="funAllowOrg" class="form-control" placeholder=""
													value="${fun.funAllowOrg}"
													style="z-index: 1">
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>成立主旨
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 227px;">
											<textarea  name="funIntent" class="form-control" placeholder="" rows="7" style="resize : none;">${fun.funIntent}</textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>服務地區
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 95px;">
											<div class="input-group input-group-lg">
												<div class="checkbox-group">
												<c:if test="${fun.funArea.contains('北部')}">													
													<input type="checkbox" name="funArea" value="北部" checked>北部
												</c:if>
												<c:if test="${!fun.funArea.contains('北部')}">
													<input type="checkbox" name="funArea" value="北部">北部
												</c:if>

												<c:if test="${fun.funArea.contains('中部')}">								
													<input type="checkbox" name="funArea" value="中部" checked>中部
												</c:if>
												<c:if test="${!fun.funArea.contains('中部')}">								
													<input type="checkbox" name="funArea" value="中部">中部
												</c:if>

												<c:if test="${fun.funArea.contains('南部')}">
													<input type="checkbox" name="funArea" value="南部" checked>南部
												</c:if>
												<c:if test="${!fun.funArea.contains('南部')}">								
													<input type="checkbox" name="funArea" value="南部">南部
												</c:if>
												
												<c:if test="${fun.funArea.contains('東部')}">
													<input type="checkbox" name="funArea" value="東部" checked>東部
												</c:if>
												<c:if test="${!fun.funArea.contains('東部')}">								
													<input type="checkbox" name="funArea" value="東部">東部
												</c:if>
												
												<c:if test="${fun.funArea.contains('外島')}">
													<input type="checkbox" name="funArea" value="外島" checked>外島
												</c:if>
												<c:if test="${!fun.funArea.contains('外島')}">								
													<input type="checkbox" name="funArea" value="外島">外島
												</c:if>
												
												<c:if test="${fun.funArea.contains('不分區')}">
													<input type="checkbox" name="funArea" value="不分區" checked>不分區
												</c:if>
												<c:if test="${!fun.funArea.contains('不分區')}">								
													<input type="checkbox" name="funArea" value="不分區">不分區
												</c:if>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>服務對象
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 95px;">
											<div class="input-group input-group-lg">
												<div class="checkbox-group">
												<c:if test="${fun.funServiceUser.contains('老人')}">
													<input type="checkbox" name="funServiceUser" value="老人" checked>老人
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('老人')}">
													 <input type="checkbox" name="funServiceUser"
													 value="老人">老人
												</c:if>
                                                <c:if test="${fun.funServiceUser.contains('身心障礙者')}">
													<input type="checkbox" name="funServiceUser" value="身心障礙者" checked>身心障礙者
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('身心障礙者')}">
													 <input type="checkbox" name="funServiceUser"
													 value="身心障礙者">身心障礙者
												</c:if>
                                                
                                                <c:if test="${fun.funServiceUser.contains('兒童(含青少年)')}">
													<input type="checkbox" name="funServiceUser" value="兒童(含青少年)" checked>兒童(含青少年)
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('兒童(含青少年)')}">
													 <input type="checkbox" name="funServiceUser"
													 value="兒童(含青少年)">兒童(含青少年)
												</c:if>

                                                <c:if test="${fun.funServiceUser.contains('婦女')}">
													<input type="checkbox" name="funServiceUser" value="婦女" checked>婦女
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('婦女')}">
													 <input type="checkbox" name="funServiceUser"
													 value="婦女">婦女
												</c:if>

                                                <c:if test="${fun.funServiceUser.contains('家庭')}">
													<input type="checkbox" name="funServiceUser" value="家庭" checked>家庭
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('家庭')}">
													 <input type="checkbox" name="funServiceUser"
													 value="家庭">家庭
												</c:if>

                                                 <c:if test="${fun.funServiceUser.contains('其他')}">
													<input type="checkbox" name="funServiceUser" value="其他" checked>其他
												</c:if>
												<c:if test="${!fun.funServiceUser.contains('其他')}">
													 <input type="checkbox" name="funServiceUser"
													 value="其他">其他
												</c:if>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>服務項目
											</a>
										</h4>
									</div>
                                    <div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 165px;">
											<div class="input-group input-group-lg">
												<div class="checkbox-group">
                                                <c:if test="${fun.funService.contains('兒童福利')}">
													<input type="checkbox" name="funService" value="兒童福利" checked>兒童福利
												</c:if>
												<c:if test="${!fun.funService.contains('兒童福利')}">
													 <input type="checkbox" name="funService"
													 value="兒童福利">兒童福利
												</c:if>

                                                <c:if test="${fun.funService.contains('少年福利')}">
													<input type="checkbox" name="funService" value="少年福利" checked>少年福利
												</c:if>
												<c:if test="${!fun.funService.contains('少年福利')}">
													 <input type="checkbox" name="funService"
													 value="少年福利">少年福利
												</c:if>

                                                <c:if test="${fun.funService.contains('婦女福利')}">
													<input type="checkbox" name="funService" value="婦女福利" checked>婦女福利
												</c:if>
												<c:if test="${!fun.funService.contains('婦女福利')}">
													 <input type="checkbox" name="funService"
													 value="婦女福利">婦女福利
												</c:if>

                                                <c:if test="${fun.funService.contains('身心障礙者福利')}">
													<input type="checkbox" name="funService" value="身心障礙者福利" checked>身心障礙者福利
												</c:if>
												<c:if test="${!fun.funService.contains('身心障礙者福利')}">
													 <input type="checkbox" name="funService"
													 value="身心障礙者福利">身心障礙者福利
												</c:if>

                                                <c:if test="${fun.funService.contains('老人福利')}">
													<input type="checkbox" name="funService" value="老人福利" checked>老人福利
												</c:if>
												<c:if test="${!fun.funService.contains('老人福利')}">
													 <input type="checkbox" name="funService"
													 value="老人福利">老人福利
												</c:if>

                                                <c:if test="${fun.funService.contains('急難救助')}">
													<input type="checkbox" name="funService" value="急難救助" checked>急難救助
												</c:if>
												<c:if test="${!fun.funService.contains('急難救助')}">
													 <input type="checkbox" name="funService"
													 value="急難救助">急難救助
												</c:if>

                                                <c:if test="${fun.funService.contains('低收入戶補助')}">
													<input type="checkbox" name="funService" value="低收入戶補助" checked>低收入戶補助
												</c:if>
												<c:if test="${!fun.funService.contains('低收入戶補助')}">
													 <input type="checkbox" name="funService"
													 value="低收入戶補助">低收入戶補助
												</c:if>

                                                <c:if test="${fun.funService.contains('醫療補助')}">
													<input type="checkbox" name="funService" value="醫療補助" checked>醫療補助
												</c:if>
												<c:if test="${!fun.funService.contains('醫療補助')}">
													 <input type="checkbox" name="funService"
													 value="醫療補助">醫療補助
												</c:if>

                                                <c:if test="${fun.funService.contains('清寒獎學金')}">
													<input type="checkbox" name="funService" value="清寒獎學金" checked>清寒獎學金
												</c:if>
												<c:if test="${!fun.funService.contains('清寒獎學金')}">
													 <input type="checkbox" name="funService"
													 value="清寒獎學金">清寒獎學金
												</c:if>

                                                <c:if test="${fun.funService.contains('志願服務')}">
													<input type="checkbox" name="funService" value="志願服務" checked>志願服務
												</c:if>
												<c:if test="${!fun.funService.contains('志願服務')}">
													 <input type="checkbox" name="funService"
													 value="志願服務">志願服務
												</c:if>

                                                <c:if test="${fun.funService.contains('臨時捐助')}">
													<input type="checkbox" name="funService" value="臨時捐助" checked>臨時捐助
												</c:if>
												<c:if test="${!fun.funService.contains('臨時捐助')}">
													 <input type="checkbox" name="funService"
													 value="臨時捐助">臨時捐助
												</c:if>

                                                <c:if test="${fun.funService.contains('災害(變)救助')}">
													<input type="checkbox" name="funService" value="災害(變)救助" checked>災害(變)救助
												</c:if>
												<c:if test="${!fun.funService.contains('災害(變)救助')}">
													 <input type="checkbox" name="funService"
													 value="災害(變)救助">災害(變)救助
												</c:if>

                                                <c:if test="${fun.funService.contains('其他社會福利支出')}">
													<input type="checkbox" name="funService" value="其他社會福利支出" checked>其他社會福利支出
												</c:if>
												<c:if test="${!fun.funService.contains('其他社會福利支出')}">
													 <input type="checkbox" name="funService"
													 value="其他社會福利支出">其他社會福利支出
												</c:if>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne" >
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon" style="cursor: default;"></i>工作重點
											</a>
										</h4>
									</div>
									<div id="collapseOne1" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 427px;">
											<textarea  name="funArticle" class="form-control" placeholder="" rows="19" style="resize : none;">${fun.funArticle}</textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="input-group input-group-lg" style="padding: 30px 0px">
				<c:if test = "${empty fun.funAccount}">	
					<span class="input-group-btn" align="center">
						<button class="btn btn-success" type="submit"
							style="width: 200px; z-index: 1">申請</button>
					</span>
				</c:if>
				<c:if test = "${not empty fun.funAccount}">	
					<span class="input-group-btn" align="center">
						<button class="btn btn-success" type="submit"
							style="width: 200px; z-index: 1">更新</button>
					</span>
				</c:if>
				</div>
			</div>
		</section>
		</Form>
		<!--/#nino-whatWeDo-->
		<!-- Footer
    ================================================== -->
		<div w3-include-html="../footer.html"></div>
		<!--/#footer-->

		<!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
<!-- 		<form action="" id="nino-searchForm"> -->
<!-- 			<input type="text" placeholder="Search..." -->
<!-- 				class="form-control nino-searchInput"> <i -->
<!-- 				class="mdi mdi-close nino-close"></i> -->
<!-- 		</form> -->
		<!--/#nino-searchForm-->

		<!-- Scroll to top
    ================================================== -->
		<a href="#" id="nino-scrollToTop">Go to Top</a>

		<!-- javascript -->

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
		<script type="text/javascript" src="js/fun.js"></script>
		<script src="https://www.w3schools.com/lib/w3.js"></script>
			<script>
				w3.includeHTML();
			</script>
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- css3-mediaqueries.js for IE less than 9 -->
		<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</body>
</html>