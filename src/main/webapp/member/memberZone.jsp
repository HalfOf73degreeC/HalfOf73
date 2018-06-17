<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>會員專區</title>

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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="../css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="../css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="../css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="../css/unslider.css" />
<link rel="stylesheet" type="text/css" href="../css/template.css" />

</head>

<body>

	<CENTER>
		<!-- Header-->
		<!-- Story About Us
    ================================================== -->
		<header id="nino-story"> <nav id="nino-navbar"
			class="navbar navbar-default"
			style="background-color:rgba(243,129,129,0.8);">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#nino-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../index.jsp">Half of 73°C</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<div class="collapse navbar-collapse pull-left"
					id="nino-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#nino-story">我的會員資料</a></li>
						<li><a href="#nino-services">愛心點點滴</a></li>
						<li><a href="#nino-ourTeam">我是基金會</a></li>
						<li><a href="#nino-latestBlog">最新消息</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<ul class="nino-iconsGroup nav navbar-nav">
					<li><a href="#"><i class="mdi mdi-cart-outline nino-icon"></i></a></li>
					
					<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid --> </nav> </header>
		<!--/#header-->


		<!-- Testimonial
    ================================================== -->
		<Form Action="register0403_HO73.do" method="POST">
			<c:set var="mem" value="${memberBean}"></c:set>
			<section id="nino-whatWeDo" style="padding-top:20px; ">
			<div class="container">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">我的會員資料</span>
				</h2>
				<div class="sectionContent">
					<div class="row">
						<div class="col-md-6">
							<div class="text-center">
								<label for="input_img">
									<img id="preview_img" src="${mem.memPicUrl}"
										style="border-radius: 6px; box-shadow: 0 5px 15px -8px rgba(0, 0, 0, .24), 0 8px 10px -5px rgba(0, 0, 0, .2); max-width: 85%; height: auto; cursor:pointer;">
								</label>
								<form action="changePhoto.do" enctype="multipart/form-data" method="POST">
								<input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-215px; right:-190px; z-index:-2;"/>
								</form>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-user-alt nino-icon"></i>
											<div style="text-align: left;">基本資料</div>
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body" style="height: 175px;">
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">姓名:</div>
												</span> <input type="text" name="memName" class="form-control"
													placeholder="" value="${param.memName}${mem.memName}"
													style="z-index: 1">
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 400px; z-index: 2">${ErrorMsg.memName}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">生日:</div>
												</span> <input type="date" name="memBirthday" class="form-control"
													placeholder="" value="${mem.memBirthday}"
													style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">性別:</div>
												</span> <input type="text" name="memGender" class="form-control"
													placeholder="M/F"
													value="${param.memGender}${mem.memGender}"
													style="z-index: 1">

												<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseTwo"
												aria-expanded="false" aria-controls="collapseTwo"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-phone nino-icon"></i>
											<div style="text-align: left;">聯絡方式</div>
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body" style="height: 175px;">
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">郵件:</div>
												</span>
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
												<c:if test="${mem.memEmail2 == null}">
													<input type="email" name="memEmail2" class="form-control"
														value="${param.memEmail}${mem.memEmail}"
														style="z-index: 1">
												</c:if>
												<c:if test="${mem.memEmail2 != null}">
													<input type="email" name="memEmail2" class="form-control"
														value="${param.memEmail2}${mem.memEmail2}"
														style="z-index: 1">
												</c:if>
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 380px; z-index: 2">${ErrorMsg.memEmail}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">電話:</div>
												</span> <input type="text" name="memMobile" class="form-control"
													placeholder="" value="${param.memMobile}${mem.memMobile}"
													style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">住址:</div>
												</span> <input type="text" name="memAddress" class="form-control"
													placeholder="" value="${param.memAddress}${mem.memAddress}"
													style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="台北市新生南路一段97巷" rows="1"></textarea> -->
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingThree">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseThree"
												aria-expanded="false" aria-controls="collapseThree"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-question nino-icon"></i>
											<div style="text-align: left;">為什麼投入公益</div>
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingThree">
										<div class="panel-body" style="height: 175px;">
											<%-- 									<input type="text" name="memWhySupply" class="form-control" placeholder="" value="${param.memWhySupply}${mem.memWhySupply}" style="z-index: 1"> --%>
											<textarea class="form-control" name="memWhySupply"
												placeholder="因為..." rows="6">${param.memWhySupply}${mem.memWhySupply}</textarea>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingFour">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse"
												data-parent="#accordion" href="#collapseFour"
												aria-expanded="false" aria-controls="collapseFour"> <i
												class="mdi mdi-chevron-up nino-icon arrow"></i> <i
												class="fas fa-file-alt nino-icon"></i>
											<div style="text-align: left;">詳細資訊</div>
											</a>
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse"
										role="tabpanel" aria-labelledby="headingFour">
										<div class="panel-body" style="height: 175px;">
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">身分證號:</div>
												</span>
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
												<input type="text" name="memIdcard" class="form-control"
													value="${param.memIdcard}${mem.memIdcard}"
													style="z-index: 1">
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 400px; z-index: 2">${ErrorMsg.memAccount}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">會員類別:</div>
												</span> <input type="text" class="form-control" disabled="disabled"
													value="${param.memType}${mem.memType}" style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
												<!-- 											<input type="text" class="form-control" placeholder="啟用" >												 -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">帳號狀態:</div>
												</span> <input type="text" class="form-control" disabled="disabled"
													value="${param.memStatus}${mem.memStatus}"
													style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="台北市新生南路一段97巷" rows="1"></textarea> -->
											</div>
										</div>
									</div>
								</div>
								<div class="input-group input-group-lg"
									style="padding: 10px 0px">
									<span class="input-group-btn" align="center">
										<button class="btn btn-success" type="submit"
											style="width: 200px; z-index: 1">更新</button>
									</span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			</section>
			<!--/#nino-whatWeDo-->
			<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
		</Form>
		<!-- Services
    ================================================== -->
		<section id="nino-services">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">愛心點點滴</span>

			</h2>
			<div class="sectionContent">
				<div class="fw" layout="row">
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-apple-keyboard-command nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">一包50元</h4>
								流通於各大捷運站的一包50元餅乾 ，一包6片 ，一片不到10元相當划算 。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-blender nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">愛心糖糖</h4>
								糖糖親自手工製做的巧克力 ，有點像健達舒淇蛋 。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-bookmark-plus-outline nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">愛心巧克力</h4>
								巧克力含有豐富的鐵、鈣、鎂、鉀、維生素A、維生素C
								和可可鹼，由於多添加糖分，因此具有高能量值。由天然成分製作的巧克力對人類之外的許多動物有毒（例如:
								狗），但對人類無毒、且其中微量的可可鹼是健康的反鎮靜成分。故食用有助提升精神，增強興奮等功效。可可含有苯乙胺，坊間流傳能使人有戀愛感覺的流言
								。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-buffer nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">黃咖中啡平</h4>
								咖啡普遍分為兩種：備受推崇的小果咖啡（阿拉比卡）及顆粒較粗和酸味較低而苦味較濃的中果咖啡（羅布斯塔）。咖啡一旦成熟，就會經過採摘，加工，烘焙的程序。咖啡是微酸性的，其咖啡因的含量對人體有刺激的作用。咖啡是世界上最流行的飲料之一。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-desktop-mac nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">蛀牙糖葫蘆</h4>
								糖果是糖果糕點的一種，指以糖類為主要成份的一種小吃。在歐美國家，巧克力及口香糖很多時亦會視為糖果的一種。
								在亞洲文化，糖果是僅指指使用黑砂糖或麥芽糖下去製作的產品。而古時歐美甚至使用蜂蜜為原料製作糖果，但因為蜂蜜成分過多不容易控制而不適用工業化生產。若水果或堅果類食物裹上糖衣，則稱為甜食。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-diamond nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">餅乾</h4>
								餅乾（美式英文：Cookie）在美國與加拿大解為細小而扁平的蛋糕式的麵餅。它的名字是由荷蘭語：koekje
								來的，意為「細小的蛋糕」。在英式英語中主要用作分辨美式餅乾如「巧克力餅乾」。早期製造餅乾是由數片細小的蛋榚組合而成。據考證，餅乾是由伊朗人發明的。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-apple-keyboard-command nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">中式糕點</h4>
								中式糕點，又稱唐餅（與西餅相對），指的是用中國傳統工藝加工製作的糕點。因各地物產和風俗習慣不同，逐漸形成不同風格的地方風味。有京式、廣式、蘇式、閩式、揚式等余種樣式。其中又以京、廣、蘇最為著名，花色品種不下2000種。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-blender nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">凰藝節刨冰</h4>
								刨冰，台灣閩南語稱礤冰，台灣客家語主要稱刷冰或擦冰，俗稱剉冰（雪花冰），是一種冰品，將冰塊用特殊機器或手工用刨刀、鑿刀刨細，在上面添加不同配料，或是容器內先放好配料再切冰灑其上。從台灣傳入中國大陸、馬來西亞和越南。
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-bookmark-plus-outline nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Creativity</h4>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-buffer nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">seo</h4>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-desktop-mac nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Css/Html</h4>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-diamond nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">digital</h4>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--/#nino-services-->


		<!-- Our Team
    ================================================== -->
		<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">我是基金會，我要加入</span>
			</h2>
			<p class="nino-sectionDesc">Lorem ipsum dolor sit amet,
				consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
				labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat.</p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content"></div>
								<img
									src="https://nie.res.netease.com/r/pic/20180331/bda67d83-4431-4efa-8698-7ea5aa1bda86.png"
									alt="">
							</div>
						</div>
						<div class="info">
							<a href="https://www.google.com.tw/intl/zh-TW/analytics/"
								class="nino-icon" style="font-size: 20px">加入的好處</a><br> <span
								class="regency">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. </span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content"></div>
								<img
									src="https://nie.res.netease.com/r/pic/20180331/bbb003b0-da5c-4902-a8d5-5c9a412ed5f5.png"
									alt="">
							</div>
						</div>
						<div class="info">
							<a href="memberzone3.html" class="nino-icon"
								style="font-size: 20px">法規與規範</a><br> <span class="regency">Lorem
								ipsum dolor sit amet, consectetur adipiscing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat. </span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content"></div>
								<img
									src="https://nie.res.netease.com/r/pic/20180331/79797299-6d44-48d9-be1b-6b1c9c21afa1.png"
									alt="">
							</div>
						</div>
						<div class="info">
							<a href="../foundation/queryOneFoundation_HO73.do"
								class="nino-icon" style="font-size: 20px">立即加入</a><br> <span
								class="regency">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. </span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--/#nino-ourTeam-->

		<!-- Latest Blog
    ================================================== -->
		<section id="nino-latestBlog">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">最新消息</span>

			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/283.png"
								alt=""></a>
							<div class="date">
								<span class="number">15</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">助孩童遠離暴力威脅，平安長大‎</a>
						</h3>
						<p class="articleDesc">
							邀請您透過公益捐款「終止兒童受暴」行動，一同挺身捍衛兒童平安成長的權利！<br>
							<br>
						</p>

						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/272.png"
								alt=""></a>
							<div class="date">
								<span class="number">14</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">小小益善 支持無國界醫生 </a>
						</h3>
						<p class="articleDesc">
							約3萬5千名救援人員每年為超過80萬人接種麻疹疫苗，立即捐款，支持搶救生命！覆蓋近70個國家 · 數以萬計專業人士投身參與 ·
							服務超過45年 · 人道救援組織</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/273.png"
								alt=""></a>
							<div class="date">
								<span class="number">12</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">捐款幫助他們 讓他們走向快樂‎</a>
						</h3>
						<p class="articleDesc">
							用小錢幫助他們走向夢想，伊甸邀您加入公益行列，讓他們彩繪不一樣的人生，快點行動！小錢力量大，捐款做愛心 · 捐款送愛，照護偏鄉長輩
							· 一塊捐伊甸，一塊做善事</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
						</div>
						</article>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/282.png"
								alt=""></a>
							<div class="date">
								<span class="number">15</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">台灣公益資訊中心</a>
						</h3>
						<p class="articleDesc">
							台灣公益資訊中心係喜瑪拉雅研究發展基金會為台灣非營利組織所建立的公益資訊交流平台，提供公益新聞、活動、人才招募...等訊息發佈，以強化公益團體的資訊
							...</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/296.png"
								alt=""></a>
							<div class="date">
								<span class="number">14</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">Yahoo奇摩公益</a>
						</h3>
						<p class="articleDesc">
							Yahoo奇摩公益提供所有捐款者一個安全、豐富及多元的捐款資訊平台，公益團體更容易地在此匯集社會善心資源，讓捐款更透明，捐款人更安心。
						</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/293.png"
								alt=""></a>
							<div class="date">
								<span class="number">12</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">樂捐款- 樂公益</a>
						</h3>
						<p class="articleDesc">樂公益（Lecoin
							角落）立志為社會大眾提供最方便、最值得信賴、最有分享力量的公益橋樑，透過公益捐款為台灣貧窮弱勢的朋友與團體搭把手，助他們度過人生的
							...</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
						</div>
						</article>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/300.png"
								alt=""></a>
							<div class="date">
								<span class="number">15</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">公益- 維基百科</a>
						</h3>
						<p class="articleDesc">
							這是一個消歧義頁，羅列了有相同或相近的標題，但內容不同的條目。如果您是透過某條目的內部連結而轉到本頁，希望您能協助修正該處的內部連結，將它指向正確
							...</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/253.png"
								alt=""></a>
							<div class="date">
								<span class="number">14</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">sed do eiusmod tempor</a>
						</h3>
						<p class="articleDesc">
							Adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua.<br>
							<br>
						</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
						</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
						<div class="articleThumb">
							<a href="#"><img
								src="https://www.onmyojigame.com/pc/zt/20170116103820/data/shishen_big_beforeAwake/289.png"
								alt=""></a>
							<div class="date">
								<span class="number">12</span> <span class="text">Jan</span>
							</div>
						</div>
						<h3 class="articleTitle">
							<a href="">incididunt ut labore et dolore</a>
						</h3>
						<p class="articleDesc">
							Elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.<br>
							<br>
						</p>
						<div class="articleMeta">
							<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a> <a
								href="#"><i
								class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
						</div>
						</article>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--/#nino-latestBlog-->


		<!-- Footer
    ================================================== -->
		<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="colInfo">
						<div class="footerLogo">
							<a href="#">Half of 73°C</a>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<div class="nino-followUs">
							<div class="totalFollow">
								<span>15k</span> followers
							</div>
							<div class="socialNetwork">
								<span class="text">Follow Us: </span> <a href=""
									class="nino-icon"><i class="mdi mdi-facebook"></i></a> <a
									href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a> <a
									href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-dribbble"></i></a>
								<a href="" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
							</div>
						</div>
						<form action="" class="nino-subscribeForm">
							<div class="input-group input-group-lg">
								<input type="email" class="form-control"
									placeholder="Your Email" required> <span
									class="input-group-btn">
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
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-4.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-5.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
							<li layout="row" class="verticalCenter"><a
								class="articleThumb fsr" href="#"><img
									src="images/our-blog/img-6.jpg" alt=""></a>
								<div class="info">
									<h3 class="articleTitle">
										<a href="#">Lorem ipsum dolor sit amet, consectetur
											adipiscing</a>
									</h3>
									<div class="date">Jan 9, 2016</div>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="colInfo">
						<h3 class="nino-colHeading">instagram</h3>
						<div class="instagramImages clearfix">
							<a href="#"><img src="images/instagram/img-1.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-2.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-3.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-4.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-5.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-6.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-7.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-8.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-9.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-3.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-4.jpg" alt=""></a>
							<a href="#"><img src="images/instagram/img-5.jpg" alt=""></a>
						</div>
						<a href="#" class="morePhoto">View more photos</a>
					</div>
				</div>
			</div>
			<div class="nino-copyright">
				Copyright &copy; 2018 <a target="_blank"
					href="http://www.ninodezign.com/"
					title="Ninodezign.com - Top quality open source resources for web developer and web designer">halfof73.com</a>.
				All Rights Reserved. <br>
				<!-- 			<br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div> -->
			</div>
		</footer>
		<!--/#footer-->

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
		<script type="text/javascript" src="js/previewImg.js"></script>
        
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- css3-mediaqueries.js for IE less than 9 -->
		<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
	</CENTER>
</body>
</html>