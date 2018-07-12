<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mem" value="${memberBean}"></c:set>	
<!DOCTYPE html>
<html lang="en">
<!-- icon -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
	integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
	crossorigin="anonymous">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="./css/bootstrap2.min.css">
<link rel="stylesheet" type="text/css" href="./css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/template.css">
<link rel="stylesheet" type="text/css" href="./css/switch.css">
<link rel="stylesheet" href="./resource/WOW-master/css/libs/animate.css">
<link rel="stylesheet" type="text/css" href="../css/materialdesignicons.min.css" />
<!-- javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
<script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="../js/unslider-min.js"></script>
<script type="text/javascript" src="./js/template.js"></script>
<title>愛心捐款 - Half Of 73°C</title>
<!-- favicon -->
<link rel="shortcut icon" href="../images/ico/like.png">
</head>
<div w3-include-html="${pageContext.request.contextPath}/modal_loading.jsp"></div>
<body>
	<header id="nino-story">
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header" w3-include-html="../logo.jsp"></div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="nino-menuItem pull-right">
					<div class="collapse navbar-collapse pull-left"
						id="nino-navbar-collapse">
						<ul class="nav navbar-nav">
							<!-- 					<li><a href="supply.html">回到商品總攬</a></li> -->
							<!-- 					<li class="active"><a href="#nino-story">商品基本資料</a></li> -->
							<!-- 					<li><a href="#nino-ourTeam">商品詳細資料</a></li> -->
						</ul>
					</div>
					<!-- /.navbar-collapse -->
					<div class="nino-menuItem pull-right"
						w3-include-html="../navbar_right.jsp"></div>
				</div>
			</div>
		</nav>
	</header>
	<!-- <body style="background: #FFF0F5;"> -->
	<!-- 主要畫面 -->
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading title wow fadeInDown">
				<span class="nino-subHeading"
					style="font-family: '微軟正黑體'; font-size: 40px;">愛心捐款</span>
			</h2>
			<p class="nino-sectionDesc wow fadeInDown"
				style="font-family: '微軟正黑體'; font-size: 20px;">
				誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！</p>
			<!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="row" id="activityRow">

<!-- 						<div class="col-sm-3 col-md-3"> -->
<!-- 							<div class="thumbnail" data-toggle="modal" -->
<!-- 								data-target="#editPatBox" -->
<!-- 								style="border-radius: 5%; border-style: solid; border-width: 2px; border-color: #9ae2d5;"> -->
<!-- 								<img src="./img/news.jpg" style="border-radius: 5%;" alt=""> -->
<!-- 								<div class="caption"> -->
<!-- 									<h3>唐氏症基金會</h3> -->
<!-- 									<p class="articleDesc" style="text-align: left;">唐寶寶與心智障礙者的工作環境和流程，都需經過個別觀察和設計，也需要較高的人力及成本。唐氏症基金會的「工作訓練計畫」，以「庇護商店」做為訓練場域，除了基本的就業技能，生活自理能力、社會互動、作業態度等等，都是我們的培訓重點。希望協助他們培養就業能力跟增加工作機會，進而到職場任職，讓他們經濟獨立、自給自足，讓爸爸媽媽卸下心中最沉重的憂慮，知道孩子能靠自己的雙腳在社會中立足，也是減少依賴社會福利資源的積極出路。</p> -->
<!-- 									<div style="text-align: left; float: left;"> -->
<!-- 										<a href="#" style="margin-right: 40%; font-size: 16px;">$10000</a> -->
<!-- 									</div> -->
<!-- 									<div style="text-align: right;"> -->
<!-- 										<a href="#" class="btn btn-primary" role="button">了解更多</a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

					</div>
				</div>
			</div>
	</section>
	<div w3-include-html="${pageContext.request.contextPath}/footer.jsp"></div>
