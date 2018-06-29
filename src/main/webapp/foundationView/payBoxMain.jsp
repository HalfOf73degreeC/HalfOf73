<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9"
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
    <script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="../js/unslider-min.js"></script>
    <title>payBoxMain</title>
</head>

<body style="background: #FFF0F5;">
    <!-- 主要畫面 -->
    <section id="nino-ourTeam">
        <div class="container">
            <h2 class="nino-sectionHeading title wow fadeInDown">
                <span class="nino-subHeading" style="font-family: '微軟正黑體';font-size: 40px;">捐款管理</span>
            </h2>
            <p class="nino-sectionDesc wow fadeInDown" style="font-family: '微軟正黑體';font-size: 20px;">
                誠摯地感謝您一同參與HalfOf73的傳愛平台，世界因為我們而更值得期待！
            </p>
            <!--最新消息管理、需求物資管理、愛心義賣管理、愛的傳遞、捐款管理 -->
            <div class="sectionContent">
                <div class="row nino-hoverEffect" id="activityRow">
                    <div class="col-md-3 col-sm-3">
                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#createPatBox" style="border:0px #fff0f5 none;background-color:#fff0f5;">
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
    <div class="modal fade" id="createPatBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: '微軟正黑體';font-size: 20px;">新增募款活動</h4>
                </div>
                <div class="modal-body">
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 205px;">
                            <span style="float:left; font-family: '微軟正黑體';font-size: 16px;"> 是否開放捐款</span>
                            <!-- switch -->
                            <div class="onoffswitch" style="float:left;">
                                <input type="checkbox" id="payBoxType_input" name="onoffswitch" class="onoffswitch-checkbox" checked>
                                <label class="onoffswitch-label" for="payBoxType_input">
                                    <span class="onoffswitch-inner"></span>
                                    <span class="onoffswitch-switch"></span>
                                </label>
                            </div>
                            <div style="clear:both;"></div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">捐款箱名稱 :</button>
                                </span>
                                <input type="text" id="payBoxName_input" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                </span>
                                <input type="text" id="payBankId_input" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                </span>
                                <input type="text" id="payATMAccount_input" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                            <div style="margin-top:10px; font-family: '微軟正黑體';font-size: 16px;">捐款箱詳述</div>
                            <!-- </a> -->
                        </h4>
                    </div>
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 227px;">
                            <textarea class="form-control" id="payBoxDetail_input" placeholder="" rows="10"></textarea>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family: '微軟正黑體';font-size: 15px;">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" id="createPayBox" style="font-family: '微軟正黑體';font-size: 15px;">建立募款箱</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal2 -->
    <!-- 已建立的募款箱表單 -->
    <div class="modal fade" id="editPatBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  style="z-index:1041;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: '微軟正黑體';font-size: 20px;">新增募款活動</h4>
                </div>
                <div class="modal-body">
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 205px;">
                            <span style="float:left; font-family: '微軟正黑體';font-size: 16px;"> 是否開放捐款</span>
                            <!-- switch2 -->
                            <div class="onoffswitch2" style="float:left;">
                                <input type="checkbox" id="payBoxType" name="onoffswitch2" class="onoffswitch2-checkbox"  checked>
                                <label class="onoffswitch2-label" for="payBoxType">
                                    <span class="onoffswitch2-inner"></span>
                                    <span class="onoffswitch2-switch"></span>
                                </label>
                            </div>
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3" style="border:0px #9ae2d5;  float:right; width: 170px; padding-bottom: 10px; margin-top: -12px;">
                                    <i class="fas fa-plus nino-icon" style="font-size:20px; float:right; margin-top:2px; margin-right:1px; "></i>
                                    <span style="float:right; font-family: '微軟正黑體';font-size: 16px;  margin-right:15px;">新增花費明細</span>
                                </button>
                            </a>
                            <div style="clear:both;"></div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">捐款箱名稱 :</button>
                                </span>
                                <input type="text" id="payBoxName" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                </span>
                                <input type="text" id="payBankId" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                </span>
                                <input type="text" id="payATMAccount" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->

                            <div style="margin-top:10px; font-family: '微軟正黑體';font-size: 16px;">捐款箱詳述</div>
                            <!-- </a> -->
                        </h4>
                    </div>
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 227px;">
                            <textarea name="funArticle" class="form-control" placeholder="" rows="10"></textarea>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family: '微軟正黑體';font-size: 15px;">取消</button>
                    <button type="button" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">更改募款箱</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal3 -->
    <!-- 花費細項表單-->
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="z-index:1042; position: relative; left:0px; top:50px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: '微軟正黑體';font-size: 20px;">花費紀錄</h4>
                </div>
                <div class="modal-body">
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 160px;">
                            <div style="clear:both;"></div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">花費名稱 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">花費金額 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">統一編號 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                <input type="text" id="payATMAccount_input" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                            <div style="margin-top:10px; font-family: '微軟正黑體';font-size: 16px;">花費詳述</div>
                            <!-- </a> -->
                        </h4>
                    </div>
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 227px;">
                            <textarea name="funArticle" class="form-control" placeholder="" rows="10"></textarea>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family: '微軟正黑體';font-size: 15px;">取消</button>
                    <button type="button" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">確認送出</button>
                </div>
            </div>
        </div>
    </div>


    <script src="./resource/WOW-master/dist/wow.min.js"></script>
    <script>
        wow = new WOW(
            {
                boxClass: 'wow',      // default
                animateClass: 'animated', // default
                offset: 0,          // default
                mobile: true,       // default
                live: true        // default
            }
        )
        wow.init();
        
        
        
        var payBoxList;
