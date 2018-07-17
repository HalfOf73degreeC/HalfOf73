<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
   <footer id="footer">
        <div class="container">
        	<div class="row">
        		<div class="col-md-4">
        			<div class="colInfo">
	        			<div class="footerLogo">
	        				<div class="navbar-header" style="width:350px" w3-include-html="${pageContext.request.contextPath}/logo.jsp"></div>	
	        			</div>
	        			<p>
	        				　　我們希望藉由Half of 73°C 平台創造更加完備且快速地使用方式，提供所有願意付出的人，不論是以基金會的型式或是個人的名義。我們需要您的陪伴，一起創造更好的未來。
	        			</p>
	        			<div class="nino-followUs">
	        				<div class="totalFollow"><span></span></div>
	        				<div class="socialNetwork">
	        					<span class="text">Follow Us: </span>
	        					<a href="https://www.facebook.com/" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
	        					<a href="https://twitter.com/" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
	        					<a href="https://www.instagram.com/" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
	        					<a href="https://www.youtube.com/?gl=TW&hl=zh-TW" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
	        					<a href="https://www.tumblr.com/" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
	        				</div>
	        			</div>
	        			<form action="" class="nino-subscribeForm">
	        				<div class="input-group input-group-lg">
								<input type="email" class="form-control" placeholder="Your Email" required>
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit">Subscribe</button>
								</span>
							</div>
	        			</form>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading"><a style="color:#000"></a></h3>
<!-- 	        			<h3 class="nino-colHeading"><a style="color:#000" href="foundation/foundation_main.jsp">基金會</a></h3> -->
<%-- 	        			<h3 class="nino-colHeading"><a style="color:#000" href="${pageContext.request.contextPath}#nino-ourTeam">捐款募資</a></h3> --%>
<!-- 	        			<h3 class="nino-colHeading"><a style="color:#000" href="shares/shares.jsp">愛的傳遞</a></h3> -->
<%-- 	        			<h3 class="nino-colHeading"><a style="color:#000" href="${pageContext.request.contextPath}#nino-whatWeDo">關於本站</a></h3> --%>
	        			<ul class="listArticles">
	        				<li layout="row" class="verticalCenter ">
	        					<a class="articleThumb fsr" rel="" href="foundation/foundation_main.jsp"><img src="${pageContext.request.contextPath}/images/goods/fundate.jpg" alt="" width="120px" height="80px"></a>
	        					<div class="info">
	        						<h3 class="articleTitle" style=""><a href="foundation/foundation_main.jsp" style="font-size:16px">基金會</a></h3>
<!-- 	        						<div class="date">Jan 9, 2016</div> -->
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="${pageContext.request.contextPath}#nino-ourTeam"><img src="${pageContext.request.contextPath}/images/goods/donate.jpg" alt="" width="120px" height="80px"></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="${pageContext.request.contextPath}#nino-ourTeam" style="font-size:16px">捐款募資</a></h3>
<!-- 	        						<div class="date">Jan 9, 2016</div> -->
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="shares/shares.jsp"><img src="${pageContext.request.contextPath}/images/goods/love.jpg" alt="" width="120px" height="80px"></a>
	        					<div class="info"  style="text-align:center">
	        						<h3 class="articleTitle"><a href="shares/shares.jsp" style="font-size:16px;">愛的傳遞</a></h3>
<!-- 	        						<div class="date">Jan 9, 2016</div> -->
	        					</div>
	        				</li>
	        			</ul>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading" style="color:#000">愛心義賣</h3>
	        			<div class="instagramImages clearfix">
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/bag.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/blueberry_jam.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/calligraphy.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/cards.png" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/chopsticks.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/clothes.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/coffee.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/cookies.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/handmade.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/hat.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/note.jpg" alt="" width="82px" height="82px"></a>
	        				<a ><img src="${pageContext.request.contextPath}/images/goods/paint.jpg" alt="" width="82px" height="82px"></a>
	        			</div>
	        			<a href="${pageContext.request.contextPath}/goods/queryAllGoods_HO73.do" class="morePhoto">了解更多</a>
        			</div>
        		</div>
        	</div>
			<div class="nino-copyright">Copyright &copy; 2018 <a target="_blank" href="http://www.ninodezign.com/" title="Ninodezign.com - Top quality open source resources for web developer and web designer">halfof73.com</a>. All Rights Reserved. 
			<br>
<!-- 			<br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div> -->
        </div>
    </footer><!--/#footer-->

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	