</body>
<!-- Modal2 -->
<!-- 了解更多表單 -->
<div class="modal fade" id="editPatBox" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" style="z-index: 1041;">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" id="nino-whatWeDo">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"
					style="font-family: '微軟正黑體'; font-size: 20px; font-weight: bold;">${捐款箱名稱}</h4>
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapseOne" aria-expanded="true"
					aria-controls="collapseOne">
					<button type="button" class="btn btn-danger btn-lg" id=delPayBox
						style="border: 0px #9ae2d5; margin-top: -10px; margin-right: 30px; margin-bottom: -10px; float: right;">
						81000</button>
				</a>
			</div>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-5">
						<div class="modal-body">
							<div id="collapseOne1" class="" role="tabpanel"
								aria-labelledby="headingOne" style="height: 120px;">
								<div class="" style="margin: 2%;">
									<div class="input-group input-group-lg">
										<span class="input-group-btn">
											<button class="btn btn-success" type="submit"
												style="width: 130px">捐款箱名稱 :</button>
										</span> <input type="text" id="payBoxName" class="form-control"
											date-payBoxNumber="" placeholder="" required
											style="z-index: 1">
									</div>
									<div class="input-group input-group-lg">
										<span class="input-group-btn">
											<button class="btn btn-success" type="submit"
												style="width: 130px">ATM銀行代號 :</button>
										</span> <input type="text" id="payBankId" class="form-control"
											placeholder="" required style="z-index: 1">
									</div>
									<div class="input-group input-group-lg">
										<span class="input-group-btn">
											<button class="btn btn-success" type="submit"
												style="width: 130px">ATM帳號 :</button>
										</span> <input type="text" id="payATMAccount" class="form-control"
											placeholder="" required style="z-index: 1">
									</div>
								</div>
							</div>
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<div
										style="font-family: '微軟正黑體'; font-size: 16px; font-weight: bold;">捐款箱詳述</div>
								</h4>
							</div>
							<div id="collapseOne1" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="" style="height: 227px; margin: 2%;">
									<textarea class="form-control" id="payBoxDetail_input"
										placeholder="" rows="10" style="resize: none;"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6" style="margin: 30px 30px;">
						<a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-controls="collapseOne">
							<c:choose>
								<c:when test="${mem.memType == '1'}">
     								<button id="commit_Payment" type="button"class="btn btn-primary btn-lg" data-toggle="modal"data-target="#myModal3"style="float: right; border: 0px #9ae2d5; width: 130px; padding-bottom: 10px; margin-top: -12px;">
										<i class="fas fa-dollar-sign nino-icon"style="font-size: 22px; margin-top: 2px; margin-right: 1px;"></i>
										<span style="font-family: '微軟正黑體'; font-weight: bold; font-size: 18px; margin-right: 15px;">立即捐款</span>
									</button>
   								</c:when>
   								<c:otherwise>
   									<button id="commit_Payment" type="button"class="btn btn-primary btn-lg"style="float: right; border: 0px #9ae2d5; width: 130px; padding-bottom: 10px; margin-top: -12px;">
										<i class="fas fa-sign-out-alt nino-icon"style="font-size: 22px; margin-top: 2px; margin-right: 1px; color:#fff;"></i>
										<a href="${pageContext.request.contextPath}/member/login"style="font-size: 13px; color: white;">
											<span style="font-family: '微軟正黑體'; font-weight: bold; font-size: 18px; margin-right: 15px;">登入捐款</span>
										</a>
									</button>
   								</c:otherwise>
							</c:choose>
						</a>
						<div style="clear: both;"></div>

						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#payBoxOutList"
											aria-expanded="false" aria-controls="payBoxOutList"> <i
											class="mdi mdi-chevron-up nino-icon arrow"></i> <i
											class="fas fa-user-alt nino-icon"></i>
											<div style="text-align: left;">花費明細</div>
										</a>
									</h4>
								</div>
								<div id="payBoxOutList" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="payBoxOut_list panel-body" style="height: auto;">
										<div class="input-group input-group-lg" style="height: 15px;">
											<span class="input-group-btn">
												<div class="btn-warning btn"
													style="width: 300px; cursor: default; font-style: normal; font-size: 18px; background: #f9df6b; text-align: left; font-color: black;">花費名稱</div>
											</span>
											<div id="payBoxOut_value" type="text" name="memName"
												class="form-control" style="z-index: 1; text-align: right;">$花費</div>
										</div>

									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#payBoxInList"
											aria-expanded="false" aria-controls="payBoxInList"> <i
											class="mdi mdi-chevron-up nino-icon arrow"></i> <i
											class="fas fa-phone nino-icon"></i>
											<div style="text-align: left;">捐款明細</div>
										</a>
									</h4>
								</div>
								<div id="payBoxInList" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="payBoxIn_list panel-body" style="height: auto;">
										<div class="input-group input-group-lg"
											style="height: 15px;">
											<span class="input-group-btn">
												<div class="btn-warning btn"
													style="width: 300px; cursor: default; font-style: normal; font-size: 18px; text-align: left;">捐款人</div>
											</span>
											<div id="payBoxIn_value" type="text" name="memName"
												class="form-control" style="z-index: 1; text-align: right;">$金額</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal3 -->
