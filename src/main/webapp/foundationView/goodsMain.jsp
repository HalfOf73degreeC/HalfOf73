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
    <script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/unslider-min.js"></script>
    <script type="text/javascript" src="js/croppie.js"></script>
    <Script type="text/javascript" src="js/previewImg.js"></Script>
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
                </div>
            </div>
    </section>
    <!-- Modal -->
    <!-- 募款箱表單 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
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
                            <!-- 商品照片 -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="text-center" id="changePic" style="margin-top: 0px; margin-left:-10px;">

                                        <img id="" src="./img/no_image6.png">

                                        <!-- <label for="input_img" style="height:1px;">
                                            <buttom style="position:relative; top:350px; right:50px; color: #95e1d3; font-size: 18px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;">
                                                <span>上傳商品照片</span>
                                                <input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-250px; right:-150px; z-index:-2;"
                                                />
                                            </buttom>
                                        </label> -->
                                    </div>
                                    <!-- <button type="button" id="crop_img" class="btn btn-primary" style=" position:relative; top:-10px; right:-150px; font-family: '微軟正黑體';font-size: 16px;">確定剪裁</button> -->
                                    <!-- <div class="text-center" id="changePic" style="margin-top: -55px; margin-left:-10px;">
                                   
                                    <img id="preview_img2" src="./img/volunteer.jpg">
                                   
                                    <label for="input_img2" style="height:1px;">
                                        <buttom style="position:relative; top:350px; right:0px; color: #95e1d3; font-size: 18px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;">
                                            <span>上傳商品照片</span>
                                            <input id="input_img2" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-250px; right:-150px; z-index:2;" />
                                        </buttom>
                                    </label>
                                    </div> -->
                                </div>
                                <!-- 商品訊息表單  -->
                                <div class="col-md-8">
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
                                    <!-- 新增照片縮圖 -->
                                    <div class="row">
                                        <div class="col-md-3" style="margin-top:10px;">
                                            <img id="final_img" src="./img/bracelets.jpg" style="max-height:87px; border:2px #95e1d3 solid;">
                                        </div>
                                        <!-- 新增商品照片鈕 -->
                                        <button type="button" data-toggle="modal" data-target="#myModal2" style="width:100px; border:0px #fff none;background-color:#fff; outline: 0px none;">
                                            <div class="item">
                                                <div class="overlay box" href="#">
                                                    <img src="./img/plus2.png" alt="" style="border-radius: 15%; ">
                                                </div>
                                            </div>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne" style="margin-top:20px;">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                            <div style="margin-top:35px; font-family: '微軟正黑體';font-size: 16px;">商品詳述</div>
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
    <!-- 新增照片&圖片裁切-->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index:1050;">
        <div class="modal-dialog" role="document" style="">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: '微軟正黑體';font-size: 20px;">新增商品圖片</h4>
                </div>
                <div class="modal-body">
                    <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body" style="height: auto;">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="text-center" id="changePic" style="margin-top: -55px; margin-left:-10px;">

                                        <img id="preview_img" src="./img/no_image4.png" width="100%" height="">

                                        <label for="input_img" style="height:1px;">
                                            <buttom style="position:relative; top:510px; right:-190px; color: #95e1d3; font-size: 25px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;">
                                                <span>上傳商品照片</span>
                                                <input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-250px; right:210px; z-index:-2;"
                                                />
                                            </buttom>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer" style="margin-top: 3%">
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="font-family: '微軟正黑體';font-size: 15px;">取消</button>
                        <button type="button" id="crop_img" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">確定剪裁</button>
                    </div>
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