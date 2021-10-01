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
			<li class="depth_sub2"><a href="javascript:void('0')">개요</a>
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

	<div id="sub_middle" class="overview_bg">
		<h3 class="ctle">개요</h3>
		
		<!--컨텐츠 S-->
		<div class="contents ">
			<!--개요 S-->
			<div class="overview">
				<div class="inner">
					<p class="tit">(주)비전테크는 믿음을 드리는 정보보안 및 클라우드 전문 기업입니다.</p>
					<p class="smdtl">2005년 설립이래 정보보안솔루션, 가상화, 보안SI, 시스템 유지보수 등 다양한 IT사업을 진행하고 있으며, 
					우수한 솔루션 파트너와 제휴 및 협력 관계를 맺고 공공기관, 금융, 교육, 의료, 제조 등 다양한 고객에 최상의 서비스를 제공하고 있습니다.<br><br>
					최고의 기술력과 우수한 품질로 고객의 요구에 가장 최적화된 서비스를 제공하고 만족과 신뢰를 드릴 것을 약속드립니다.
					</p>

					<div class="table">
						
							<div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic01.png'/>" /></p>
								<p class="tit">회사명</p>
								<p class="txt">주식회사 비전테크</p>
							</div>
						
							<div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic02.png'/>" /></p>
								<p class="tit">설립일</p>
								<p class="txt">2006.05.24</p>
							</div>
						
							<div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic03.png'/>" /></p>
								<p class="tit">주요사업</p>
								<p class="txt">보안솔루션 구축 및 보안 통합사업, 유지보수</p>
							</div>
						
							<div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic04.png'/>" /></p>
								<p class="tit">대표이사</p>
								<p class="txt">이승우</p>
							</div>
						
							<div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic05.png'/>" /></p>
								<p class="tit">사무실주소</p>
								<p class="txt">[서울]서울특별시 강서구 마곡동 759-1, 두산더랜드타워  A동 1223호<br>[부산] 부산광역시 해운대구 센텀중앙로 97,센텀스카이비즈 A동 2509호</p>
							</div>
						
							<!-- <div>
								<p class="icon"><img alt="" src="<c:url value='/resources/img/company/overview_ic06.png'/>" /></p>
								<p class="tit">대표전화</p>
								<p class="txt">051.892.3723</p>
							</div> -->
					</div>
				</div>		
			</div>
			<!--개요 E-->

		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->