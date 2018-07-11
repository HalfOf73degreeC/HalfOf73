<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="sectionContent" id='NewsPage'></div>
<script>
	var newslist;

// 	Ajax 將News資料送給畫面
		$(document)
				.ready(function() {
					$("body").append('<div class="modal fade bs-OneNews-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">'
			        		+'<div class="modal-dialog modal-lg" role="document">'
			        		+'<div class="modal-content" style="padding: 50px" id="oneNews">'
			        		+'</div></div></div>');
			        
					$loadingGIF = $('<div w3-include-html="${pageContext.request.contextPath}/loading.jsp"></div>').appendTo($('#NewsPage'));
							var xhr = new XMLHttpRequest();
							xhr.open("Get", "getNewsPage", true);
							xhr.send();
							xhr.onreadystatechange = function() {
								if (xhr.status == 200 && xhr.readyState == 4) {									
									newslist = JSON.parse(xhr.responseText);
									$(loadingGif).hide(500);
									for (var i = 0; i < newslist.length; i++) {
										var news = newslist[i];
										var $row;
										if (i % 3 == 0) {
											$row = $('<div class="row">')
													.appendTo($('#NewsPage'));
										}
										var $newscol = $(
												'<div class="col-md-4 col-sm-4 animated fadeInUp" id="newscol" style="margin-top: 30px">')
												.appendTo($row);
										var $article = $('<article class="article" data-toggle="modal" data-target=".bs-OneNews-modal-lg" date-newsId="'+ news.newsUid +'" style="cursor:pointer">').appendTo(
												$newscol);
										var $articleThumb = $(
												'<div class="articleThumb">')
												.appendTo($article);
										var $goodsImageSize = $(
												'<div class="newsImageSize">')
												.appendTo($articleThumb)
												.append("<img src='" + news.newsImg + "'>");
										var $divdate = $('<div class="date">')
												.appendTo($articleThumb)
												.append('<span class="text" style="font: bolder 20px 微軟正黑體">'
																+ news.insertMonth
																+ '</span>')
												.append('<span class="number">'
																+ news.insertDay
																+ '</span>');
										var $newsTitle = $(
												'<h3 class="articleTitle">')
												.appendTo($article).html(
														news.newsName);
										var $newsArticle = $(
												'<p class="articleDesc">')
												.appendTo($article).html(
														news.newsArticle);
										var $articleMeta = $(
												'<div class="articleMeta">')
												.appendTo($article).append(
														'<a href="#"><i class="mdi mdi-eye nino-icon"></i>'
																+ news.newsView
																+ '</a>')
												.append(
														'<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
																+ news.newsUid
																+ '</a>')
															
																
									}
									var len = 80; // 文字>80變成"..."
								    $(".articleDesc").each(function(i){
								        if($(this).text().length>len){
// 								            $(this).attr("title",$(this).text());
								            var text=$(this).text().substring(0,len-1)+"...";
								            $(this).text(text);
								        }
								    });
								    var Tlen = 25; // 標題文字>25變成"..."
								    $(".articleTitle").each(function(i){
								        if($(this).text().length>Tlen){
// 								            $(this).attr("title",$(this).text());
								            var text=$(this).text().substring(0,Tlen-1)+"...";
								            $(this).text(text);
								        }
								    });
// 								    
// 								    <!-- 	dialog視窗.內容  -->
								    $( ".article" ).on( "click", function() {
										$("#oneNews").empty();
										var newsId = $(this).attr("date-newsId");
// 								        <!-- 	News資料庫連線  -->
								        var xhr_oneNews = new XMLHttpRequest();								        
								        xhr_oneNews.open("Post", "getNewsPage?newsUid="+newsId , true);
								        xhr_oneNews.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
								        xhr_oneNews.send();
								        xhr_oneNews.onreadystatechange = function() {
								        	
											if (xhr_oneNews.status == 200 && xhr_oneNews.readyState == 4) {
												var oneNews = JSON.parse(xhr_oneNews.responseText);
// 												console.log(oneNews);
												$(".article[date-newsId="+oneNews.newsUid+"]").children(".articleMeta").children("a:nth-child(1)").html('<i class="mdi mdi-eye nino-icon"></i>'+ oneNews.newsView);
											}}
								        for (var i = 0; i < newslist.length; i++) {
											var news = newslist[i];
											if (news.newsUid == newsId) {
												$( "#oneNews" ).append('<h1 style="font-weight: bold;">'+news.newsName+'</h1>');
											    $( "#oneNews" ).append('<p>'+news.insertDate+'</p>');
											    $( "#oneNews" ).append('<h4>'+news.newsArticle+'</h4>');
											    $( "#oneNews" ).append('<img width="100%" src="'+news.newsImg+'"/>');
											}
								        }
								        
								    });
								      
								}
							}
							
						});
</script>
