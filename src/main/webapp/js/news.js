var newslist;
jQuery(function($) {

	$("body")
			.append(
					'<div class="modal fade bs-OneNews-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">'
							+ '<div class="modal-dialog modal-lg" role="document">'
							+ '<div class="modal-content" style="padding: 50px" id="oneNews">'
							+ '</div></div></div>');

	$loadingGIF = $(
			'<div w3-include-html="'+$('#NewsPage').attr("data-contextPath")+'/loading.jsp"></div>')
			.appendTo($('#NewsPage'));
	var xhr = new XMLHttpRequest();
	xhr.open("Get", "/HalfOf73/news/getNewsPage", true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.status == 200 && xhr.readyState == 4) {
			newslist = JSON.parse(xhr.responseText);
			$(loadingGif).hide(500);
			var showMuch;
			if($('#NewsPage').attr("date-newsMuch")==0){
				showMuch=newslist.length;
			}else{
				showMuch=$('#NewsPage').attr("date-newsMuch");
			}
			for (var i = 0; i < showMuch; i++) {
				var news = newslist[i];
				var $row;
				if (i % 3 == 0) {
					$row = $('<div class="row">').appendTo($('#NewsPage'));
				}
				var $newscol = $(
						'<div class="col-md-4 col-sm-4 animated fadeInUp" id="newscol" style="margin-top: 30px">')
						.appendTo($row);
				var $article = $(
						'<article class="article" data-toggle="modal" data-target=".bs-OneNews-modal-lg" date-newsId="'
								+ news.newsUid + '" style="cursor:pointer">')
						.appendTo($newscol);
				var $articleThumb = $('<div class="articleThumb">').appendTo(
						$article);
				var $goodsImageSize = $('<div class="newsImageSize">')
						.appendTo($articleThumb).append(
								"<img src='" + news.newsImg + "'>");
				var $divdate = $('<div class="date">').appendTo($articleThumb)
						.append(
								'<span class="text" style="font: bolder 20px 微軟正黑體">'
										+ news.insertMonth + '</span>').append(
								'<span class="number">' + news.insertDay
										+ '</span>');
				var $newsTitle = $('<h3 class="articleTitle">').appendTo(
						$article).html(news.newsName);
				var $newsArticle = $('<p class="articleDesc">').appendTo(
						$article).html(news.newsArticle);
				var $articleMeta = $('<div class="articleMeta">').appendTo(
						$article).append(
						'<a><i class="mdi mdi-eye nino-icon"></i>'
								+ news.newsView + '</a>').append(
						'<a><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
								+ news.newsUid + '</a>');

			}
			var len = 80; // 文字>80變成"..."
			$(".articleDesc").each(function(i) {
				if ($(this).text().length > len) {
					// $(this).attr("title",$(this).text());
					var text = $(this).text().substring(0, len - 1) + "...";
					$(this).text(text);
				}
			});
			var Tlen = 25; // 標題文字>25變成"..."
			$(".articleTitle").each(function(i) {
				if ($(this).text().length > Tlen) {
					// $(this).attr("title",$(this).text());
					var text = $(this).text().substring(0, Tlen - 1) + "...";
					$(this).text(text);
				}
			});
			//					    
			// <!-- dialog視窗.內容 -->
			$(".article").on(
					"click",
					function() {
						$("#oneNews").empty();
						var newsId = $(this).attr("date-newsId");
						// <!-- News資料庫連線 -->
						var xhr_oneNews = new XMLHttpRequest();
						xhr_oneNews.open("Post", "/HalfOf73/news/getNewsPage?newsUid="
								+ newsId, true);
						xhr_oneNews.setRequestHeader("Content-Type",
								"application/x-www-form-urlencoded");
						xhr_oneNews.send();
						xhr_oneNews.onreadystatechange = function() {

							if (xhr_oneNews.status == 200
									&& xhr_oneNews.readyState == 4) {
								var oneNews = JSON
										.parse(xhr_oneNews.responseText);
								// console.log(oneNews);
								$(
										".article[date-newsId="
												+ oneNews.newsUid + "]")
										.children(".articleMeta").children(
												"a:nth-child(1)").html(
												'<i class="mdi mdi-eye nino-icon"></i>'
														+ oneNews.newsView);
							}
						}
						for (var i = 0; i < newslist.length; i++) {
							var news = newslist[i];
							if (news.newsUid == newsId) {
								$("#oneNews").append(
										'<h1 style="font-weight: bold;">'
												+ news.newsName + '</h1>');
								$("#oneNews").append(
										'<p>' + news.insertDate + '</p>');
								$("#oneNews").append(
										'<h4>' + news.newsArticle + '</h4>');
								$("#oneNews").append(
										'<img width="100%" src="'
												+ news.newsImg + '"/>');
								var $articleMeta = $('<div class="articleMeta" style="border-top: 1px solid #e5e5e5;margin-top: 15px;font-size: 18px;">').append(
										'<a style="margin-right: 15px;"><i class="mdi mdi-eye nino-icon"></i>'
												+ news.newsView + '</a>').append(
										'<a style="margin-right: 15px;"><i class="mdi mdi-comment-multiple-outline nino-icon"></i>'
												+ news.newsUid + '</a>');
								$("#oneNews").append($articleMeta);
								
								var $sendMessage= $('<div class="nino-testimonialSlider unslider-horizontal" style="position: relative;overflow: hidden;margin:0px;">'
										+'<ul class="unslider-wrap unslider-carousel" style="width: 300%; left: 0%;">'
										+'<li class="unslider-active" style="width: 33.3333%;">'
										+'<div layout="row" class="verticalCenter">'
										+'<div class="nino-avatar fsr" style="width: 75px; margin:5px;">'
											+'<img class="img-circle img-thumbnail" style="height: 75px; position: absolute; top: 0px;" src="'
											+$('#memberBean').attr('src')
											+'" alt="">'
										+'</div>'
										+'<div id="sendMessageF" style="padding:8px; margin-bottom: 22px; width: 100%; padding: 0px;">'
											+'<span style="font-size:16px;font-weight:bold;color:steelblue; margin-left: 4px;">'
											+$('#memberBean').attr('data-memname')
											+'</span>'
											+'<textarea class="sendMessage form-control" placeholder="留言......" rows="1" style="resize : none; font-size:15px; width: 100%;min-height:35px;overflow:hidden;"></textarea>'
											+'<button type="button" class="btn btn-primary" id="addNewMsg_bt"'
											+'style="font-size: 15px; font-weight: bold; float: right;">發布</button>'
										+'</div>'										
										+'</div></li></ul></div>');
								$("#oneNews").append($sendMessage);
								
								
								$("textarea.sendMessage").css("overflow","hidden").bind("keydown keyup mousedown mousemove mouseout", function(){  
							           $(this).height('0px').height(($(this).prop("scrollHeight")-12)+"px");
							       }).focus();  
						        
								var $message= $('<div class="nino-testimonialSlider unslider-horizontal" style="position: relative;overflow: hidden;margin:0px;">'
										+'<ul class="unslider-wrap unslider-carousel" style="width: 300%; left: 0%;">'
										+'<li class="unslider-active" style="width: 33.3333%;">'
										+'<div layout="row" class="verticalCenter">'
										+'<div class="nino-avatar fsr" style="width: 75px; margin:5px;">'
											+'<img class="img-circle img-thumbnail" style="height: 75px; position: absolute; top: 0px;" src="'
											+'https://scontent.ftpe8-2.fna.fbcdn.net/v/t1.0-0/p370x247/15202501_395181680872386_3870395997474049651_n.jpg?_nc_cat=0&oh=0c765db9fd64e5c3791d8e82ae328959&oe=5BD65D9B'
											+'" alt="">'
										+'</div>'
										+'<div style="padding:8px;border:2px #ccc solid;border-radius:10px;background-color:#eee;">'
											+'<span style="font-size:16px;font-weight:bold;color:steelblue;">'
												+'陰陽師'
											+'</span>'
											+'<p style="font-size:15px">'
											+'請大家繼續在《陰陽師Onmyoji》遊玩，敬祝遊戲愉快！'

											+'請大家繼續在《陰陽師Onmyoji》遊玩，敬祝遊戲愉快！'
											+'請大家繼續在《陰陽師Onmyoji》遊玩，敬祝遊戲愉快！'
											+'</p>'	
											+'<p style="margin:0px;">'
											+'Jul 8, 2018 7:21:56 PM'
											+'</p>'
										+'</div>'										
										+'</div></li></ul></div>');
								$("#oneNews").append($message);
								
							}
						}

					});

		}
	}

});
