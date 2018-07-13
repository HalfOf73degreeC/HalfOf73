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
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>會員專區-基金會資訊</title>

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
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="css/unslider.css" />
<link rel="stylesheet" type="text/css" href="css/template.css" />

</head>

<body onload="initialize()">
	<!-- Header-->
	<!-- Story About Us
    ================================================== -->
	<header>
		<nav id="nino-navbar" class="navbar navbar-default"
			style="background-color: rgba(243, 129, 129, 0.8);">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" w3-include-html="../logo.jsp"></div>
				<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right" w3-include-html="../navbar_right.jsp"></div>
			    	</div>
					<!-- /.navbar-collapse -->

			<!-- /.container-fluid -->
		</nav>
	</header>
	<!--/#header-->
	<!-- Testimonial
    ================================================== -->
   <section id="nino-latestBlog">
   <c:set var="mem" value="${memberBean}"></c:set>
   <c:set var="fun" value="${mem.foundationBean_HO73}"></c:set>
	<div class="content_nosplit_left">
	
		<article>			
			<a href="${fun.funDomain}" style="padding: 9px 5px 5px;">
			<img src="${fun.funImage}"
			style="border-radius:50%; max-width: 100px; height: auto; float:right;">
			</a>
			<br><br>
			<h2>${fun.funName}</h2>
			<div class="article_info">
<!-- 				<div class="article_share">分享 -->
<!-- 					<a href="http://www.facebook.com/sharer.php?u=www.npo.org.tw/npolist_detail.asp?id=6731&amp;t=" target="_blank"> -->
<!-- 						<img src="image/common_share_fb.gif" alt="分享到Facebook" width="16" height="16" /> -->
<!-- 					</a> -->
<!-- 					<a href="http://www.plurk.com/?qualifier=shares&status=www.npo.org.tw/npolist_detail.asp?id=6731" target="_blank"> -->
<!-- 						<img src="image/common_share_plurk.gif" alt="分享到Plurk" width="16" height="16" /> -->
<!-- 					</a> -->
<!-- 					<g:plusone size="small" count="false"></g:plusone> -->
<!-- 				</div>  -->
<!-- 				<div class="col-md-6"> -->
<!-- 					<div class="text-center"> -->
<!-- 						<a href="" style="padding: 9px 5px 5px;"> -->
<%-- 									<img src="${fun.funImage}" --%>
<!-- 									style="border-radius:50%; max-width: 150px; height: auto;"> -->
<!-- 								</a> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<div class="article_date">
				<h3 align="right">更新日期: ${fun.insertDate}</h3>
				</div>
			    <div style="padding-top:0px;"><h3>聯絡資訊</h3></div>
				<table border="0" cellspacing="1" cellpadding="0" width="100%" >
					<tr>
						<th width="12%">機構名稱</th>
						<td width="88%">${fun.funName}</td>
						<input  id="funName" type="text" value="${fun.funName}" style="visibility:hidden"></input>
					</tr>
					<tr>
						<th>愛心碼</th>
						<td>${fun.funIdcard}</td>
					</tr>
					<tr>
						<th>執行長</th>
						<td>${fun.funCeo}</td>
					</tr>
					<tr>
						<th>連絡人</th>
						<td>${fun.funContact}</td>
					</tr>
					<tr>
						<th>電話</th>
						<td>${fun.funTel}</td>
					</tr>
					<tr>
						<th>傳真</th>
						<td>${fun.funFax}</td>
					</tr>
	
					<tr>
						<th>網址</th>
						<td>
							<A href="${fun.funDomain}" target="_blank">${fun.funDomain}</A>
							<input  id="funDomain" type="text" value="${fun.funDomain}" style="visibility:hidden"></input>
						</td>
					</tr>
					<tr>
						<th>電子郵件</th>
						<td>
							<A href="${fun.funEmail}">${fun.funEmail}</A>
						</td>
					</tr>
					<tr>
						<th>地址</th>
						<td>
							${fun.funAddress}
						</td>
						<input  id="funAddress" type="text" value="${fun.funAddress}" style="visibility:hidden"></input>
					</tr>
				</table>
					<div class="mapWrap">
						<div id="map" style="width: 600px; height: 400px;"></div>
				    </div>
				<div style="padding-top:20px;">
				<h3>基本資料 </h3>
				</div>
				<table border="0" cellspacing="1" cellpadding="0" width="100%">
					<tr>
						<th width="12%">創辦人</th>
						<td width="88%">${fun.funFounder}</td>
					</tr>
					<tr>
						<th>成立日期</th>
						<td>${fun.funCreateDate}</td>
					</tr>
					<tr>
						<th>許可機關</th>
						<td>${fun.funAllowOrg}</td>
					</tr>
	
					<tr>
						<th>成立主旨</th>
						<td>
							${fun.funIntent}
						</td>
					</tr>
	
					<tr>
						<th>工作重點</th>
						<td>
							${fun.funArticle}
						</td>
					</tr>
	
					<tr>
						<th>服務區域</th>
						<td>
							${fun.funArea.replaceAll(","," ")}
						</td>
					</tr>
	
					<tr>
						<th>服務對象</th>
						<td>
							${fun.funServiceUser.replaceAll(","," ")}
						</td>
					</tr>
	
					<tr>
						<th>服務項目</th>
						<td>
						    ${fun.funService.replaceAll(","," ")}
						</td>
					</tr>
				</div>
				</table>
				<c:if test = "${mem.memType == '2'&& (mem.foundationBean_HO73.funIdcard == fun.funIdcard)}">	
					<span class="input-group-btn" align="right">
					  <a href="../foundation/queryOneFoundation_HO73.do?funIdcard=${fun.funIdcard}">
						<button class="btn btn-success"style=" background:#95e1d3; border-color: #95e1d3;width: 200px; z-index: 1">返回更新</button>
					  </a>
					</span>
				</c:if>
			</section>
		</article>
	</div>
</section>
		<!--/#nino-whatWeDo-->
		<div w3-include-html="../footer.html"></div>
		<!--/#footer-->

		<!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
<!-- 		<form action="" id="nino-searchForm"> -->
<!-- 			<input type="text" placeholder="Search..." -->
<!-- 				class="form-control nino-searchInput"> <i -->
<!-- 				class="mdi mdi-close nino-close"></i> -->
<!-- 		</form> -->
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
		<script src="https://www.w3schools.com/lib/w3.js"></script>
			<script>
				w3.includeHTML();
			</script>
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- css3-mediaqueries.js for IE less than 9 -->
		<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</body>
</html>
<script src="http://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCw9eOBahNDm7_9km8-qvhuH7YjRK8scwU"></script>
<script type="text/javascript">

var geocoder;
var map;
var name = document.getElementById('funName').value;
var website = document.getElementById('funDomain').value;
// console.log(name);
function initialize() {
  geocoder = new google.maps.Geocoder();
  var mapOptions = {
    zoom: 17
  }
  map = new google.maps.Map(document.getElementById('map'), mapOptions);
  codeAddress();
}
function codeAddress() {
  var address = document.getElementById('funAddress').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == 'OK') {
      map.setCenter(results[0].geometry.location);
      window.setTimeout(function() {
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
          icon:'../images/ico/marker_resized.png',
          title: name,
          animation: google.maps.Animation.DROP
      });
		marker.addListener('click', function() {
			window.open(website);
		  });
      }, 1000);
    } else {
//       alert('尚無地圖資訊' + status);
    }
  });
}
</script>
</body>
</html>