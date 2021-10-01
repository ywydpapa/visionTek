<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>비전테크</title>

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="<c:url value='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="<c:url value='https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="<c:url value='https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'/>"></script>
	<script src="<c:url value='/resources/js/vendor/jquery.easing.1.3.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/main.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/sub.js'/>"></script>
	 <!-- 메인비주얼 플러그인 -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/plugin/slick.css'/>">
	<script src="<c:url value='/resources/js/plugin/slick.js'/>"></script>
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/import.css'/>">
   
   <script type="text/javascript">
	$(function() { 
		$('.dth2').css("display","none");
		
		$('nav li').hover(function() { 
			$('div', this).slideDown(200);
		}, function() {
			$('div', this).slideUp(200);
		}); 
	});

	function fMenuClick() {
		if($("nav").css("display") == "block") {
			$("nav").hide();
		} else {
			$("nav").show();
		}
	}
	</script>
	
	 <script type="text/javascript">
        jQuery(document).ready(function(){//사이드 메뉴 토글 구현 부분
            $(".submn").css("display","none");
            $('a.plus').click(function(){
            	if($(this).next('div').css('display') == 'none'){
					$('.submn').slideUp();
					$(this).next('div').slideDown(300);
				}else{
					$(this).next('div').slideUp(300);					
				}
            });
			$('a.plus2').click(function(){
            	if($(this).next('div').css('display') == 'none'){
					$('.submn_inner').slideUp();
					$(this).next('div').slideDown(300);
				}else{
					$(this).next('div').slideUp(300);					
				}
            });
            $(".sidebar-toggle").click(function(){
            	$(".allmenu").toggle("slide");
				$(".bg").fadeIn();
            });
            $(".mbtn_close").click(function(){
            	$(".allmenu").toggle("slide");
				$(".bg").fadeOut();
            });
        });
    </script>

	<script type="text/javascript">
	$(window).load(function  () {
		var $slick_carousel = $(".visual-img");

		$slick_carousel.on('init', function(event, slick) {
			$(".visual-item").eq(0).addClass("active");
		});
		$slick_carousel.on('afterChange', function(event, slick, currentSlide){
			$(".visual-item").removeClass("active");
			$(this).find(".visual-item").eq(currentSlide).addClass("active")
		});
		// 메인 비주얼 롤링
		$slick_carousel.slick({
			dots: true,
			infinite: true,
			arrows:false,
			pauseOnHover:false,
			autoplay:true,
			fade:true,
			autoplaySpeed: 5000,
			slidesToShow: 1,
			slidesToScroll: 1
		});
	});
	</script>
	<script type="text/javascript">
	$(window).scroll( function(){
		/* ### 메인 스크롤시 컨텐츠 fadeIn ### */
		$(".scroll-fade li").each(function  () {
			var bottom_of_object = $(this).offset().top + $(this).outerHeight();
			var bottom_of_window = $(window).scrollTop() + ( $(window).height() / 2 );
			
			if( bottom_of_window > bottom_of_object - ($(window).height() - 200) ){
				$(this).addClass("active");
			}		
		});	
	});
	</script>

	<script type="text/javascript">
		function layer_open(el){

			var temp = $('#' + el);		//레이어의 id를 temp변수에 저장
			var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수

			if(bg){
				$('.layer').fadeIn();
			}else{
				temp.fadeIn();	//bg 클래스가 없으면 일반레이어로 실행한다.
			}

			// 화면의 중앙에 레이어를 띄운다.
			if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
			else temp.css('top', '0px');
			if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
			else temp.css('left', '0px');

			temp.find('a.cbtn').click(function(e){
				if(bg){
					$('.layer').fadeOut();
				}else{
					temp.fadeOut();		//'닫기'버튼을 클릭하면 레이어가 사라진다.
				}
				e.preventDefault();
			});

			$('.layer .bg').click(function(e){
				$('.layer').fadeOut();
				e.preventDefault();
			});

		}				
	</script>
</head>
	<body onload="initialize()">
	<div id="wrap">
    	<div class="bg"></div><!-- 메인 네비게이션 검은 배경 -->
			<tiles:insertAttribute name="body"/>
	    </div>
	</body>
</html>