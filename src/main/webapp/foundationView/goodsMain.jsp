<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- icon -->
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
    <link rel="stylesheet" href="./css/croppie.css">
    <!-- javascript -->
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="../js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/jquery.hoverdir.js"></script>
    <script type="text/javascript" src="../js/modernizr.custom.97074.js"></script>
    <script type="text/javascript" src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="../js/unslider-min.js"></script>
    <script type="text/javascript" src="./js/croppie.js"></script>
    <Script type="text/javascript" src="./js/previewImg.js"></Script>
    <title>paymentMain</title>
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
                <div class="row nino-hoverEffect">
                    <div class="col-md-3 col-sm-3">
                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="border:0px #fff0f5 none;background-color:#fff0f5;">
                            <div class="item">
                                <div class="overlay box" href="#">
                                    <div class="content box-top">
                                        <a style="font-size: 36px">上架愛心商品</a>

                                    </div>
                                    <img src="./img/plus.png" alt="" style="border-radius: 15%;">
                                </div>
                            </div>
                        </button>
                    </div>
<!--                     <div class=""> -->
                        <button type="button" class="btn btn-primary btn-lg col-md-3 col-sm-3" data-toggle="modal" data-target="#myModal2" style="border:0px #fff0f5 none;background-color:#fff0f5;">
                            <div class="item">
                                <div class="overlay box" href="#">
                                    <div class="content">
                                        <a style="font-size: 36px">${商品名稱}</a>
                                    </div>
                                    <img src="./img/box1.png" alt="" style="border-radius: 15%; ">
                                </div>
                            </div>
                        </button>
<!--                     </div> -->
                </div>
            </div>
    </section>
    <!-- Modal -->
    <!-- 募款箱表單 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 900px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: '微軟正黑體';font-size: 20px;">新增愛心商品</h4>
                </div>
                <div class="modal-body">
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 205px;">
                            <!-- <span style="float:left; font-family: '微軟正黑體';font-size: 16px;"> 是否開放捐款</span> -->
                            <!-- switch -->
                            <!-- <div class="onoffswitch" style="float:left;">
                                <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                <label class="onoffswitch-label" for="myonoffswitch">
                                    <span class="onoffswitch-inner"></span>
                                    <span class="onoffswitch-switch"></span>
                                </label>
                            </div> -->
                            <div class="row"></div>
                            <div class="col-md-6">
                                <div class="text-center" id="changePic" style="margin-top: -50px">
                                   
                                    <img id="preview_img" src="./img/no_image.png">
                                   
                                    <label for="input_img" style="height:1px;">
                                        <buttom style="position:relative; top:200px; right:-420px; color: #95e1d3; font-size: 18px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;">
                                            <span>上傳商品照片</span>
                                            <input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-250px; right:350px; z-index:-2;" />
                                        </buttom>
                                    </label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">商品名稱 :</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">上架數量 :</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">單價 :</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1" placeholder="$">
                                </div>
                                <!-- <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div> -->
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne" style="margin-top:110px;">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                            <div style="margin-top:10px; font-family: '微軟正黑體';font-size: 16px;">商品詳述</div>
                            <!-- </a> -->
                        </h4>
                    </div>
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 167px;">
                            <textarea class="form-control" id="payBoxDetail_input" placeholder="" rows="6"></textarea>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family: '微軟正黑體';font-size: 15px;">取消</button>
                    <button type="button" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">商品上架</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal2 -->
    <!-- 已建立的募款箱表單 -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index:1041;">
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
                                <input type="checkbox" id="payBoxType" name="onoffswitch2" class="onoffswitch2-checkbox" id="myonoffswitch2" checked>
                                <label class="onoffswitch2-label" for="myonoffswitch2">
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
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                </span>

                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                </span>

                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne" style="margin-top:10px;">


                        <div class="panel panel-default" style=" border-style: solid; border-color:#9ae2d5; border-width:3px;">
                            <!-- <div class="panel-heading" role="tab" id="headingOne"> -->
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <div style="text-align:center; padding:5px; background-color: #9ae2d5; color:#fff; border-style: solid; border-color: #9ae2d5;">捐款箱詳述</div>
                                </a>
                            </h4>
                            <!-- </div> -->
                            <div id="collapseOne" class="collapse " role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body" style="">
                                    <div class="input-group input-group-lg">
                                        <span class="input-group-btn">
                                            <div class="btn btn-success" type="submit">${捐款箱}</div>
                                        </span>
                                        <input type="text" name="memName" class="form-control" placeholder="" value="" style="z-index: 1">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: 227px;">
                            <textarea name="funArticle" class="form-control" placeholder="" rows="10"></textarea>
                        </div>
                    </div> -->

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
        <div class="modal-dialog" role="document" style="z-index:1042; position: relative; left:px; top:50px;">
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
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
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
    </script>
    <script>



    </script>
</body>

</html>