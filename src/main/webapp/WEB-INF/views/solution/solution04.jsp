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
			<li class="depth_sub"><a href="javascript:void('0')">엔드 포인트 보안</a>
				<ul>
					<li><a href="<c:url value='/solution/solution01'/>">네트워크보안</a></li>
					<li><a href="<c:url value='/solution/solution02'/>">클라우드</a></li>
					<li><a href="<c:url value='/solution/solution03'/>">어플리케이션 보안</a></li>
					<li><a href="<c:url value='/solution/solution04'/>">엔드 포인트 보안</a></li>
					<li><a href="<c:url value='/solution/solution05'/>">Other Solution</a></li>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">PC개인정보보호</a>
				<ul>
					<li><a href="<c:url value='/solution/solution04'/>">PC개인정보보호</a></li>
					<li><a href="<c:url value='/solution/solution04_2'/>">랜섬웨어차단</a></li>
					<li><a href="<c:url value='/solution/solution04_3'/>">키보드보안</a></li>
					<li><a href="<c:url value='/solution/solution04_4'/>">보안USB</a></li>
					<li><a href="<c:url value='/solution/solution04_5'/>">네트워크접근제어</a></li>
					<li><a href="<c:url value='/solution/solution04_6'/>">내부정보유출방지</a></li>					
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">PC개인정보보호</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<!--PC개인정보보호 S-->
			<div class="solution_hd sol04">
				<div class="inner">
					<h3 class="hd_tit">PCFILTER</h3>
					<p class="mtxt"><span class="txt_str">내 PC안의 개인정보 지킴이</span></p>
					<!-- <p class="center">AIVFW(APPLICATION INSIGHT VOIP FIREWALL)는 완전한 SIP/RTP 프로토콜 분석을 기반으로 과금우회, 콜 스팸 및 호 가로채기 등 외부로부터 VoIP 서버를 대상으로 한 비정상적인 침해 행위에 대한 탐지 및 차단 기능을 제공하는 인터넷 전화(VoIP) 전용 방화벽 제품입니다.</p> -->
						</div>	
					</div>
					<div class="inner">
						<div class="solution01">
							
							<div class="con_wr">
								<p class="mb20">PC내 개인정보(주민등록번호, 여권번호, 외국인등록번호, 운전면허번호 등)가 포함된 문서를 검색하고, 개인정보 포함여부를 실시간 알림으로
