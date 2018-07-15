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
<title>捐贈物資建檔</title>
</head>

<body style="background: #FFF0F5;">
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
	<!-- 主要畫面 -->
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading title wow fadeInDown">
				<span class="nino-subHeading"
					style="font-family: '微軟正黑體'; font-size: 40px;">捐贈物資商品管理</span>
			</h2>
			<p class="nino-sectionDesc wow fadeInDown"
				style="font-family: '微軟正黑體'; font-size: 20px;">
				誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！</p>
			<!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
			<div class="sectionContent">
				<div class="row nino-hoverEffect" id="activityRow">
					<div class="col-md-3 col-sm-3">
						<button type="button" class="btn btn-primary btn-lg" id="addNewGoods"
							data-toggle="modal" data-target="#NewGoodsModal"
							style="border: 0px #fff0f5 none; background-color: #fff0f5;">
							<div class="item">
								<div class="overlay box" href="#">
									<div class="content box-top">
										<a style="font-size: 36px">上架捐贈物資</a>

									</div>
									<img src="./img/plus.png" alt="" style="border-radius: 15%;">
								</div>
							</div>
						</button>
					</div>
				</div>
			</div>
	</section>
	<div w3-include-html="${pageContext.request.contextPath}/footer.jsp"></div>
	<!-- Modal -->
	<!-- 募款箱表單 -->
	<div class="modal fade" id="NewGoodsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
							style="font-family: '微軟正黑體'; font-size: 20px;">新增商品圖片</h4>
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
												<span>選擇商品照片</span> <input id="input_img"
													accept="image/gif, image/jpeg, image/png" type="file"
													name="file1"
													style="position: relative; top: 50%; left:50%; z-index: -2; height: 0px;" />
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
		<!-- 	include -->
	<script src="https://www.w3schools.com/lib/w3.js"></script>
	<script>
		w3.includeHTML();
	</script>
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

	var GoodsList;
	var fk_payIdcard;
	var Goods_now;
	
	var has_pic = false;
	var pic_count = 0;
	var pic_max = 5;
	$(document).ready(function() {
		setTimeout(
				function() {
					fk_payIdcard = $("#memberBean").attr("data-funIdcard");
					$('body').getGoodsList();
				}
				,100)
		
		
	});
	$("#crop_img").on("click",function() {
		$('body').showLittlePic();
	});
	
	//ReNew
	$("#addNewGoods").on("click",function() {
		$('body').reNewGoodModal();
	});
	//顯示商品資料
	jQuery.fn.showGoods_D = function(Supply) {
		$('body').reNewGoodModal();
		var supName = $('#supName').val(Supply.supName);
		var supNeedStock = $('#supNeedStock').val(Supply.supNeedStock);
		var supArticle = $('#supArticle').val(Supply.supArticle);
		var supIntro = $('#supIntro').val(Supply.supIntro);
		var supImgList = Supply.supImgBean;
		for(var i = 0; i < supmgList.length; i++){

			console.log("jsaon: "+JSON.stringify(supImgList[i].supImg));
// 			objectURL = URL.createObjectURL(goodImgList[i].goodsImg);
// 			$('body').loadPic(objectURL);
		}
	}
	
	jQuery.fn.showLittlePic = function() {
		if (pic_count < pic_max && has_pic == true) {
			pic_count++;
			if(pic_count>= pic_max){
				$('#startToCropImg').hide();
			}else{
				$('#startToCropImg').show();
			}
			$('#input_img').appendTo($("#NewGoodsModal"));
			$('#input_img').attr("id","input_img"+pic_count);
			$('#input_img_chouse').append('<input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position: relative; top: 50%; left:50%; z-index: -2; height: 0px;">');
			var crop_img = $("#preview_img").attr("src");
// 					console.log(crop_img);
			$("#little_img")
					.append('<div class="col-md-2 col-sm-2" style="width: 87px;margin-top:10px;padding:5px 5px; cursor: pointer; ">'
							+ '<img id="supImg'+pic_count+'" src="'
				+crop_img
				+'" style="max-height:87px; border:2px #95e1d3 solid;"></div>');

			$('#supImg' + pic_count).on("click",
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
	}
	jQuery.fn.loadPic = function(srcUrl) {			
		$uploadCrop = null;
		has_pic = false;
		$("#div_changePic").empty();
		$("#div_changePic").append('<img id="preview_img" src="" width="100%" height="">');
		readURL(srcUrl);
		$('body').showLittlePic();
		}
	jQuery.fn.reNewGoodModal = function() {
			pic_count = 0;
			$('#NewGoodsModal').empty();
			$('#NewGoodsModal').append('<form action="addOneSupply" enctype="multipart/form-data"><div class="modal-dialog modal-lg" role="document">'
					+'<div class="modal-content">'
					+'<div class="modal-header">'
					+'<button type="button" class="close" data-dismiss="modal"'
					+'aria-label="Close">'
					+'<span aria-hidden="true">&times;</span>'
					+'</button>'
					+'<h4 class="modal-title" id="myModalLabel"'
					+'style="font-family: "微軟正黑體"; font-size: 20px;">新增愛心商品</h4>'
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
					+'style="width: 130px">商品名稱 :</button>'
					+'</span> <input type="text" class="form-control" placeholder=""'
					+'required style="z-index: 1" id="supName">'
					+'</div>'
					+'<div class="input-group input-group-lg">'
					+'<span class="input-group-btn">'
					+'<button class="btn btn-success" type="submit"'
					+'style="width: 130px">上架數量 :</button>'
					+'</span> <input type="text" class="form-control" placeholder=""'
					+'required style="z-index: 1" id="supNeedStock">'
					+'</div>'
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
					+'<div class="panel-body" style="height: 120px;">'
					+'<h4 class="panel-title">'
					+'<div style="font-family: "微軟正黑體"; font-size: 16px;">捐贈商品簡介</div>'
					+'</h4>'
					+'<textarea class="form-control" id="goodsIntro"'
					+'placeholder="" rows="3" style="resize : none;" onKeyDown="if (this.value.length>=200){event.returnValue=false}"></textarea>'
					+'</div></div>'
					+'<div id="collapseOne1" class="panel-collapse collapse in"'
					+'role="tabpanel" aria-labelledby="headingOne">'
					+'<div class="panel-body" style="height: 167px;">'
					+'<h4 class="panel-title">'
					+'<div style="font-family: "微軟正黑體"; font-size: 16px;">商品詳述</div>'
					+'</h4>'
					+'<textarea class="form-control" id="goodsArticle"'
					+'placeholder="" rows="6" style="resize : none;"></textarea>'
					+'</div></div></div></div>'
					+'<div class="modal-footer">'
					+'<button type="button" class="btn btn-default" data-dismiss="modal"'
					+'style="font-family: "微軟正黑體"; font-size: 15px;">取消</button>'
					+'<button type="button" class="btn btn-primary" id="addNewGoods_bt"'
					+'style="font-family: "微軟正黑體"; font-size: 15px;">商品上架</button>'
					+'</div></div></div></form>');
			
			$('body').startToCropImg();
			//新建Goods，送資料給Server
			$('#addNewGoods_bt').on("click", function() {
				$('body').sendDataToSever();
			});
		}
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
										//  type: 'circle'
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

		}

	jQuery.fn.showGoods = function(Supply) {
		var button = $(
				'<button type="button" date-supUid="'+ Supply.goodsUid +'" class="Goods btn btn-primary btn-lg col-md-3 col-sm-3"'
				+' data-toggle="modal" data-target="#NewGoodsModal" style="border:0px #fff0f5 none;background-color:#fff0f5;"></button>')
				.appendTo($("#activityRow"));

		var Supply_info = $(
				'<div class="item">'
						+ '<div class="overlay box" href="#">'
						+ '<div class="content">'
						+ '<a style="font-size: 36px">'
						+ Supply.supNeedStock
						+ '</a></div>'
						+ '<img src="./img/box1.png" alt="" style="border-radius: 15%;">'
						+ '</div></div>').appendTo(button);
		var Supply_title = $(
				'<div style="font-size: 20px; text-align: center; font-weight:bold; color:#ccc;">'
						+ Supply.supName + '</div>').appendTo(button);
	}
	jQuery.fn.clickGoods = function() {
		$(".Goods").on("click", function() {
			var supUid = $(this).attr("date-supUid")
			console.log("檢視Goods");
			for (var i = 0; i < GoodsList.length; i++) {
				var Supply = GoodsList[i];
				if (Supply.goodsUid == suppUid) {
					Goods_now = Goods
					$('body').showGoods_D(Supply);

				}
			}
		});
	}

	jQuery.fn.getGoodsList = function() {
		return this.each(function() {
			var xhr = new XMLHttpRequest();
			xhr.open("Post", "getGoodsList?fk_payIdcard=" + fk_payIdcard,
					true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					var funBean = JSON.parse(xhr.responseText);
					patBoxList = [];
					console.log("fk_payIdcard: "+fk_payIdcard);
					console.log("funBean: "+funBean);
					if(funBean!=null){
						GoodsList = funBean.Goods;
					}					
					console.log("清空Goods");
					$(".Goods").remove();
					console.log(GoodsList);
					console.log("重建Goods");
					if(GoodsList!=null){
						for (var i = 0; i < GoodsList.length; i++) {
								$('body').showGoods(GoodsList[i]);
						}
						$('body').clickGoods();
					}else{
						alert("沒有商品")
					}
				}
			}
		});
	}
	//送資料給Server
	jQuery.fn.sendDataToSever = function() {
		console.log("準備新建Goods");
		var xhr = new XMLHttpRequest();
		var supName = $('#supName').val();
		var supNeedStock = $('#supNeedStock').val();
		var supArticle = $('#supArticle').val();
		var supIntro = $('#supIntro').val();


        var fd = new FormData();
        fd.append("supName", supName);
        fd.append("supNeedStock", supNeedStock);
        fd.append("supArticle", supArticle);
        fd.append("supIntro", supIntro);
        
        var supImg = $('#input_img1')[0].files[0];
        if(supImg !=null){
       		fd.append("supImg", $('#input_img1')[0].files[0]);
        }
        for(var i = 1;i<=pic_count;i++){
        	var supImg = $('#input_img'+i)[0].files[0];
        	if(supImg != null){
        		fd.append("supImg"+i,supImg);
        	}
        }
		xhr.open("POST", "/HalfOf73//foundationView/addOneSupply", true);
		xhr.send(fd);
		xhr.onreadystatechange = function() {
			if (xhr.status == 200 && xhr.readyState == 4) {
				$('#NewGoodsModal').hide();
				var jsonString = xhr.responseText;
				console.log("jsonString= " + jsonString);
				console.log("jsonString.length= "
						+ jsonString.length);
				if (jsonString.length < 10) {
					alert("無法新建商品");
				} else {
//						var Goods = JSON.parse(xhr.responseText);
//						console.log(Goods);
				}
//					$('body').getGoods_now(supUid);
				
			}
		}

	}
	</script>

</body>

</html>