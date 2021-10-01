<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header S -->
      <header>
      	<section>
          	<h1 class="logo"><a href="<c:url value='/main/index'/>"><img src="<c:url value='/resources/img/common/logo.png'/>" alt="VisionTek" title="VisionTek"></a></h1>
		<p class="top_btn"><span class="btn_remote"><a href="http://367.co.kr/" target="_blank">원격지원</a></span>
			<a href="<c:url value='#'/>" class="sidebar-toggle" data-toggle="offcanvas" role="button" onclick="openMenu()"></a>
		</p>
		<p class="top_btn"><span class="btn_remote"><a href="https://docs.google.com/forms/d/e/1FAIpQLSfj3T-N8lP_FpvgZytPQ_32GBE3VEX04WuOptey4ynB6uxkAA/viewform" target="_blank">영업기회등록</a></span>
         <a href="<c:url value='#'/>" class="sidebar-toggle" data-toggle="offcanvas" role="button" onclick="openMenu()"></a>
      </p>

              <nav>
			<ul>
				<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<div class="dth2">
						<div class="dth2_in">
							<ul class="m01">
								<li><a href="<c:url value='/company/company01'/>">개요</a></li>
								<li><a href="<c:url value='/company/company02'/>">연혁</a></li>
								<li><a href="<c:url value='/company/company03'/>">인사말</a></li>
								<li><a href="<c:url value='/company/company04'/>">오시는길</a></li>
								<li><a href="<c:url value='/company/company05'/>">협력사</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/solution/solution01'/>" >SECURITY</a> 
					<div class="dth2">
						<div class="dth2_in">
							<div class="m02">
								<ul class="dth_wr ">
									<li class="heading"><a href="<c:url value='/solution/solution01'/>">보안솔루션</a></li>
									<li><a href="<c:url value='/solution/solution01'/>">차세대방화벽</a></li>
									<li><a href="<c:url value='/solution/solution01_2'/>">글로벌고성능방화벽</a></li>
									<!--<li><a href="<c:url value='/solution/solution01_3'/>">망연계솔루션</a></li> -->
									<li><a href="<c:url value='/solution/solution01_3'/>">트랙픽분석관리시스템</a></li>
									<li><a href="<c:url value='/solution/solution01_4'/>">유해사이트차단</a></li>
									<li><a href="<c:url value='/solution/solution01_5'/>">웹방화벽</a></li>
									<li><a href="<c:url value='/solution/solution01_6'/>">PC개인정보보호</a></li>
									<li><a href="<c:url value='/solution/solution01_7'/>">Smart NAC</a></li>
									<li><a href="<c:url value='/solution/solution01_7'/>">보안 V-WORM 스토리지</a></li>
								</ul>
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution03'/>">Database</a></li>
									<li><a href="<c:url value='/solution/solution03'/>">eXperDB</a></li>
									<li><a href="<c:url value='/solution/solution03_2'/>">MariaDB Max Scales</a></li>
									<li><a href="<c:url value='/solution/solution03_3'/>">Goldilocks</a></li>
									<li><a href="<c:url value='/solution/solution03_4'/>">DBMS Migration Service</a></li>
								</ul>
								<!-- <ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution04'/>">엔드 포인트 보안</a></li>
									<li><a href="<c:url value='/solution/solution04'/>">PC개인정보보호</a></li>
									<li><a href="<c:url value='/solution/solution04_2'/>">랜섬웨어차단</a></li>
									<li><a href="<c:url value='/solution/solution04_3'/>">키보드보안</a></li>
									<li><a href="<c:url value='/solution/solution04_4'/>">보안USB</a></li>
									<li><a href="<c:url value='/solution/solution04_5'/>">네트워크접근제어</a></li>
									<li><a href="<c:url value='/solution/solution04_6'/>">내부정보유출방지</a></li>
								</ul>
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution05'/>">Other Solution</a></li>

									<li><a href="<c:url value='/solution/solution05_2'/>">WORM 스토리지</a></li>
									<li><a href="<c:url value='/solution/solution05_3'/>">eXperDB</a></li>
								</ul> -->
							</div>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/procure/procure01'/>" >DBMS</a>
					<div class="dth2">
						<div class="dth2_in">
							<div class="m03">
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure01'/>">모니터랩</a></li>
									<li><a href="<c:url value='/procure/procure01'/>">웹방화벽</a></li>
									<!--<li><a href="<c:url value='/procure/procure01_2'/>">DB방화벽</a></li>-->
									<!--<li><a href="<c:url value='/procure/procure01_3'/>">APT대응솔루션</a></li>-->
									<!--<li><a href="<c:url value='/procure/procure01_4'/>">VoIP방화벽</a></li>-->
									<li><a href="<c:url value='/procure/procure01_5'/>">유해사이트차단</a></li>
									<li><a href="<c:url value='/procure/procure01_6'/>">클라우드웹방화벽</a></li>
								</ul>
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure02'/>">틸론</a></li>
									<li><a href="<c:url value='/procure/procure02'/>">가상데스크톱</a></li>
									<li><a href="<c:url value='/procure/procure02_2'/>">컴퓨터망전환장치</a></li>
								</ul>
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure03'/>">넷코아테크</a></li>
									<li><a href="<c:url value='/procure/procure03'/>">트래픽분석관리시스템</a></li>
								</ul>
								<ul class="dth_wr">
									<!--<li class="heading"><a href="<c:url value='/procure/procure04'/>">SQI소프트</a></li>-->
									<!--<li><a href="<c:url value='/procure/procure04'/>">망연계솔루션</a></li>-->
								</ul>
								<!-- <ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure05'/>">올리브텍</a></li>
									<li><a href="<c:url value='/procure/procure05'/>">Worm 스토리지</a></li>
								</ul>-->
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure06'/>">OLIVE TECH</a></li>
									<li><a href="<c:url value='/procure/procure06'/>">WORM 스토리지</a></li>
								</ul>
								<!-- <ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/procure/procure07'/>">알티베이스</a></li>
									<li><a href="<c:url value='/procure/procure07'/>">데이터베이스관리소프트웨어</a></li>
								</ul> -->
								<ul class="dth_wr" style="display: none">
									<li class="heading"><a href="<c:url value='/procure/procure08'/>">BeyondTrust</a></li>
									<li><a href="<c:url value='/procure/procure08'/>">랜섬웨어 대응솔루션</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/security/security01'/>">클라우드</a>
					<div class="dth2">
						<div class="dth2_in">
							<div class="m02">
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution02'/>">클라우드</a></li>
									<li><a href="<c:url value='/solution/solution02'/>">가상데스크톱</a></li>
									<li><a href="<c:url value='/solution/solution02_2'/>">서버가상화</a></li>
									<!-- <li><a href="<c:url value='/solution/solution02_3'/>">NFV</a></li> -->
									<li><a href="<c:url value='/solution/solution02_4'/>">ACCORDION</a></li>
								</ul>
								<!-- <ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution04'/>">엔드 포인트 보안</a></li>
									<li><a href="<c:url value='/solution/solution04'/>">PC개인정보보호</a></li>
									<li><a href="<c:url value='/solution/solution04_2'/>">랜섬웨어차단</a></li>
									<li><a href="<c:url value='/solution/solution04_3'/>">키보드보안</a></li>
									<li><a href="<c:url value='/solution/solution04_4'/>">보안USB</a></li>
									<li><a href="<c:url value='/solution/solution04_5'/>">네트워크접근제어</a></li>
									<li><a href="<c:url value='/solution/solution04_6'/>">내부정보유출방지</a></li>
								</ul>
								<ul class="dth_wr">
									<li class="heading"><a href="<c:url value='/solution/solution05'/>">Other Solution</a></li>

									<li><a href="<c:url value='/solution/solution05_2'/>">WORM 스토리지</a></li>
									<li><a href="<c:url value='/solution/solution05_3'/>">eXperDB</a></li>
								</ul> -->
							</div>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/newfolder/solution01.jsp'/>">보안SI</a>
				<%-- <li><a href="../views/newfolder/solution01.jsp">보안SI</a> --%>
					<div class="dth2">
						<div class="dth2_in">
							<ul class="m04">
								<li><a href="<c:url value='/security/solution01'/>">보안SI</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<div class="dth2">
						<div class="dth2_in">
							<ul class="m05">
								<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
					<div class="dth2">
						<div class="dth2_in">
							<ul class="m06">
								<li><a href="<c:url value='/news/notice_list'/>">NEWS</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</nav>
          </section>
        
	<!-- 모바일 메뉴S -->
	<div class="allmenu">
          	<div class="mbtn_close"></div>
              <div class="menubox">
                  <div class="m_menu">
				<h3 class="mt20"><img src="<c:url value='/resources/img/common/m_logo.png'/>" alt="VisionTek"></h3>
				<a class="plus">회사소개</a>
                          <div class="submn">
                              <a href="<c:url value='/company/company01'/>">개요</a>
                              <a href="<c:url value='/company/company02'/>">연혁</a>
                              <a href="<c:url value='/company/company03'/>">인사말</a>
							  <a href="<c:url value='/company/company04'/>">오시는길</a>
							  <a href="<c:url value='/company/company05'/>">협력사</a>
                          </div>
				<a class="plus">솔루션</a>
                          <div class="submn">
                 		<a class="plus2">네트워크 보안</a>
							<div class="submn_inner">
								<a href="<c:url value='/solution/solution01'/>">차세대방화벽</a>
								<a href="<c:url value='/solution/solution01_2'/>">차세대IPS</a>
								<a href="<c:url value='/solution/solution01_3'/>">글로벌차세대방화벽</a>
								<a href="<c:url value='/solution/solution01_4'/>">트래픽분석관리시스템</a>
								<a href="<c:url value='/solution/solution01_5'/>">APT공격탐지솔루션</a>
								<a href="<c:url value='/solution/solution01_6'/>">유해사이트차단</a>
								<a href="<c:url value='/solution/solution01_7'/>">SSL가시성장비</a>
							</div>
               		    <a class="plus2">클라우드</a>
							<div class="submn_inner">
								<a href="<c:url value='/solution/solution02'/>">가상데스크톱</a>
								<a href="<c:url value='/solution/solution02_2'/>">서버가상화</a>
								<a href="<c:url value='/solution/solution02_3'/>">NFV</a>
								<a href="<c:url value='/solution/solution02_4'/>">ACCORDION</a>
							</div>
                		<a class="plus2">어플리케이션 보안</a>
							<div class="submn_inner">
								<a href="<c:url value='/solution/solution03'/>">웹방화벽</a>
								<!--<a href="<c:url value='/solution/solution03_2'/>">DB방화벽</a>-->
								<!--<a href="<c:url value='/solution/solution03_3'/>">VoIP방화벽</a>-->
								<!--<a href="<c:url value='/solution/solution03_4'/>">취약점분석</a>-->
							</div>
						<a class="plus2">엔드 포인트 보안</a>
							<div class="submn_inner">
								<a href="<c:url value='/solution/solution04'/>">PC개인정보보호</a>
								<a href="<c:url value='/solution/solution04_2'/>">랜섬웨어차단</a>
								<a href="<c:url value='/solution/solution04_3'/>">키보드보안</a>
								<a href="<c:url value='/solution/solution04_4'/>">보안USB</a>
								<a href="<c:url value='/solution/solution04_5'/>">네트워크접근제어</a>
								<a href="<c:url value='/solution/solution04_6'/>">내부정보유출방지</a>
							</div>
						<a class="plus2">Other Solution</a>
							<div class="submn_inner">
								<a href="<c:url value='/solution/solution05_2'/>">WORM 스토리지</a>
								<a href="<c:url value='/solution/solution05_3'/>">eXperDB</a>
							</div>
                          </div>
						<a class="plus">조달제품</a>
                          <div class="submn">
                              <a class="plus2">모니터랩</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure01'/>">웹방화벽</a>
								<!--<a href="<c:url value='/procure/procure01_2'/>">DB방화벽</a>-->
								<!--<a href="<c:url value='/procure/procure01_3'/>">APT대응솔루션</a>-->
								<!--<a href="<c:url value='/procure/procure01_4'/>">VoIP방화벽</a>-->
								<a href="<c:url value='/procure/procure01_5'/>">유해사이트차단</a>
								<a href="<c:url value='/procure/procure01_6'/>">클라우드웹방화벽</a>
							</div>
                              <a class="plus2">틸론</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure02'/>">가상데스크톱</a>
								<a href="<c:url value='/procure/procure02_2'/>">컴퓨터망전환장치</a>
							</div>
                              <a class="plus2">넷코아테크</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure03'/>">트래픽분석관리시스템</a>
							</div>
							<a class="plus2">SQI소프트</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure04'/>">망연계솔루션</a>
							</div>
							<!-- <a class="plus2">올리브텍</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure05'/>">Worm 스토리지</a>-->
							</div>
							<a class="plus2">OLIVE TECH</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure06'/>">CCTV원격관리솔루션</a>
							</div>
							<!-- <a class="plus2">알티베이스</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure07'/>">데이터베이스관리소프트웨어</a>-->
							</div>
							<a class="plus2">BeyondTrust</a>
							<div class="submn_inner">
								<a href="<c:url value='/procure/procure08'/>">랜섬웨어 대응솔루션</a>
							</div>
                          </div>
                      <a href="<c:url value='/security/security01'/>">보안SI</a>
				<a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
				<a href="<c:url value='/news/notice_list'/>">NEWS</a>
                  </div>
			<ul class="contact">
				<li><i class="fa fa-phone fa-lg"></i> <span class="ml20">070-8260-3882</span></li>
				<li><i class="fa fa-envelope fa-lg"></i> <span class="ml20">marin@vision-tek.co.kr</span></li>
			</ul>
              </div>
         </div>
<!-- //모바일 메뉴E -->
</header>        
<!-- //header E -->