<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--서브 비주얼이미지 S-->
<section id="sub_visual">
	<div class="sub_visual_txt">
		<span><img src="<c:url value='/resources/img/common/sub_visual_txt_logo.png'/>" alt="VisionTek" class="sub_vtxt_line"/></span>
		<h2>회사소개</h2>
	</div>
	<div class="viimg svis01 visualZoom">
	</div>
</section>
<!--//서브 비주얼이미지 E-->
      
      <!-- content S -->
<div id="sub_container">
	<!--페이지경로-->
	<div class="path">
		<ul class="depth">
			<li class="home"><a href="<c:url value='/main/index'/>" title="홈으로 가기">&nbsp;</a></li>
			<li class="depth_sub">
				<a href="javascript:void('0')">회사소개</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<li><a href="<c:url value='/solution/solution01'/>" >솔루션</a>
					<li><a href="<c:url value='/procure/procure01'/>" >조달제품</a>
					<li><a href="<c:url value='/security/security01'/>">보안SI</a>
					<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">오시는길</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">개요</a></li>
					<li><a href="<c:url value='/company/company02'/>">연혁</a></li>
					<li><a href="<c:url value='/company/company03'/>">인사말</a></li>
					<li><a href="<c:url value='/company/company04'/>">오시는길</a></li>
					<li><a href="<c:url value='/company/company05'/>">협력사</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">오시는길</h3>
		
		<!--컨텐츠 S-->
		<div class="contents ">
			
			<!-- 오시는길 S -->
			<div class="direction innerwrap">
                  	<div class="map">
                          <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHxzWkjyQKrWITqOJwng4ga-dzUcgF-gs&language=ko"></script> 
                          <script>
                            function initialize() { 
                            var myLatlng = new google.maps.LatLng(35.175502,129.125138,17); 
					  var myLatlng2 = new google.maps.LatLng(37.5680683,126.8252385); 
					  
                            var mapOptions = { 
                                  zoom: 14, 
                                  center: myLatlng, 
                                  mapTypeId: google.maps.MapTypeId.ROADMAP 
                            }
					  var mapOptions2 = { 
                                  zoom: 14, 
                                  center: myLatlng2, 
                                  mapTypeId: google.maps.MapTypeId.ROADMAP 
                            } 
					  
                            var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions); 
					  var map2 = new google.maps.Map(document.getElementById('map_canvas02'), mapOptions2);
					   
                            var marker = new google.maps.Marker({ 
						position: myLatlng, 
						map: map, 
						title: "비전테크 본사" 
					  });

					   var marker2 = new google.maps.Marker({ 
						position: myLatlng2, 
						map: map2, 
						title: "비전테크 서울지사" 
					  });
                            }
                           window.onload = initialize;
                           </script>

                          <div class="map">
                            <div id="map_canvas02"style="width:100%;"></div>
                            <p class="title">서울</p>
                            <ul class="map_info">
                            	<li>
                                	서울시 강서구 마곡동 759-1, 두산 더랜드타워 A동 1223호<br/>
									<span><strong>Tel.</strong> 070-8260-5601</span>
                                </li>
                            </ul>
                        </div>

                        <div id="map_canvas"style="width:100%;"></div>
                            <p class="title">부산</p>
                            <ul class="map_info">
                            	<li>
                                	부산시 해운대구 센텀중앙로97 센텀스카이비즈 A동 2509호<br/>
                                    <span><strong>Tel.</strong> 070-8260-3882</span> <span><strong>Fax.</strong> 051-955-3723</span>
                                </li>
                            </ul>
                        </div>
                         
                  </div>
			<!-- 오시는길 E -->

		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->