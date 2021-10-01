<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--탑 버튼 S-->
<p id="btn_top">
	<a class="top" href="#top" style="margin:0 0.5%;"><img src="<c:url value='/resources/img/common/btn_top.png'/>" width="50px" alt="위로 가기"/></a>
</p>
<script>
$(document).ready(function(){

	// hide #back-top first
	$("#btn_top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#btn_top').fadeIn();
			} else {
				$('#btn_top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('.top').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});
</script>
<!--//탑 버튼 E-->

<!-- footer S -->
<footer>
	<div class="innerwrap">
		<img src="<c:url value='/resources/img/common/footer_logo.png'/>" alt="VisionTek" title="VisionTek" class="logo">
		<div class="copy_wr">
			<address>
				<span class="txt_wh"><strong>[서울]</strong></span> 서울시 강서구 마곡동 759-1, 두산 더랜드타워 A동 1223호 <span class="ml20"><strong>TEL.</strong> 070-8260-5601</span><br>
				<span class="txt_wh"><strong>[부산]</strong></span> 부산시 해운대구 센텀중앙로97 센텀스카이비즈 A동 2509호 <span class="ml20"><strong>TEL.</strong> 070-8260-3882</span> <span class="ml20"><strong>Fax.</strong> 051-955-3723</span>
			</address>
			<p class="copy">COPYRIGHT vision-tek.co.kr. ALL RIGHTS RESERVED.  
			<span class="btn_admin"><a href="<c:url value='/login.do'/>">ADMIN</a></span> 
			</p>
		</div>
		
	</div>
</footer>
<!-- footer E -->