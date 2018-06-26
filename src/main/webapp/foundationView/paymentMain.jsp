<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<html lang="en">

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
                            <div class="col-md-4 col-sm-4">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="border:0px #fff0f5 none;background-color:#fff0f5;">
                                    <div class="item">
                                        <div class="overlay box" href="#">
                                            <div class="content box-top">
                                                <a style="font-size: 36px">建立募款箱</a>
        
                                            </div>
                                            <img src="./img/news.jpg" alt="" style="border-radius: 15%;">
                                        </div>
                                    </div>
                                </button>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2" style="border:0px #fff0f5 none;background-color:#fff0f5;">
                                    <div class="item">
                                        <div class="overlay box" href="#">
                                            <div class="content">
                                                <a style="font-size: 36px">填寫花費細項</a>
                                            </div>
                                            <img src="./img/love.jpg" alt="" style="border-radius: 15%;">
                                        </div>
                                    </div>
                                </button>
                            <!-- </div>
                            <!-- <div class="col-md-4 col-sm-4">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="border:0px #fff0f5 none;background-color:#fff0f5;">
                                    <div class="item">
                                        <div class="overlay box" href="#">
                                            <div class="content">
                                                <a href="http://localhost:8080/HalfOf73/volunteer.html" style="font-size: 36px">花費細項</a>
                                            </div>
                                            <img src="./img/stuff.jpg" alt="" style="border-radius: 15%;">
                                        </div>
                                    </div>
                                </button>
                            </div> -->
                        </div>
                    </div>
                </div>
            </section>
        <!-- Modal -->
        <!-- 募款箱表單 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                <label class="onoffswitch-label" for="myonoffswitch">
                                    <span class="onoffswitch-inner"></span>
                                    <span class="onoffswitch-switch"></span>
                                </label>
                            </div>
                            <div style="clear:both;"></div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">捐款箱名稱 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                </span>
                                <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                            </div>
                        </div>
                    </div>


                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                                <i class="mdi mdi-chevron-up nino-icon arrow"></i>
                                <i class="fas fa-file-alt nino-icon"></i>
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
                    <button type="button" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">建立募款箱</button>
                </div>
            </div>
        </div>
    </div>

     <!-- Modal2 -->
    <!-- 花費細項表單-->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                    <label class="onoffswitch-label" for="myonoffswitch">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                                <div style="clear:both;"></div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">捐款箱名稱 :</button>
                                    </span>
                                    <!-- <textarea class="form-control" placeholder="YYYY/MM/DD" rows="1"></textarea> -->
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">ATM銀行代號 :</button>
                                    </span>
                                    <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                                <div class="input-group input-group-lg">
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit" style="width: 130px">ATM帳號 :</button>
                                    </span>
                                    <!-- <textarea class="form-control" placeholder="男性" rows="1"></textarea> -->
                                    <input type="text" class="form-control" placeholder="" required style="z-index: 1">
                                </div>
                            </div>
                        </div>
    
    
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <!-- <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
                                    <i class="mdi mdi-chevron-up nino-icon arrow"></i>
                                    <i class="fas fa-file-alt nino-icon"></i>
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
                        <button type="button" class="btn btn-primary" style="font-family: '微軟正黑體';font-size: 15px;">建立募款箱</button>
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
</body>

</html>