//         AJAX
        $( "#createPayBox" ).on( "click", function() {
        	$('#createPayBox').createPayBox();
		});
		
        $(document)
		.ready(function() {
			$('body').getPayBoxList();
		});
		
        
        
        jQuery.fn.showPayBox = function(payBox){
        	$( "#activityRow" ).append(
	        		'<button type="button" date-payBoxNumber="'+ payBox.payBoxNumber +'" class="PayBox btn btn-primary btn-lg col-md-3 col-sm-3" data-toggle="modal" data-target="#editPatBox" style="border:0px #fff0f5 none;background-color:#fff0f5;">'+
	        		'<div class="item">'+
	        		'<div class="overlay box" href="#">'+
	        		'<div class="content">'+
	        		'<a style="font-size: 36px">'+
	        		payBox.payBoxName+
					'</a></div>'+
	        		'<img src="./img/box1.png" alt="" style="border-radius: 15%;">'+
	        		'</div></div></button>');        	
        }  
        
        jQuery.fn.clickPayBox = function(){
        	$( ".PayBox" ).on( "click", function() {
    			var payBoxNumber = $(this).attr("date-payBoxNumber");
    			console.log(payBoxNumber);
    			for(var i = 0; i < payBoxList.length; i++){
    				var payBox = payBoxList[i];
    				if(payBox.payBoxNumber==payBoxNumber){    					
    					$('#payBoxName').val(payBox.payBoxName);
    					if(payBox.payBoxType == 1){
    						$('#payBoxType').val(on);
    					}else{
    						$('#payBoxType').val(on);    						
    					}   				
    					
    					$('#payATMAccount').val(payBox.payATMAccount);
    					$('#payBankId').val(payBox.payBankId);
    					$('#payBoxDetail').val(payBox.payBoxDetail);
    					console.log(payBox);
    				}
    			}    			
    			
            });
        }
        jQuery.fn.getPayBoxList = function() {
            return this.each(function() {
            	fk_payIdcard = 1235;
            	var xhr = new XMLHttpRequest();
            	xhr.open("Post", "getPayBoxList?fk_payIdcard="+fk_payIdcard, true);
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {
						var funBean = JSON.parse(xhr.responseText);
						payBoxList = funBean.payBox;
						$(".PayBox").remove();
						for (var i = 0; i < payBoxList.length; i++) {							
							$('body').showPayBox(payBoxList[i]);
						}
						$('body').clickPayBox();														
					}
				}	
            });            
        };        
        jQuery.fn.createPayBox = function() {
            return this.each(function() {
            	var xhr = new XMLHttpRequest();
				var payBoxName = $('#payBoxName_input').val();
				var payATMAccount = $('#payATMAccount_input').val();
				var payBankId = $('#payBankId_input').val();
				var payBoxDetail = $('#payBoxDetail_input').val();
				var payBoxType = $('#payBoxType_input').val();
				console.log(payBoxType);
				var fk_payIdcard = Math.random();
            	xhr.open("Post", "createPayBox?payBoxName="+payBoxName+"&fk_payIdcard="+fk_payIdcard+"&payATMAccount="+payATMAccount+"&payBankId="+payBankId+"&payBoxDetail="+payBoxDetail+"&payBoxType="+1, true);
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				xhr.send();
				xhr.onreadystatechange = function() {
					if (xhr.status == 200 && xhr.readyState == 4) {	
						var jsonString = xhr.responseText;
						console.log("jsonString= "+jsonString);
						console.log("jsonString.length= "+jsonString.length);
						if(jsonString.length < 10 ){
							alert("無法新建捐款箱");
						}else{
							var payBox = JSON.parse(xhr.responseText);	
						}
						$('body').getPayBoxList();						
					}
				}
            	
            	
            });
        };
		
		
		
    </script>
</body>

</html>