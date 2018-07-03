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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css" href="./css/bootstrap2.min.css">
<link rel="stylesheet" type="text/css" href="./css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/template.css">
<link rel="stylesheet" type="text/css" href="./css/switch.css">
<link rel="stylesheet" href="./resource/WOW-master/css/libs/animate.css">
<!-- javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
<script type="text/javascript"
	src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="../js/unslider-min.js"></script>
<title>payBoxMain</title>
</head>

<body style="background: #FFF0F5;">
	<!-- 主要畫面 -->
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading title wow fadeInDown">
				<span class="nino-subHeading"
					style="font-family: '微軟正黑體'; font-size: 40px;">捐款管理</span>
			</h2>
			<p class="nino-sectionDesc wow fadeInDown"
				style="font-family: '微軟正黑體'; font-size: 20px;">
				誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！</p>
			<!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
			<div class="sectionContent">
				<div class="row nino-hoverEffect" id="activityRow">
					<div class="col-md-3 col-sm-3">
						<button type="button" class="btn btn-primary btn-lg"
							data-toggle="modal" data-target="#createPatBox"
							style="border: 0px #fff0f5 none; background-color: #fff0f5;">
							<div class="item">
								<div class="overlay box" href="#">
									<div class="content box-top">
										<a style="font-size: 36px">建立募款箱</a>

									</div>
									<img src="./img/plus.png" alt="" style="border-radius: 15%;">
								</div>
							</div>
						</button>
					</div>

				</div>
			</div>
	</section>
	<!-- Modal -->
	<!-- 募款箱表單 -->
	<div class="modal fade" id="createPatBox" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"
						style="font-family: '微軟正黑體'; font-size: 20px; font-weight: bold;">新增募款活動</h4>
				</div>
				<div class="modal-body">
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<div style="clear: both;"></div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">捐款箱名稱 :</button>
								</span> <input type="text" id="payBoxName_input" class="form-control"
									placeholder="" required style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">ATM銀行代號 :</button>
								</span> <input type="text" id="payBankId_input" class="form-control"
									placeholder="" required style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">ATM帳號 :</button>
								</span> <input type="text" id="payATMAccount_input"
									class="form-control" placeholder="" required style="z-index: 1">
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
						<div class="panel-body" style="height: 227px;">
							<textarea class="form-control" id="payBoxDetail_input"
								placeholder="" rows="10"></textarea>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="createPayBox" style="font-family: '微軟正黑體'; font-size: 15px;">建立募款箱</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal2 -->
	<!-- 已建立的募款箱表單 -->
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
						style="font-family: '微軟正黑體'; font-size: 20px; font-weight: bold;">新增募款活動</h4>
					<a role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne" aria-expanded="true"
						aria-controls="collapseOne">
						<button type="button" class="btn btn-danger btn-lg"
							data-toggle="modal" data-target="#myModal3"
							style="border: 0px #9ae2d5; margin-top: -35px; margin-right: 30px; margin-bottom: -35px; float: right;">
							<i class="fas fa-plus nino-icon"
								style="font-size: 20px; float: right; margin-top: 2px; margin-right: 1px;"></i>
							<span
								style="float: right; font-family: '微軟正黑體'; font-size: 16px; margin-right: 15px;">刪除捐款箱</span>
						</button>
					</a>
				</div>
				<div class="sectionContent">
					<div class="row">
						<div class="col-md-5">
							<div class="modal-body">
								<div id="collapseOne1" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										<span
											style="float: left; font-family: '微軟正黑體'; font-size: 16px;">
											是否開放捐款</span>
										<!-- switch2 -->
										<div class="onoffswitch2" style="float: left;">
											<input type="checkbox" id="payBoxType" name="onoffswitch2"
												class="onoffswitch2-checkbox" date-payBoxNumber="" checked>
											<label class="onoffswitch2-label" for="payBoxType"> <span
												class="onoffswitch2-inner"></span> <span
												class="onoffswitch2-switch"></span>
											</label>
										</div>

										<div style="clear: both;"></div>
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
									<div class="panel-body" style="height: 227px;">
										<textarea class="form-control" id="payBoxDetail_input"
											placeholder="" rows="10"></textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6" style="margin: 30px 30px;">
							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-controls="collapseOne">
								<button type="button" class="btn btn-primary btn-lg"
									data-toggle="modal" data-target="#myModal3"
									style="float: right; border: 0px #9ae2d5; width: 170px; padding-bottom: 10px; margin-top: -12px;">
									<i class="fas fa-plus nino-icon"
										style="font-size: 20px; margin-top: 2px; margin-right: 1px;"></i>
									<span
										style="font-family: '微軟正黑體'; font-size: 16px; margin-right: 15px;">新增花費明細</span>
								</button>
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
											<div class="input-group input-group-lg"
												style="height: 15px;">
												<span class="input-group-btn">
													<div class="btn-warning btn"
														style="width: 300px; cursor: default; font-style: normal; font-size: 18px; background: #f9df6b; text-align: left;font-color: black;">花費名稱</div>
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
										<div class="panel-body" style="height: auto;">
											<div class="input-group input-group-lg payBoxIn_list" style="height: 15px;">
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
	<!-- 花費細項表單-->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document"
			style="z-index: 1042; position: relative; left: 0px; top: 50px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"
						style="font-family: '微軟正黑體'; font-size: 20px;">花費紀錄</h4>
				</div>
				<div class="modal-body">
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body" style="height: 160px;">
							<div style="clear: both;"></div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">花費名稱 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
								<input type="text" class="form-control" id="payForName_input"
									placeholder="" required style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">花費金額 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
								<input type="text" class="form-control" id="payForCost_input"
									placeholder="" required style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">統一編號 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
								<input type="text" id="receipt_input" class="form-control"
									placeholder="" required style="z-index: 1">
							</div>
						</div>
					</div>


					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
							<div
								style="margin-top: 10px; font-family: '微軟正黑體'; font-size: 16px;">花費詳述</div>
							<!-- </a> -->
						</h4>
					</div>
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body" style="height: 227px;">
							<textarea name="funArticle" id="payForDetail_input"
								class="form-control" placeholder="" rows="10"></textarea>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="createPayBoxOut"
						style="font-family: '微軟正黑體'; font-size: 15px;">確認送出</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal4 -->
	<!-- 花費細項顯示表單-->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document"
			style="z-index: 1042; position: relative; left: 0px; top: 50px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"
						style="font-family: '微軟正黑體'; font-size: 20px;">花費紀錄</h4>
				</div>
				<div class="modal-body">
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body" style="height: 160px;">
							<div style="clear: both;"></div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">花費名稱 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
								<input type="text" class="form-control" placeholder="" required
									style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">花費金額 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
								<input type="text" class="form-control" placeholder="" required
									style="z-index: 1">
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit"
										style="width: 130px">統一編號 :</button>
								</span>
								<!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
								<input type="text" id="payATMAccount_input" class="form-control"
									placeholder="" required style="z-index: 1">
							</div>
						</div>
					</div>


					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
							<div
								style="margin-top: 10px; font-family: '微軟正黑體'; font-size: 16px;">花費詳述</div>
							<!-- </a> -->
						</h4>
					</div>
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body" style="height: 227px;">
							<textarea name="funArticle" class="form-control" placeholder=""
								rows="10"></textarea>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
					<button type="button" class="btn btn-primary"
						style="font-family: '微軟正黑體'; font-size: 15px;">確認送出</button>
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

		var payBoxList;
		var fk_payIdcard;
		var payBox_now;
		//         AJAX
		$("#createPayBox").on("click", function() {
			$('#createPayBox').createPayBox();
		});

		$(document).ready(function() {
			fk_payIdcard = 1235;
			$('body').getPayBoxList();
		});

		jQuery.fn.showPayBox = function(payBox) {
			var button = $('<button type="button" date-payBoxNumber="'+ payBox.payBoxNumber +'" class="PayBox btn btn-primary btn-lg col-md-3 col-sm-3"'
					+' data-toggle="modal" data-target="#editPatBox" style="border:0px #fff0f5 none;background-color:#fff0f5;"></button>').appendTo($("#activityRow"));
			
			var paybox_info = $('<div class="item">'
					+ '<div class="overlay box" href="#">'
					+ '<div class="content">'
					+ '<a style="font-size: 36px">'
					+ payBox.balance
					+ '</a></div>'
					+ '<img src="./img/box1.png" alt="" style="border-radius: 15%;">'
					+ '</div></div>').appendTo(button);
			var paybox_title = $('<div style="font-size: 20px; text-align: center; font-weight:bold; color:#ccc;">'
			        + payBox.payBoxName
			        + '</div>').appendTo(button);
		}

		jQuery.fn.clickPayBox = function() {
			$(".PayBox").on("click",function() {
						var payBoxNumber = $(this).attr("date-payBoxNumber")
						console.log("檢視PayBox");
						for (var i = 0; i < payBoxList.length; i++) {
							var payBox = payBoxList[i];
							if (payBox.payBoxNumber == payBoxNumber) {
								payBox_now = payBox
								$('#payBoxName').val(payBox.payBoxName);
								$('#payBoxName').attr("date-payBoxNumber",
										payBoxNumber);
								if (payBox.payBoxType == 1) {
									$('#payBoxType').prop("checked", true);
								} else {
									$('#payBoxType').prop("checked", false);
								}
								$("#payBoxType").attr("date-payBoxNumber",
										payBoxNumber);
								$('#payATMAccount').val(payBox.payATMAccount);
								$('#payBankId').val(payBox.payBankId);
								$('#payBoxDetail').val(payBox.payBoxDetail);
								
								var PayBoxOutList = payBox.payBoxOut;
								console.log(PayBoxOutList);
// 								
								$('body').showPayBoxOut();
								
							}
						}
					});
		}

		jQuery.fn.getPayBoxList = function() {
			return this.each(function() {
				var xhr = new XMLHttpRequest();
				xhr.open("Post", "getPayBoxList?fk_payIdcard=" + fk_payIdcard,
						true);
				xhr.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {
						var funBean = JSON.parse(xhr.responseText);
						patBoxList = [];
						console.log(funBean);
						payBoxList = funBean.payBox;
						$(".PayBox").remove();
						for (var i = 0; i < payBoxList.length; i++) {
							if (payBoxList[i].payBoxType == 1) {
								$('body').showPayBox(payBoxList[i]);
							}
						}
						for (var i = 0; i < payBoxList.length; i++) {
							if (payBoxList[i].payBoxType == 0) {
								$('body').showPayBox(payBoxList[i]);
							}
						}
						$('body').clickPayBox();

					}
				}
			});
		}

		jQuery.fn.createPayBox = function() {
			return this.each(function() {
				var xhr = new XMLHttpRequest();
				var payBoxName = $('#payBoxName_input').val();
				var payATMAccount = $('#payATMAccount_input').val();
				var payBankId = $('#payBankId_input').val();
				var payBoxDetail = $('#payBoxDetail_input').val();
				var payBoxType;
				if ($('#payBoxType_input').prop("checked")) {
					payBoxType = 1;
				} else {
					payBoxType = 0;
				}
				xhr.open("Post", "createPayBox?payBoxName=" + payBoxName
						+ "&fk_payIdcard=" + fk_payIdcard + "&payATMAccount="
						+ payATMAccount + "&payBankId=" + payBankId
						+ "&payBoxDetail=" + payBoxDetail + "&payBoxType=" + 1,
						true);
				xhr.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {
						var jsonString = xhr.responseText;
						console.log("jsonString= " + jsonString);
						console.log("jsonString.length= " + jsonString.length);
						if (jsonString.length < 10) {
							alert("無法新建捐款箱");
						} else {
							var payBox = JSON.parse(xhr.responseText);
						}
						$('body').getPayBoxList();
					}
				}
			});
		}

		$("#payBoxType").on("click", function() {
			$('#payBoxType').onOffPayBox($(this).attr("date-payBoxNumber"));
		});
		jQuery.fn.onOffPayBox = function(payBoxNumber) {
			return this.each(function() {
				var xhr = new XMLHttpRequest();
				var payBoxType;
				if ($('#payBoxType').prop("checked")) {
					payBoxType = 1;
				} else {
					payBoxType = 0;
				}
				console.log($('#payBoxType').prop("checked") + ", "
						+ payBoxType);
				xhr.open("Post", "savePayBox?payBoxNumber=" + payBoxNumber
						+ "&payBoxType=" + payBoxType, true);
				xhr.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {
						var payBox = JSON.parse(xhr.responseText);
						$('#payBoxName').val(payBox.payBoxName);
						if (payBox.payBoxType == 1) {
							$('#payBoxType').prop("checked", true);
						} else {
							$('#payBoxType').prop("checked", false);
						}
						console.log(payBox.payBoxType + ", "
								+ $('#payBoxType').prop("checked"));
						$("#payBoxType")
								.attr("date-payBoxNumber", payBoxNumber);
						$('#payATMAccount').val(payBox.payATMAccount);
						$('#payBankId').val(payBox.payBankId);
						$('#payBoxDetail').val(payBox.payBoxDetail);
						$('body').getPayBoxList();
					}
				}
			});
		}

		$('#createPayBoxOut').on("click", function() {
			console.log("準備新建payboxout");
			var xhr = new XMLHttpRequest();
			var payBoxNumber = $('#payBoxName').attr(
					"date-payBoxNumber");
			var payForName = $('#payForName_input').val();
			var payForDetail = $('#payForDetail_input').val();
			var payForCost = $('#payForCost_input').val();
			var receipt = $('#receipt_input').val();
			xhr.open("Post", "addOnePayBoxOut?payBoxNumber="
					+ payBoxNumber + "&fk_payIdcard=" + fk_payIdcard
					+ "&payForName=" + payForName + "&payForDetail="
					+ payForDetail + "&payForCost=" + payForCost
					+ "&receipt=" + receipt, true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					var jsonString = xhr.responseText;
					console.log("jsonString= " + jsonString);
					console.log("jsonString.length= "
							+ jsonString.length);
					if (jsonString.length < 10) {
						alert("無法新建花費");
					} else {
						var payBox = JSON.parse(xhr.responseText);
						console.log(payBox);
					}
					$('body').getPayBox_now(payBoxNumber);
					
				}
			}

		});

		jQuery.fn.showPayBoxOut = function() {
			$(".payBoxOut_bt").remove();
			for(var i = 0; i < payBox_now.payBoxOut.length; i++){
				var payBoxOut = payBox_now.payBoxOut[i];
				var payBoxOut_bt = $('<div class="input-group input-group-lg payBoxOut_bt" date-Id="'+payBoxOut.Id+'">').appendTo($('.payBoxOut_list'));
				var payForName = $('<span class="input-group-btn">' 
						+'<div class="btn-warning btn" style="width: 300px; cursor: default; font-style: normal; font-size: 18px; background: #ffc107; text-align: left;">'
						+payBoxOut.payForName+'</div></span>').appendTo(payBoxOut_bt);
				var payForCost = $('<div id="payBoxOut_value" type="text" name="memName" class="form-control" style="z-index: 1; text-align: right;">'
						+'$'+payBoxOut.payForCost+'</div>').appendTo(payBoxOut_bt);
			}
			
			
		}

		jQuery.fn.clickPayBoxOut = function() {
			$(".payBoxOut_bt").on("click",function() {
						var Id = $(this).attr("date-Id");
						for (var i = 0; i < payBoxOutList.length; i++) {
							var payBoxOut = payBoxOutList[i];
							if (Id == payBoxOut.Id) {
								var payForName = $('#payForName_input').val(payBoxOut.payForName);
								var payForDetail = $('#payForDetail_input').val(payBoxOut.payForDetail);
								var payForCost = $('#payForCost_input').val(payBoxOut.payForCost);
								var receipt = $('#receipt_input').val(payBoxOut.receipt);
							}
						}
					});
		}
		
		jQuery.fn.getPayBox_now = function(payBoxNumber) {
			return this.each(function() {
				var xhr = new XMLHttpRequest();
				xhr.open("Post", "getPayBox?payBoxNumber=" + payBoxNumber,true);
				xhr.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {
						payBox_now = JSON.parse(xhr.responseText);
						$('body').showPayBoxOut();
					}
				}
			});
		}

		
	</script>
</body>

</html>