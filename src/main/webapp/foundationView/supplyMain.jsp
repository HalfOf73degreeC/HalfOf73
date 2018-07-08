<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap2.min.css">
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/template.css">
<link rel="stylesheet" type="text/css" href="css/switch.css">
<link rel="stylesheet" href="resource/WOW-master/css/libs/animate.css">
<link rel="stylesheet" href="css/croppie.css">
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
<script type="text/javascript" src="js/croppie.js"></script>
<!--     <Script type="text/javascript" src="js/previewImg.js"></Script> -->
<title>supplyMain</title>
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
				<div class="row nino-hoverEffect">
					<div class="col-md-3 col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" id="addNewGoods"
							data-toggle="modal" data-target="#addNewGoodsModal"
							style="border: 0px #fff0f5 none; background-color: #fff0f5;">
							<div class="item">
								<div class="overlay box" href="#">
									<div class="content box-top">
										<a style="font-size: 36px">所需物資</a>

									</div>
									<img src="./img/plus.png" alt="" style="border-radius: 15%;">
								</div>
							</div>
						</button>
					</div>
					<button type="button"
						class="btn btn-primary btn-lg col-md-3 col-sm-3"
						data-toggle="modal" data-target="#myModal2"
						style="border: 0px #fff0f5 none; background-color: #fff0f5;">
						<div class="item">
							<div class="overlay box" href="#">
								<div class="content">
									<a style="font-size: 36px">${物資名稱}</a>
								</div>
								<img src="./img/box1.png" alt="" style="border-radius: 15%;">
							</div>
						</div>
					</button>
				</div>
			</div>
	</section>
	<!-- Modal -->
	<!-- 募款箱表單 -->
	<div class="modal fade" id="addNewGoodsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	</div>
	<!-- Modal2 -->
	<!-- 新增照片&圖片裁切-->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" style="z-index: 1050;">
		<div class="modal-dialog" role="document" style="">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"
						style="font-family: '微軟正黑體'; font-size: 20px;">新增物資圖片</h4>
				</div>
				<div class="modal-body">
					<div id="collapseOne1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body" style="height: auto;">
							<div class="row">
								<div class="">
									<div class="text-center"
										style="margin-top: -55px; margin-left: -10px;">
										<div id="div_changePic" style="margin-top: 50px;">
											<img id="preview_img" src="" width="100%" height="">
										</div>
										<label for="input_img" style=""> <buttom
												id="input_img_chouse"
												style="color: #95e1d3; font-size: 25px;font-weight:bold;z-index:2; cursor:pointer;">
											<span>選擇物資照片</span> <input id="input_img"
												accept="image/gif, image/jpeg, image/png" type="file"
												name="file1"
												style="position: relative; top: -100; z-index: -2; height: 0px;" />
											</buttom>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer" style="">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="font-family: '微軟正黑體'; font-size: 15px;">取消</button>
						<button type="button" id="crop_img" data-dismiss="modal"
							class="btn btn-primary upload-result"
							style="font-family: '微軟正黑體'; font-size: 15px;">確定</button>
					</div>
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
	
	jQuery.fn.startToCropImg = function() {
	//選擇圖片用	
		$("#startToCropImg").on("click",function() {			
			$uploadCrop = null;
			has_pic = false;
			$("#div_changePic").empty();
			$("#div_changePic").append('<img id="preview_img" src="" width="100%" height="">');
			$("#input_img").change(function(){
	            readURL(this);
	          });
			});

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#preview_img").attr('src',e.target.result);
					if ($uploadCrop == null) {
						$uploadCrop = $("#preview_img")
								.croppie({
									enableExif : true,
									viewport : {
										width : 300,
										height : 300,
									//               	        type: 'circle'
									},
									boundary : {
										width : 400,
										height : 400
									}
								});
					}
					has_pic = true;
					$uploadCrop.croppie('bind', {
						url : e.target.result
					});
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		var has_pic = false;
		var pic_count = 0;
		var pic_max = 5;
		$("#crop_img").on("click",function() {
							if (pic_count < pic_max && has_pic == true) {
								pic_count++;
								if(pic_count>= pic_max){
									$('#startToCropImg').hide();
								}else{
									$('#startToCropImg').show();
								}
								var crop_img = $("#preview_img").attr("src");
								// 		console.log(crop_img);
								$("#little_img")
										.append(
												'<div class="col-md-2 col-sm-2" style="width: 87px;margin-top:10px;padding:5px 5px; cursor: pointer; ">'
														+ '<img id="goodsImg'+pic_count+'" src="'
									+crop_img
									+'" style="max-height:87px; border:2px #95e1d3 solid;"></div>');

								$('#goodsImg' + pic_count).on("click",
										function() {
											console.log("click");
											var src = $(this).attr("src");
											console.log(src);
											$("#showImg").attr("src", src);
										});
							} else if (has_pic == true) {
								alert("圖片已達上限");
							} else if (has_pic == false) {
								alert("沒有圖片");
							}
						});
		//送資料給Server
		$('#addNewGoods_bt').on("click", function() {
			console.log("準備新建Goods");
			var xhr = new XMLHttpRequest();
			var goodsName = $('#goodsName').attr(
					"date-payBoxNumber");
			var goodsStock = $('#goodsStock').val();
			var goodsPrice = $('#goodsPrice').val();
			var goodsArticle = $('#goodsArticle').val();
			
			var ImgBox=[]			
			for(var i = 0; i < pic_count; i++){
				var goodsImg = $('#goodsImg'+i).attr("src");
				ImgBox.add(goodsImg);
			}
			var goodsImg1 = $('#goodsImg1').attr("src");
			var goodsImg2 = $('#goodsImg2').attr("src");
			var goodsImg3 = $('#goodsImg3').attr("src");
			var goodsImg4 = $('#goodsImg4').attr("src");
			var goodsImg5 = $('#goodsImg5').attr("src");
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
		
		
		
		
		
	}
	//ReNew
	$("#addNewGoods").on("click",function() {
		pic_count = 0;
		$('#addNewGoodsModal').empty();
		$('#addNewGoodsModal').append('<div class="modal-dialog modal-lg" role="document">'
				+'<div class="modal-content">'
				+'<div class="modal-header">'
				+'<button type="button" class="close" data-dismiss="modal"'
				+'aria-label="Close">'
				+'<span aria-hidden="true">&times;</span>'
				+'</button>'
				+'<h4 class="modal-title" id="myModalLabel"'
				+'style="font-family: "微軟正黑體"; font-size: 20px;">新增所需物資</h4>'
				+'</div>'
				+'<div class="modal-body">'
				+'<div id="collapseOne1" class="panel-collapse collapse in"'
				+'role="tabpanel" aria-labelledby="headingOne">'
				+'<div class="panel-body" style="height: 205px;">'
				+'<div class="row">'
				+'<div class="col-md-4">'
				+'<div class="text-center" id="changePic"'
				+'style="margin-top: 0px; margin-left: -10px;">'
				+'<img id="showImg" style="width: 250px; height: 250px;"'
				+'src="./img/no_image6.png">'
				+'</div>'
				+'</div>'
				+'<div class="col-md-8">'
				+'<div class="input-group input-group-lg">'
				+'<span class="input-group-btn">'
				+'<button class="btn btn-success" type="submit"'
				+'style="width: 130px">物資名稱 :</button>'
				+'</span> <input type="text" class="form-control" placeholder=""'
				+'required style="z-index: 1" id="goodsName">'
				+'</div>'
				+'<div class="input-group input-group-lg">'
				+'<span class="input-group-btn">'
				+'<button class="btn btn-success" type="submit"'
				+'style="width: 130px">所需數量 :</button>'
				+'</span> <input type="text" class="form-control" placeholder=""'
				+'required style="z-index: 1" id="goodsStock">'
				+'</div>'
				+'<div class="input-group input-group-lg">'
// 				+'<span class="input-group-btn">'
// 				+'<button class="btn btn-success" type="submit"'
// 				+'style="width: 130px">單價 :</button>'
// 				+'</span> <input type="text" class="form-control" placeholder=""'
// 				+'required style="z-index: 1" placeholder="$" id="goodsPrice">'
// 				+'</div>'
				+'<div class="row" style="padding: 10px;" id="little_img">'
				+'<button type="button" id="startToCropImg" data-toggle="modal"'
				+'data-target="#myModal2"'
				+'style="width: 100px; border: 0px #fff none; background-color: #fff; outline: 0px none;">'
				+'<div class="item">'
				+'<div class="overlay box" href="#">'
				+'<img src="./img/plus2.png" alt=""'
				+'style="border-radius: 15%;">'
				+'</div></div></button></div></div></div></div></div>'
				+'<div class="panel-heading" role="tab" id="headingOne"'
				+'style="margin-top: 50px;">'
				+'<div id="collapseOne1" class="panel-collapse collapse in"'
				+'role="tabpanel" aria-labelledby="headingOne">'
				+'<div class="panel-body" style="height: 167px;">'
				+'<h4 class="panel-title">'
				+'<div style="font-family: "微軟正黑體"; font-size: 16px;">物資用途詳述</div>'
				+'</h4>'
				+'<textarea class="form-control" id="goodsArticle"'
				+'placeholder="" rows="6" style="resize : none;"></textarea>'
				+'</div></div></div></div>'
				+'<div class="modal-footer">'
				+'<button type="button" class="btn btn-default" data-dismiss="modal"'
				+'style="font-family: "微軟正黑體"; font-size: 15px;">取消</button>'
				+'<button type="button" class="btn btn-primary" id="addNewGoods_bt" data-dismiss="modal"'
				+'style="font-family: "微軟正黑體"; font-size: 15px;">提出需求</button>'
				+'</div></div></div>');
		
		$('body').startToCropImg();
	});
	</script>
</body>

</html>