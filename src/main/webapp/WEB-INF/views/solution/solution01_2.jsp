<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--서브 비주얼이미지 S-->
<section id="sub_visual">
	<div class="sub_visual_txt">
		<span><img src="<c:url value='/resources/img/common/sub_visual_txt_logo.png'/>" alt="VisionTek" class="sub_vtxt_line"/></span>
		<h2>솔루션</h2>
	</div>
	<div class="viimg svis02 visualZoom">
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
				<a href="javascript:void('0')">솔루션</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<li><a href="<c:url value='/solution/solution01'/>" >솔루션</a>
					<li><a href="<c:url value='/procure/procure01'/>" >조달제품</a>
					<li><a href="<c:url value='/security/security01'/>">보안SI</a>
					<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
				</ul>
			</li>
			<li class="depth_sub"><a href="javascript:void('0')">네트워크 보안</a>
				<ul>
					<li><a href="<c:url value='/solution/solution01'/>">네트워크보안</a></li>
					<li><a href="<c:url value='/solution/solution02'/>">클라우드</a></li>
					<li><a href="<c:url value='/solution/solution03'/>">어플리케이션 보안</a></li>
					<li><a href="<c:url value='/solution/solution04'/>">엔드 포인트 보안</a></li>
					<li><a href="<c:url value='/solution/solution05'/>">Other Solution</a></li>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">차세대IPS</a>
				<ul>
					<li><a href="<c:url value='/solution/solution01'/>">차세대방화벽</a></li>
					<li><a href="<c:url value='/solution/solution01_2'/>">차세대IPS</a></li>
					<li><a href="<c:url value='/solution/solution01_3'/>">망연계 솔루션</a></li>
					<li><a href="<c:url value='/solution/solution01_4'/>">트래픽분석관리시스템</a></li>
					<li><a href="<c:url value='/solution/solution01_5'/>">APT공격탐지솔루션</a></li>
					<li><a href="<c:url value='/solution/solution01_6'/>">유해사이트차단</a></li>
					<li><a href="<c:url value='/solution/solution01_7'/>">SSL가시성장비</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">차세대IPS</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<!--차세대IPS S-->
			<div class="solution_hd sol01">
				<div class="inner">
					<h3 class="hd_tit">SECUI MFI</h3>
					<p class="mtxt"><span class="txt_str">SECUI MFI</span> is <span class="txt_str">the next generation IPS</span></p>
					<p class="center">시큐아이 차세대 IPS는 보안성, 편의성, 신속성이 특징입니다.</p>
				</div>	
			</div>
			<div class="inner">
				<div class="solution01">
					<h3 class="btit_str">시큐아이 차세대 IPS는 보안성, 편의성, 신속성이 특징입니다.</h3>
					<ul class="adv02">
						<li>
							<p><span class="ic_st sol_ic01"></span> </p>
							<dl>
								<dt>보안성</dt>
								<dd>
									- 암호화된 트래픽의 양방향 검사<br>
						- Application 제어와 멀티 패턴 검사
								</dd>
							</dl>
						</li>
						<li>
							<p><span class="ic_st sol_ic02"></span></p>
							<dl>
								<dt>편의성</dt>
								<dd>
									- Application 및 내부 상황 인지<br>
									- 정책 설정과 보안 이벤트 탐지 결과 동시 확인<br>
									- 보안 이벤트 및 상세 분석 정보를 동시 제공<br>
									- 보호 대상별 선택적 보고서 제공
								</dd>
							</dl>
						</li>
						<li>
							<p><span class="ic_st sol_ic03"></span></p>
							<dl>
								<dt>신속성</dt>
								<dd>
									- 장비 탐지 로그에서 즉시 분석 요청이 가능하여 빠른 Feedback 제공<br>
							- 해당 분야 경력 5년 이상의 전문가로 구성된 침해대응센터 운영
								</dd>
							</dl>
						</li>
					</ul>

					<h3 class="cnt_tit">편리한 정책 설정 및 모니터링</h3>
					<div class="con_wr">
						<p class="mb20">SECUI MFI는 네트워크 구간에서의 Application 인지와 취약점 점검 툴을 이용한 내부 상황 인지로 편리한 정책 설정이 가능</p>
						<div class="box_wr">
							<img src="<c:url value='/resources/img/solution/solution01_2_gph01.gif'/>" alt=""/>
						</div>	
					</div>
					<h3 class="cnt_tit">정밀한 탐지</h3>
					<div class="con_wr">
						<p class="mb20">SECUI MFI는 최신 탐지 기법인 SSL 양방향 검사를 실시함으로써, 암호화된 공격도 탐지할 수 있으며 개별 Application 단위로 제어와 탐지가 가능</p>
						<p class="center"><img src="<c:url value='/resources/img/solution/solution01_2_gph02.gif'/>" alt=""/></p>
					</div>
					<h3 class="cnt_tit">신속한 대응 체계</h3>
					<div class="con_wr">
						<p class="mb20">해당 분야 경력 5년 이상의 전문가로 구성된 침해대응센터를 운영하여 보안 이벤트에 대한 신속한 Feedback 제공</p>
						<p class="center"><img src="<c:url value='/resources/img/solution/solution01_2_gph03.gif'/>" alt=""/></p>
					</div>
					<h3 class="cnt_tit">라인업</h3>
					<div class="con_wr">
						<div class="box_wr">
							<img src="<c:url value='/resources/img/solution/solution01_2_img01.jpg'/>" alt=""/>
						</div>	
					</div>
					<h3 class="cnt_tit">인증현황</h3>
					<div class="certification">
					  <ul>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification1.jpg'/>" alt=""/><span>CC인증</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification2.jpg'/>" alt=""/><span>TTA인증</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification3.jpg'/>" alt=""/><span>IPv6 READY</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification5.jpg'/>" alt=""/><span>전략물자</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification6.jpg'/>" alt=""/><span>GS인증</span></li>
					  </ul>
					</div>

				</div>
			</div>
			<!--//차세대IPS E-->
		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->