모니터링하여 개인정보 노출 위험성을 조기 발견, 개인정보보호를 효과적인 대응하는 솔루션입니다.
								</p>
								<div class="box_wr">
									<img src="<c:url value='/resources/img/solution/solution04_gph01.gif'/>" alt=""/>
								</div>	
							</div>
							<h3 class="cnt_tit">인증현황</h3>
							<div class="certification">
							  <ul>
								<li><img src="<c:url value='/resources/img/solution/solution04_certification1.jpg'/>" alt=""/><span>CC인증</span></li>
								<li><img src="<c:url value='/resources/img/solution/solution04_certification2.jpg'/>" alt=""/><span>조달제품등록</span></li>
								<li><img src="<c:url value='/resources/img/solution/solution04_certification3.jpg'/>" alt=""/><span>GS인증</span></li>
							  </ul>
							</div>

							<h3 class="cnt_tit">주요특징</h3>
							<div class="con_wr">
								<ul class="effect">
									<li>
										<p class="eft_it"><span class="ic sol04_q01"></span> <span class="tx_t">PC 내 개인정보 검색</span>-개인정보를 인덱싱 방식의 신속한 검사<br>-주민등록번호, 외국인번호, 여권번호, 운전면허번호 등 개인정보가 포함된 문서(압축파일포함)를 검사<br>※ 개인정보보호법 시행령 고유식별정보 검색 지원</p>
									</li>
									<li>
										<p class="eft_it"><span class="ic sol04_q02"></span> <span class="tx_t">개인정보 완전 삭제</span>-국제기준 표준 알고리즘 이용 7회 이상 파기<br>복구 불가능한 파일로 완전 삭제 기능</p>
									</li>
									<li>
										<p class="eft_it"><span class="ic sol04_q03"></span> <span class="tx_t">편리한 관리</span>-에이전트 실행 없이도 개별 파일에 대한 간편 검색 및 암호화, 삭제 가능<br>-에이전트 동작 및 현황 실시간 모니터링</p>
									</li>
									<li>
										<p class="eft_it"><span class="ic sol04_q04"></span> <span class="tx_t">개인정보 암호화</span>-국정원 인증 암호화 모듈 사용으로 안정적인 파일 암호화, 복호화 가능</p>
									</li>
									<li>
										<p class="eft_it"><span class="ic sol04_q05"></span> <span class="tx_t">USB 드라이브 검사</span>-PC에 연결된 USB 메모리, 외장 하드 디스크 자동 검사</p>
									</li>
									<li>
										<p class="eft_it"><span class="ic sol04_q06"></span> <span class="tx_t">실시간 알림</span>-자신도 모르게 노출/유출할 수 있는 개인정보를 실시간으로 모니터링하여 개인정보 보유 여부를 인지시킴</p>
									</li>
								</ul>
							</div>
							
							<h3 class="cnt_tit">법률적 근거</h3>
							<div class="con_wr">
								<div class="table-responsive">
									<table cellpadding="0" cellspacing="0" border="0" class="tbl">
										<caption class="blind"></caption>
										<colgroup>
											<col width="14%" />
											<col width="14%" />
											<col width="30%" />
											<col width="14%" />
											<col width="14%" />
											<col width="14%" />
										</colgroup>
										<thead>
											<tr>
												<th colspan="3">개인정보보호법</th>
												<th>피씨필터</th>
												<th>서버필터</th>
												<th>웹필터</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="tbl_tit02">제21조</td>
												<td>개인정보의 파기</td>
												<td class="lft">보유기간경과, 목적달성 등 불필요시 파기 단서에 따라 보존시 분리 저장·관리 조치</td>
												<td class="lft" rowspan="12">1.개인정보 검사(파일분리)<br>2.검출 파일 암호화(분실·도난·유출·위조·변조 또는 훼손 방지)<br>3.완전 삭제(파기)<br>4.파일 이동(분리 저장 관리)<br>5.실시간 진단</td>
												<td class="lft" rowspan="12">1.개인정보 검사(파일분리)<br>2.검사 결과 리포트(현황파악, 보호조치 방법결정)<br>3.분실·도난·유출·위조·변조 또는 훼손 방지를 위한 보호조치(서버내 파일 암호화 및 삭제)</td>
												<td class="lft" rowspan="12">1.등록 전 게시물 진단<br>2.개인정보 유입차단(개인식별정보 수집, 처리 금지)</td>
											</tr>
											<tr>
												<td class="tbl_tit02" rowspan="2">제24조<br>제24조의 2</td>
												<td rowspan="2">식별정보의 처리 제한(주민등록번호, 여권번호, 면허번호, 외국인등록번호, 유전정보)</td>
												<td class="lft">개인식별정보 처리 금지</td>
											</tr>
											<tr>
												<td class="lft bd_l">처리 시 분실·도난·유출·위조·변조 또는 훼손 방지위한 안전성 확보에 필요한 조치</td>
											</tr>
											<tr>
												<td class="tbl_tit02">제34조의 2</td>
												<td rowspan="2">과징금, 벌칙</td>
												<td class="lft">주민등록번호의 분실·도난·유출·위조·변조 또는 훼손 시 과징금 최고 5억원(안전성 확보 조치 의무를 다한 경우 예외)</td>
											</tr>
											<tr>
												<td class="tbl_tit02">제73조</td>
												<td class="lft">안전성 확보 조치 및 필요조치 미시행시 최고 징역2년, 벌금 2천만원</td>
											</tr>
											<tr>
												<th colspan="3">정보통신망법</th>
											</tr>
											<tr>
												<td class="tbl_tit02">제23조의 2</td>
												<td>주민등록번호의 사용제한</td>
												<td class="lft">- 본인확인기관<br>- 법령에서 수집 이용 허용한 경우<br>- 영업상 목적으로 방통위가 고시한 경우 외 주민등록번호 수집·이용 할 수 없다</td>
											</tr>
											<tr>
												<td class="tbl_tit02">제28조</td>
												<td>개인정보의 보호조치</td>
												<td class="lft">개인정보를 취급할 때엔 개인정보의 분실·도난·누출·변조 또는 훼손을 방지하기 위한 기술적·관리적 조치를 하여야 한다.</td>
											</tr>
											<tr>
												<td class="tbl_tit02">제64조의 3</td>
												<td>과징금의 부과</td>
												<td class="lft">개인정보의 분실·도난·누출·변조·훼손 시 매출액의 3% 이하 혹은 4억원 이하의 과징금 부과</td>
											</tr>
											<tr>
												<td class="tbl_tit02">시행령 제16조<br>(15.08.18시행)</td>
												<td>개인정보 유효기간</td>
												<td class="lft">휴면계정 기간 경과시 즉시 파기, 분리보관 3년에서 1년으로 단축</td>
											</tr>
											<tr>
												<td class="tbl_tit02">보호조치 기준 제6조<br>(15.05.19 시행)</td>
												<td>암호화 대상정보 및 기기 확대</td>
												<td class="lft">- 암호화 대상 장치 '모바일 기기'추가<br>- 암호화 대상 정보에 '여권번호·운전면허·외국인 등록번호' 포함</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<h3 class="cnt_tit">구축실적</h3>
							<div class="con_wr">
								<ul class="output mt10">
									<li>
										<p class="img_sort"><img src="<c:url value='/resources/img/solution/solution01_3_q09.png'/>" alt=""/></p>
										<dl>
											<dt>공공기관 </dt>
											<dt class="pt10"><img src="<c:url value='/resources/img/solution/solution04_org01.png'/>" alt="고용노동부"/></dt>
											<dd>
												<p class="title">고용노동부</p>
												고객사 정보 : 개인정보를 많이 취급하는 기관<br>
												납품 솔루션 : PC필터
											</dd>
											<dd><b>도입배경</b> <br>
												• 개인정보보호법에 따른 기술적 보호조치 및 안정성확보 도구 필요성
											</dd>
											<dd><b>해결방법</b> <br>
												• PC필터 구축을 통해서 PC 내 개인정보보호솔루션 구축, 쉽고 직관적인 사용자기반의 검사 및 보호조치 제공 <br>
												• 개인정보보호법의 기술적 조치를 쉽게 구현하고, 주기적인 개인정보 검사 및 보호조치를 이루어 안전한 업무환경 구현
											</dd>
											<dd><b>효과</b> <br>
												• 안정된 PC개인정보 검사 및 보호도구 확보<br>
												• PC 및 기타 시스템과 영향을 주지 않는 안정한 운영<br>
												• 13,000여 대규모 인원에 대한 효과적인 관리방법 확보<br>
												• 개인정보호법 에 따른 기술적 보호조치 구현
											</dd>
										</dl>
									</li>
									<li>
										<p class="img_sort"><img src="<c:url value='/resources/img/solution/solution01_3_q12.png'/>" alt=""/></p>
										<dl>
											<dt>기업 </dt>
											<dt class="pt10"><img src="<c:url value='/resources/img/solution/solution04_company01.png'/>" alt="BGF리테일"/></dt>
											<dd>
												<p class="title">BGF리테일</p>
												납품솔루션 : 피씨필터<br>
												설치시점 : 2015년 9월 ~ 2015년 11월
											</dd>
											<dd><b>설치환경정보</b> <br>
												• BGF리테일 전사운영, PC 약 2,000여 대에 에이전트 설치, 관리서버 1식 도입
											</dd>
											<dd><b>고객사 특징</b> <br>
												• 편의점 상품의 바코드가 주민등록번호 패턴과 일치하여 개인정보로 인식 검출되는 경우가 발생<br>
												• 상품 바코드 DB를 참조하여서 진단을 수행. 오탐 문제를 최소화하여 개인정보 진단 정확도를 최대로 끌어올려서 솔루션과 고객사간 신뢰도를 확보
											</dd>
										</dl>
									</li>
								</ul>
							</div>
							
						</div>
					</div>
					<!--//PC개인정보보호 E-->
		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->