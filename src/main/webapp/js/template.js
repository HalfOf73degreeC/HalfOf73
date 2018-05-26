jQuery(function($) {

	/* =============== SHOW / HIDE FORM SEARCH =============== */
	$("header .nino-search, #nino-searchForm .nino-close").click(function(){
		$("#nino-searchForm").toggleClass("open");
	});

	/* =============== SHOW / HIDE GOOGLE MAP =============== */
	$("#nino-map .nino-sectionHeading").click(function(){
		$("#nino-map").toggleClass("showMap");
		$(this).find(".text").toggle();
	});

	/* =============== TESTIMONIAL SLIDER =============== */
	$('.nino-testimonialSlider').unslider({
		nav: false,
		arrows: {
			//  Unslider default behaviour
			prev: '<a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a>',
			next: '<a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a>',
		}
	});

	/* =============== CUSTOM SCROLLBAR STYLE =============== */
	$("#nino-whatWeDo .panel-body").mCustomScrollbar({
		theme:"default"
	});

	/* =============== MAKE MAIN MENU STICKED ON TOP WHEN SCROLL =============== */
	$(window).scroll(function () {
		if ($(this).scrollTop() == $('#nino-header').height() || $(this).scrollTop() > $('#nino-header').height()) {
			$('body').addClass("nino-fixed-nav");
			$('body').css('padding-top', $('#nino-navbar').height() + 'px');
		} else {
			$('body').removeClass("nino-fixed-nav");
			$('body').css('padding-top', 0);
		}
	});
	
	/* =============== ISOTOP =============== */	
	$(window).load(function(){
		$portfolio = $('.nino-portfolioItems');
		$portfolio.isotope({
			itemSelector : 'li',
			layoutMode : 'masonry'
		});
		$("#nino-map").toggleClass("showMap");
		$(this).find(".text").toggle();
	});
	
	/* =============== PORTFOLIO HOVER EFFECT =============== */
	$('.nino-portfolioItems > li').each( function() { $(this).hoverdir(); } );
	
	/* =============== PERTTYPHOTO =============== */
	$("a.nino-prettyPhoto").prettyPhoto();
	
	/* =============== SMOOTH SCROOL EFFECT =============== */
	$('#nino-navbar ul li a').on('click',function (e) {
			e.preventDefault();
			var target = this.hash,
			$target = $(target);
			var href = $.attr(this, 'href');
	    if (target==href){
	  		$('html, body').stop().animate({
	    	'scrollTop': $target.offset().top
	   		}, 500, 'swing', function () {
	   			window.location.hash = target;
	   		});
	  	}else{
	   		window.location.href = href;
	  	}
	});
	
	/* =============== SHOW / HIDE GO TO TOP =============== */
	/* Check to see if the window is top if not then display go top button */
	$(window).scroll(function(){
		if ($(this).scrollTop() > 200) {
			$('#nino-scrollToTop').fadeIn();
		} else {
			$('#nino-scrollToTop').fadeOut();
		}
	});
	/* Click event to scroll to top */
	$('#nino-scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},300);
		return false;
	});
	/*===========使用 text-overflow: ellipsis; 屬性時、文字只能單行出現。若是想要多行文字...===========*/
	$(function(){
    var len = 50; // 超過50個字以"..."取代
    $(".articleDesc").each(function(i){
        if($(this).text().length>len){
            $(this).attr("title",$(this).text());
            var text=$(this).text().substring(0,len-1)+"...";
            $(this).text(text);
        }
    });
});
	 
});