<!-- 捐款清單-->
<div class="modal " id="myModal3" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel"
	style="margin-top: -315px; width: 1400px; height: 1000px;">
	<div class="modal-dialog " role="document" style="z-index: 1042;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"
					style="font-family: '微軟正黑體'; font-size: 20px;">捐款清單</h4>
			</div>
			<div class="modal-body">
				<div id="collapseOne1" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne">
					<div class="panel-body" style="height: auto;">
						<div style="clear: both;"></div>
						<div class="input-group input-group-lg">
							<span class="input-group-btn">
								<button class="btn btn-success" type="submit"
									style="width: 130px; cursor: default;">本次捐款總額:</button>
							</span> <input disabled="disabled" type="text" id="show_Payment"
								class="form-control" placeholder="請點選右下方捐款金額按鈕"
								style="cursor: default; z-index: 1; text-align: right;">
						</div>
						<div style="margin-top: 2%;">
							<div class="row" style="float: right;">
								<div class="col-md-4" style="padding-left: 5px;">
									<button id="plus100" value="100" type="button"
										class="btn btn-primary"
										style="width: 70px; font-family: '微軟正黑體'; font-size: 15px;">$100</button>
								</div>
								<div class="col-md-4" style="padding-left: 5px;">
									<button id="plus500" value=500 "" type="button"
										class="btn btn-primary"
										style="width: 70px; font-family: '微軟正黑體'; font-size: 15px;">$500</button>
								</div>
								<div class="col-md-4" style="padding-left: 5px;">
									<button id="plus1000" value="1000" type="button"
										class="btn btn-primary"
										style="width: 70px; font-family: '微軟正黑體'; font-size: 15px;">$1000</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
				<button type="button" id="send2Final" class="btn btn-primary"
					data-toggle="modal" data-target="#myModal4"
					style="font-family: '微軟正黑體'; font-size: 15px;">確認送出</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal4 -->
<!-- 最後確定表單-->
<div class="modal " id="myModal4" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-sm" role="document"
		style="z-index: 1043;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"
					style="font-family: '微軟正黑體'; font-size: 20px;">確認捐款</h4>
			</div>
			<div class="modal-body" id="paymentMsg" style="color: #888; font-weight: bold;">
				${mem.memName}您好:<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次捐款金額:<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基金會ATM銀行代號:<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基金會ATM帳號:{...} <br>若確認無誤，請按下方再次確認。
				<br>感謝您對敝基金會的付出與關懷。
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
				<button type="button" id="createPayBoxIn" class="btn btn-primary" data-toggle="modal" data-target="#modal_loading"
					style="font-family: '微軟正黑體'; font-size: 15px;">再次確認</button>
			</div> 
		</div>
	</div>
</div>


<script src="./resource/WOW-master/dist/wow.min.js"></script>
<script>
	wow = new WOW({
		boxClass : 'wow', // default
		animateClass : 'animated', // default
		offset : 0, // default
		mobile : true, // default
		live : true
	// default
	})
	wow.init();
