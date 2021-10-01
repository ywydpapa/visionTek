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
			<li class="depth_sub2"><a href="javascript:void('0')">망연계 솔루션</a>
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
		<h3 class="ctle">망연계 솔루션</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<!--망연계 S-->
			<div class="solution_hd sol01">
				<div class="inner">
					<h3 class="hd_tit">ssBridge</h3>
					<p class="mtxt">업무망(내부망)과 인터넷망(외부망)이 분리된 네트워크 환경에서 인터넷망을 통한 업무망 침해를 차단하면서도, 네트워크 영역 간 파일 전송과 스트리밍 서비스를 안전하게 수행하는 <span class="txt_str">망연계 솔루션</span>을 공급합니다.</p>
					<!-- <p class="center">업무망(내부망)과 인터넷망(외부망)이 분리된 네트워크 환경에서 인터넷망을 통한 업무망 침해를 차단하면서도, <br>네트워크 영역 간 파일 전송과 스트리밍 서비스를 안전하게 수행하는 망연계 솔루션을 공급합니다.</p> -->
				</div>	
			</div>
			<div class="inner">
				<div class="solution01">
					<h3 class="btit_str">망연계 솔루션 특징</h3>
					<ul class="adv03">
						<li>
							<p><span class="ic_st sol_ic04"></span> </p>
							<dl>
								<dt>업무망과 인터넷망 간 파일 전송</dt>
							</dl>
						</li>
						<li>
							<p><span class="ic_st sol_ic05"></span></p>
							<dl>
								<dt>DMZ WEB서버와 내부WAS서버 간 연계</dt>
							</dl>
						</li>
						<li>
							<p><span class="ic_st sol_ic06"></span></p>
							<dl>
								<dt>행정기관, 금융기관, 병원, 학교, 쇼핑몰 등의 WEB서비스 연계</dt>
							</dl>
						</li>
						<li>
							<p><span class="ic_st sol_ic07"></span></p>
							<dl>
								<dt>통합관제센터와 외부유관기관 간 연계</dt>
							</dl>
						</li>
					</ul>
					<h3 class="cnt_tit">성능 및 인증</h3>
					<div class="certification">
					  <ul>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification4.jpg'/>" alt=""/><span>초당 최대 트래픽 처리량</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification1.jpg'/>" alt=""/><span>CC인증</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification6.jpg'/>" alt=""/><span>GS인증</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution01_certification7.jpg'/>" alt=""/><span>KC인증</span></li>
					  </ul>
					</div>
					<h3 class="cnt_tit">주요기능</h3>
					<div class="con_wr">
						<ul class="effect">
							<li>
								<p class="eft_it"><span class="ic sol_3_q01"></span> <span class="tx_t">파일 전송</span>- 윈도우 탐색기 컨텍스트 메뉴 및 미니 UI모드<br>- 전송파일에서 악성코드 발견 시 전송 차단</p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q02"></span> <span class="tx_t">멀티 클립보드</span>- 인터넷망에서 이미지와 문자를 여러 번 동시 복사하여 업무망에 붙여넣기 기능 </p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q03"></span> <span class="tx_t">자체 결재 승인 관리</span>- 사전승인, 사후승인 등 다양한 결재 기능<br>- 결재 요청 시 알림 기능 및 결재 행위 기록 저장</p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q04"></span> <span class="tx_t">링크 리다이렉션</span>- 업무망PC에서 인터넷 링크 클릭 시 인터넷망 PC에서 URL 자동 접속 실행 기능 </p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q05"></span> <span class="tx_t">효율적인 정책 관리</span>- 통합 모니터링 대시보드 기능<br>- 전송 트래픽에 대한 세션 관리 기능</p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q06"></span> <span class="tx_t">서버 스트림 연계</span>- 메모리 전송 방식에 의한 고속의 서비스 연계<br>- 허용 트래픽 초과시 해당 세션 지연 또는 종료 기능</p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q07"></span> <span class="tx_t">다양한 연동</span>- 고객사의 결재시스템,AD,SSO<br>- 고객사의 결재시스템,AD,SSO</p>
							</li>
							<li>
								<p class="eft_it"><span class="ic sol_3_q08"></span> <span class="tx_t">우수한 보안</span>- 모든 전송구간의 암호화 통신 지원<br>- 전송기록 및 전송 오류정보 실시간 감시</p>
							</li>
						</ul>
					</div>
					<h3 class="cnt_tit">구축실적</h3>
					<div class="con_wr">
						<ul class="output mt10">
							<li>
								<p class="img_sort"><img src="<c:url value='/resources/img/solution/solution01_3_q09.png'/>" alt=""/></p>
								<dl>
									<dt>공공기관 (2010년 ~  2016년)</dt>
									<dd>우수한 보안성과 탁월한 편의성을 인정받아 대통령비서실, 감사원 등 대표 공공기관에 망연계 솔루션을 공급하는 사업을 수행하였습니다. <br><br>
										• 대통령비서실, 대통령경호실, 헌법재판소<br> 
										• 감사원, 행정자치부, 교육부 <br>
										• 국토교통부, 경기도, 식품의약품안전처 <br>
										• 방송통신위원회, 국민권익위원회, 경찰청 <br>
										• 산림청, 문화재청, 기상청<br> 
										• 충남소방본부, 세종시소방본부, 금융결제원 <br>
										• 한국예탁결제원, 국립환경과학원, 국립산림과학원 <br>
										• 한국고용정보원, 한국소비자원, 지방행정연수원<br> 
										• 우정사업정보센터, 한국해양보증, 인천공항공사 <br>
										• 울산항만공사, 한국도로공사, 한국가스공사<br> 
										• 대한송유관공사, 전기안전공사, 한국가스안전공사<br> 
										• 국민연금공단, 근로복지공단, 공무원연금공단<br> 
										• 국가보안기술연구소, 한국정보통신연구원, 한국항공우주연구원
									</dd>
								</dl>
							</li>
							<li>
								<p class="img_sort"><img src="<c:url value='/resources/img/solution/solution01_3_q10.png'/>" alt=""/></p>
								<dl>
									<dt>금융기관 (2014 ~ 2016)</dt>
									<dd>한국은행, 국민은행, 삼성생명 등 다양한 금융기관에 채택되어 망연계 솔루션을 공급하는 사업을 수행하였습니다. <br><br>
										• 한국은행, KDB산업은행, 국민은행 <br> 
										• 우정사업정보센터, 한국씨티은행, SC은행 <br>
										• 미래에셋증권, 트레이드증권v미래에셋대우증권 <br>
										• 서울보증보험, 삼성생명, AIG손해보험 <br>
										• 미쓰이스미토모해상, 삼성카드, 예금보험공사 <br> 
										• 한국자금중개, 한국증권금융, 금융결제원 
									</dd>
								</dl>
							</li>
							<li>
								<p class="img_sort"><img src="<c:url value='/resources/img/solution/solution01_3_q11.png'/>" alt=""/></p>
								<dl>
									<dt>국방부문 / 기타 (2013 ~ 2016)</dt>
									<dd>육군본부, 국군기무사령부, 사이버사령부 등 국방부문과 이베이 등 일반기업에 망연계 솔루션을 공급하는 사업을 수행하였습니다. <br><br>
										• 국방부, 육군본부, 공군본부 <br> 
										• 기무사령부, 사이버사령부, 제3군사령부 <br>
										• 이베이, LF패션, KAI
									</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--//망연계 E-->
		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->

