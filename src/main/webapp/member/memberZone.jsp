<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">
<head>

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/style.css' type="text/css" />
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
<link rel='stylesheet' type="text/css" href='css/croppie.css' />


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
			<div class="navbar-header" w3-include-html="${pageContext.request.contextPath}/logo.jsp"></div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="nino-menuItem pull-right">
				<div class="collapse navbar-collapse pull-left"
					id="nino-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#nino-story">我的會員資料</a></li>
						<li><a href="#nino-services">愛心點點滴</a></li>
						<li><a href="#nino-ourTeam">我是基金會</a></li>
<!-- 						<li><a href="#nino-latestBlog">最新消息</a></li> -->
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<div class="nino-menuItem pull-right" w3-include-html="${pageContext.request.contextPath}/navbar_right.jsp"></div>
			</div>
		</div>
		<!-- /.container-fluid --> </nav> </header>
		<!--/#header-->


		<!-- Testimonial
    ================================================== -->
		<Form Action="register0403_HO73.do" method="POST"
			enctype="multipart/form-data">
			<c:set var="mem" value="${memberBean}"></c:set>
			<section id="nino-whatWeDo" style="padding-top:20px; ">
			<div class="container">
				<h2 class="nino-sectionHeading">
					<span class="nino-subHeading">我的會員資料</span>
				</h2>
				<div class="sectionContent">
					<div class="row">
						<div class="col-md-6">
							<div class="text-center" id="changePic">
								<c:if test="${empty mem.fileName}">
									<img id="preview_img" src="${mem.memPicUrl}"
										style="border-radius: 6px; box-shadow: 0 5px 15px -8px rgba(0, 0, 0, .24), 0 8px 10px -5px rgba(0, 0, 0, .2); max-width: 400px; height: auto; cursor: pointer;">
								</c:if>
								<c:if test="${not empty mem.fileName}">
									<img id="preview_img"
										src="showPicture.do?memAccount=${mem.memAccount}"
										style="border-radius: 6px; box-shadow: 0 5px 15px -8px rgba(0, 0, 0, .24), 0 8px 10px -5px rgba(0, 0, 0, .2); max-width: 400px; height: auto; cursor: pointer;">

								</c:if>
								<!-- 								<label for="input_img"  style="height:1px;"> -->
								<!-- 								<buttom style="position:relative; top:370px; right:0px; color: #95e1d3; font-size: 18px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;" > -->
								<!-- 								<span>更改大頭貼</span> -->
								<!-- 								<input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-215px; right:-600px; z-index:-2; "/> -->
								<!-- 								</buttom> -->
								<!-- 								</label> -->
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
													placeholder="" value="${mem.memName}" style="z-index: 1">
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 400px; z-index: 2">${ErrorMsg.memName}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">生日:</div>
												</span>
												<fmt:formatDate value="${mem.memBirthday}"
													var="formatMemBirthdayDate" type="date"
													pattern="yyyy-MM-dd" />
												<input type="date" name="memBirthday" class="form-control"
													placeholder="" value="${formatMemBirthdayDate}"
													style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">性別:</div>
												</span> <input type="text" name="memGender" class="form-control"
													placeholder="M/F" value="${mem.memGender}"
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
														value="${mem.memEmail}" style="z-index: 1">
												</c:if>
												<c:if test="${mem.memEmail2 != null}">
													<input type="email" name="memEmail2" class="form-control"
														value="${mem.memEmail2}" style="z-index: 1">
												</c:if>
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 380px; z-index: 2">${ErrorMsg.memEmail}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">電話:</div>
												</span> <input type="text" name="memMobile" class="form-control"
													placeholder="" value="${mem.memMobile}" style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">住址:</div>
												</span> <input type="text" name="memAddress" class="form-control"
													placeholder="" value="${mem.memAddress}" style="z-index: 1">
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
												placeholder="因為..." rows="6">${mem.memWhySupply}</textarea>
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
													value="${mem.memIdcard}" style="z-index: 1">
												<div
													style="color: #FF0000; font-size: 110%; display: inline; position: absolute; top: 15px; left: 400px; z-index: 2">${ErrorMsg.memAccount}</div>
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">會員類別:</div>
												</span> <input type="text" class="form-control" disabled="disabled"
													value="${mem.memType}" style="z-index: 1">
												<!-- <textarea class="form-control" placeholder="0968018815" rows="1"></textarea> -->
												<!-- 											<input type="text" class="form-control" placeholder="啟用" >												 -->
											</div>
											<div class="input-group input-group-lg">
												<span class="input-group-btn">
													<div class="btn btn-success" type="submit">帳號狀態:</div>
												</span> <input type="text" class="form-control" disabled="disabled"
													value="${mem.memStatus}" style="z-index: 1">
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
				<span class="nino-subHeading" style="font-size: 30px">愛心點點滴</span>

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
				<span class="nino-subHeading" style="font-size: 30px">我是基金會，我要加入</span>
			</h2>
			<p class="nino-sectionDesc" style="font-size: 25px">
				Half of 73°C 致力於提供一個便捷方便的公益模式<br>讓熱愛奉獻的您能有一個良好的管道付出愛心
			</p>
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
								class="nino-icon" style="font-size: 20px">Half of 73°C 的特色</a><br>
							<span class="regency"><br>　　我們提供一個簡單快速地流程，讓大家都能更直覺的付出愛心。因為不需要太過冗長的使用導覽，相信也能增加各大基金會曝光各種需求的管道。
							一個便於操作、為他人付出的地方，一直都是我們的核心理念。<br>　　相對於其他的公益平台，我們更增加了愛心義賣的區域，主要提供給各家基金會在募集物資的同時，將募集多餘的物資進行更有效地利用；
							次要提共給所有有意願的廠商，可以利用義賣與點數兌換商品的方式盡一份心力。</span>
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
								style="font-size: 20px">使用規範</a><br> <span class="regency"><br>
								　　各基金會依作業原則規定，於Half of 73°C平臺(以下簡稱本平臺)，集中公開列式之資料，以無償及非專屬授權方式授權使用者得不限時間及地域，重製、改作、編輯、公開傳輸或為其他利用方式，
								開發各種產品或服務（以下簡稱加值衍生物）。提供公眾使用，須取得各資料提供機關(以下簡稱各機關)之書面或其他方式授權，授權範圍不包含商標權及專利權。
								本平臺集中列式之商品、捐款資料，由各基金會維護管理。使用者不得公開發行、公開展示或其他利用本平臺開放資料產生之加值衍生物。	資料來源基金會如於資料集註明另訂使用規範或收費標準者，應依其規定辦理。</span>
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
							<a href="../foundation/foundation_register.jsp" class="nino-icon"

								style="font-size: 20px">立即加入</a><br> <span class="regency"><br>邀請您一同投入分享善意的行列！<br>我們即是缺少了另一半的您=)</span>

						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--/#nino-ourTeam-->
		<!-- Footer
    ================================================== -->
		<div w3-include-html="${pageContext.request.contextPath}/footer.html"></div>
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
		<script type="text/javascript" src="js/croppie.js"></script>
		<script type="text/javascript" src="js/previewImg.js"></script>
<<<<<<< HEAD
=======
		<script src="https://www.w3schools.com/lib/w3.js"></script>
		<script>
			w3.includeHTML();
		</script>
>>>>>>> f400de1959fc82d9a34096b78ae57d223c24f690

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