</script>
<script>
	var payBox_now;
	$(document).ready(function() {
		var payment = 0;
		$('#commit_Payment').click(function() {
			$('#show_Payment').val("");
			payment = 0;
		});
		// $('#show_Payment').val(0);

		$('#plus100').click(function() {
			payment += 100;
			$('#show_Payment').val("$" + (payment));
		});
		$('#plus500').click(function() {
			payment += 500;
			$('#show_Payment').val("$" + (payment));
		});
		$('#plus1000').click(function() {
			payment += 1000;
			$('#show_Payment').val("$" + (payment));
		});

		
		$('#send2Final').click(function() {
			var memName = $('#memberBean').attr("data-memName")
			var payATMAccount = $('#payATMAccount').val();
			var payBankId = $('#payBankId').val();
			$('#paymentMsg').html(''+memName+'您好:<br>'
						+ '本次捐款金額:' + payment + 'NTD<br>'
						+ '基金會ATM銀行代號:' + payBankId + '<br>'
						+ '基金會ATM帳號:' + payATMAccount + '<br>'
						+ '若確認無誤，請按下方再次確認。<br>'
											+ '感謝您對敝基金會的付出與關懷。');

						});
				$('#createPayBoxIn').on(
						"click",
						function() {
							console.log("準備新建payboxIn");
							var xhr = new XMLHttpRequest();
							var payBoxNumber = $('#payBoxName').attr(
									"date-payBoxNumber");
							var payAmount = payment;
							xhr.open("Post", "addOnePayBoxIn?payBoxNumber="
									+ payBoxNumber + "&payAmount=" + payAmount,
									true);
							xhr.setRequestHeader("Content-Type",
									"application/x-www-form-urlencoded");
							xhr.send();
							xhr.onreadystatechange = function() {
								if (xhr.status == 200 && xhr.readyState == 4) {
									var jsonString = xhr.responseText;
									$('#modal_loading').modal('hide');
									console.log("jsonString= " + jsonString);
									console.log("jsonString.length= "
											+ jsonString.length);
									if (jsonString.length < 10) {
										alert("無法新建花費");
									} else {
										var payBox = JSON
												.parse(xhr.responseText);
										console.log(payBox);
									}
									$('body').getPayBoxList();
									$('body').getPayBox_now(payBoxNumber);
									$("#myModal3").modal('hide');
									$("#myModal4").modal('hide');

								}
							}

						});

			});

	// 背景刷暗

	$('#commit_Payment').click(function() {
		$('#myModal3').css('background-color', '#333333cc')

	});
	$('#send2Final').click(function() {
		$('#myModal4').css('background-color', '#333333cc')
	});

	// getPayBoxList
	var payBoxList;
	jQuery.fn.getPayBoxList = function() {
		$loadingGIF = $('<div w3-include-html="${pageContext.request.contextPath}/loading.jsp"></div>').appendTo($('#nino-ourTeam'));
		return this.each(function() {
			var xhr = new XMLHttpRequest();
			xhr.open("Get", "getPayBoxList", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					payBoxList = JSON.parse(xhr.responseText);
					$(".PayBox").remove();
					$(loadingGif).hide(500);
					for (var i = 0; i < payBoxList.length; i++) {
						$('body').showPayBox(payBoxList[i]);
					}
					$('body').clickPayBox();

					var len = 50; // 文字>50變成"..."
					$(".articleDesc").each(
							function(i) {
								if ($(this).text().length > len) {
									//$(this).attr("title",$(this).text());
									var text = $(this).text().substring(0,
											len - 1)
											+ "...";
									$(this).text(text);
								}
							});

				}
			}
		});
	}
	jQuery.fn.showPayBox = function(payBox) {
		var button = $(
				'<div class=" focus wow fadeInUp col-sm-3 col-md-3 PayBox" date-payBoxNumber='
				+payBox.payBoxNumber+'>'
						+ '<div class="thumbnail" data-toggle="modal" data-target="#editPatBox" style="border-radius:5%; border-style:solid; border-width:2px; border-color:#9ae2d5;">'
						+ '<img src="./img/news.jpg" style="border-radius:5%;" alt="">'
						+ '<div class="caption">'
						+ '<h3>'
						+ payBox.payBoxName
						+ '</h3>'
						+ '<p class="articleDesc" style="text-align: left;">'
						+ payBox.payBoxDetail
						+ '</p>'
						+ '<div style="text-align:left; float:left;">'
						+ '<a href="#" style="margin-right:40%; font-size:16px;">$'
						+ payBox.balance
						+ '</a></div><div style="text-align:right;">'
						+ '<a href="#" class="btn btn-primary" role="button">了解更多</a>'
						+ '</div></div></div></div>').appendTo(
				$("#activityRow"));

		// 		var paybox_info = $('<div class="item">'
		// 				+ '<div class="overlay box" href="#">'
		// 				+ '<div class="content">'
		// 				+ '<a style="font-size: 36px">'
		// 				+ payBox.balance
		// 				+ '</a></div>'
		// 				+ '<img src="./img/box1.png" alt="" style="border-radius: 15%;">'
		// 				+ '</div></div>').appendTo(button);
		// 		var paybox_title = $('<div style="font-size: 20px; text-align: center; font-weight:bold; color:#ccc;">'
		// 		        + payBox.payBoxName
		// 		        + '</div>').appendTo(button);
	}
	jQuery.fn.showPayBox_D = function(payBoxNumber) {
		$('#delPayBox').empty();
		$('#delPayBox').removeAttr("data-dismiss");
		if (payBox_now.balance > 99999999) {
			$('#delPayBox').attr("class", "btn btn-primary btn-lg");
		} else if (payBox_now.balance > 9999) {
			$('#delPayBox').attr("class", "btn btn-success btn-lg");
		} else if (payBox_now.balance > 0) {
			$('#delPayBox').attr("class", "btn btn-info btn-lg");
		} else if (payBox_now.balance > -9999) {
			$('#delPayBox').attr("class", "btn btn-warning btn-lg");
		} else {
			$('#delPayBox').attr("class", "btn btn-danger btn-lg");
		}

		$('#delPayBox')
				.append(
						'<span	style="float: right; font-family: "微軟正黑體"; font-size: 18px; margin-right: 15px;">'
								+ '$ ' + payBox_now.balance + '</span>');

		$('#payBoxName').val(payBox_now.payBoxName);
		$('#payBoxName').attr("date-payBoxNumber", payBoxNumber);
		if (payBox_now.payBoxType == 1) {
			$('#payBoxType').prop("checked", true);
		} else {
			$('#payBoxType').prop("checked", false);
		}
		$("#payBoxType").attr("date-payBoxNumber", payBoxNumber);
		$('#payATMAccount').val(payBox_now.payATMAccount);
		$('#payBankId').val(payBox_now.payBankId);
		$('#payBoxDetail').val(payBox_now.payBoxDetail);

		var PayBoxOutList = payBox_now.payBoxOut;
		console.log(PayBoxOutList);
		//			
		$('body').showPayBoxOut();
	}
	jQuery.fn.clickPayBox = function() {
		$(".PayBox").on("click", function() {
			var payBoxNumber = $(this).attr("date-payBoxNumber")
			console.log("檢視PayBox");
			for (var i = 0; i < payBoxList.length; i++) {
				var payBox = payBoxList[i];
				if (payBox.payBoxNumber == payBoxNumber) {
					payBox_now = payBox
					$('body').showPayBox_D(payBoxNumber);

				}
			}
		});
	}

	jQuery.fn.getPayBox_now = function(payBoxNumber) {
		return this.each(function() {
			var xhr = new XMLHttpRequest();
			xhr.open("Post", "getPayBox?payBoxNumber=" + payBoxNumber, true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					payBox_now = JSON.parse(xhr.responseText);
					$('body').showPayBox_D();
				}
			}
		});
	}
	jQuery.fn.showPayBoxOut = function() {
		$(".payBoxOut_bt").remove();
		for (var i = 0; i < payBox_now.payBoxOut.length; i++) {
			var payBoxOut = payBox_now.payBoxOut[i];
			var payBoxOut_bt = $(
					'<div class="input-group input-group-lg payBoxOut_bt" date-Id="'+payBoxOut.Id+'">')
					.appendTo($('.payBoxOut_list'));
			var payForName = $(
					'<span class="input-group-btn">'
							+ '<div class="btn-warning btn" style="width: 300px; cursor: default; font-style: normal; font-size: 18px; background: #ffc107; text-align: left;">'
							+ payBoxOut.payForName + '</div></span>').appendTo(
					payBoxOut_bt);
			var payForCost = $(
					'<div id="payBoxOut_value" type="text" name="memName" class="form-control" style="z-index: 1; text-align: right;">'
							+ '$' + payBoxOut.payForCost + '</div>').appendTo(
					payBoxOut_bt);
		}
		$(".payBoxIn_bt").remove();
		for (var i = 0; i < payBox_now.payBoxIn.length; i++) {
			var payBoxIn = payBox_now.payBoxIn[i];
			var payBoxIn_bt = $(
					'<div class="input-group input-group-lg payBoxIn_bt" date-Id="'+payBoxIn.Id+'">')
					.appendTo($('.payBoxIn_list'));
			var MemName = $(
					'<span class="input-group-btn">'
							+ '<div class="btn-warning btn" style="width: 300px; cursor: default; font-style: normal; font-size: 18px; background: #9ae2d5; text-align: left;">'
							+ payBoxIn.MemName + '</div></span>').appendTo(
					payBoxIn_bt);
			var payAmount = $(
					'<div id="payBoxIn_value" type="text" name="memName" class="form-control" style="z-index: 1; text-align: right;">'
							+ '$' + payBoxIn.payAmount + '</div>').appendTo(
					payBoxIn_bt);
		}

	}
	$('body').getPayBoxList();
</script>
<!-- 	include -->
<script src="https://www.w3schools.com/lib/w3.js"></script>
<script>
	w3.includeHTML();
</script>

</html>