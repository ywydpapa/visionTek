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
			<li class="depth_sub2"><a href="javascript:void('0')">키보드보안</a>
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
		<h3 class="ctle">키보드 보안</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<!--키보드보안 S-->
			<div class="solution_hd sol04">
				<div class="inner">
					<h3 class="hd_tit">nProtect Online Security</h3>
					<p class="mtxt">키보드 보안, 악성코드 탐지, 네트워크 보호를 비롯한 <span class="txt_str">온라인 통합 보안 서비스</span></p>
					<!-- <p class="center">AIVFW(APPLICATION INSIGHT VOIP FIREWALL)는 완전한 SIP/RTP 프로토콜 분석을 기반으로 과금우회, 콜 스팸 및 호 가로채기 등 외부로부터 VoIP 서버를 대상으로 한 비정상적인 침해 행위에 대한 탐지 및 차단 기능을 제공하는 인터넷 전화(VoIP) 전용 방화벽 제품입니다.</p> -->
				</div>	
			</div>
			<div class="inner">
				<div class="solution01">

					<h3 class="cnt_tit">제품 소개</h3>
					<div class="con_wr">
						<p>키보드 보안, 악성코드 탐지, 네트워크 보호를 비롯한 온라인 통합 보안 서비스로 사용자의 정보자산을 보호하고 금융사고를 방지합니다.
						다양한 운영체제와 웹 브라우저 환경을 지원하여 언제 어디서나 안전한 웹 서비스를 이용할 수 있습니다. 
						</p>
					</div>

					<h3 class="cnt_tit">구성도</h3>
					<div class="con_wr">
						<div class="box_wr">
							<img src="<c:url value='/resources/img/solution/solution04_3_gph01.gif'/>" alt=""/>
						</div>	
					</div>

					<h3 class="cnt_tit">기능</h3>
					<div class="con_wr">
						<h4 class="cnt_tit02">키보드 보안</h4> 
						<div class="con_wr_2dth">
							<p>키보드를 통해 입력되는 모든 정보를 실시간으로 암호화하여 키보드 해킹을 차단하고 사용자 개인정보를 안전하게 보호합니다.</p>
							<ul class="con_list">
								<li>실시간 키 압력 암·복호화 </li>
								<li>확장 E2E 암호화 지원</li>
								<li>시스템 커널 레벨 키로거 감지 및 차단</li>
								<li>BHO, 윈도우 메시지 계층에 대한 키로깅 방지</li>
								<li>PS/2, USB, 블루투스, 적외선 포트 등 다양한 키보드 타입 지원</li>
							</ul>
						</div>
						<h4 class="cnt_tit02">안티 바이러스/스파이웨어</h4> 
						<div class="con_wr_2dth">
							<p>잉카인터넷이 자체 개발한 타키온 안티바이러스 기술을 바탕으로 빠르고 정확하게 악성코드를 탐지 및 차단합니다.</p>
							<ul class="con_list">
								<li>바이러스, 스파이웨어, 애드웨어 등 악성코드 통합 검사 </li>
								<li>다양한 파일 포맷 분석과 변종 악성코드 탐지</li>
								<li>부트, 실행 프로세스 및 다중 압축 파일 검사</li>
								<li>자동 치료 기능 지원 </li>
							</ul>
						</div>
						<h4 class="cnt_tit02">방화벽</h4> 
						<div class="con_wr_2dth">
							<p>네트워크로 유입되는 해킹 공격과 악성코드를 차단하며, IP/Port의 불법 접근 차단 및 관리를 통해 사용자 PC 보안을 향상 시킵니다.</p>
							<ul class="con_list">
								<li>네트워크 실시간 보호로 해킹 방지</li>
								<li>공유폴더 감시 및 접근 관리</li>
								<li>외부 통신 프로그램 실행 감지 및 알림</li>
								<li> IP/Port 모니터링으로 불법적 접근 탐지</li>
							</ul>
						</div>
						<h4 class="cnt_tit02">메모리 보호</h4> 
						<div class="con_wr_2dth">
							<p>시스템 커널 레벨에서 프로세스, DLL을 비롯한 메모리 정보를 보호하며 허용하지 않은 프로세스의 메모리 접근 및 쓰기를 차단합니다.</p>
							<ul class="con_list">
								<li>디버깅 프로그램 감지 및 차단</li>
								<li>프로세스 강제 종료 방지</li>
								<li>파일, 레지스트리 위변조 차단</li>
								<li>API 함수의 취약점을 이용한 접근 차단</li>
							</ul>
						</div>
						<h4 class="cnt_tit02">안티 피싱/파밍</h4> 
						<div class="con_wr_2dth">
							<p>금융기관을 사칭한 피싱사이트와 Hosts 파일 변조로 발생할 수 있는 파밍 공격을 방지하여 사용자의 중요한 개인정보가 유출되지 않도록 합니다.</p>
							<ul class="con_list">
								<li>블랙리스트 방식의 피싱 사이트 차단</li>
								<li> 윈도우 Hosts 파일 변조 감지</li>
							</ul>
						</div>
						<h4 class="cnt_tit02">그 외 기능</h4> 
						<div class="con_wr_2dth">
							<p>이 외에도 다양한 보안 기능으로 사용자 정보를 안전하게 보호합니다.</p>
							<ul class="con_list">
								<li>화면 캡처 방지</li>
								<li>전자상거래 사용자 단말기 하드웨어 정보 제공</li>
								<li>사용자 정보 통계 페이지 제공</li>
								<li>실시간, 정기 및 긴급 업데이트</li>
							</ul>
						</div>
					</div>

					<h3 class="cnt_tit">특징</h3>
					<div class="con_wr">
						<h4 class="cnt_tit02">웹 표준 기술 활용</h4> 
						<p class="mb10">웹 표준 기술 활용으로 비표준 기술을 개선하여, 안전하고 편리한 온라인 서비스를 제공합니다.</p> 
						<div class="table-responsive">
							<table cellpadding="0" cellspacing="0" border="0" class="tbl">
								<caption class="blind"></caption>
								<colgroup>
									<col width="50%" />
									<col width="50%" />
								</colgroup>
								<thead>
									<tr>
										<th>비표준 기술</th>
										<th>웹 표준 기술</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="<c:url value='/resources/img/solution/solution04_3_img01.gif'/>" alt=""/><br><br>
										• 브라우저 별 서로 다른 플러그인 설치 요구로 문제 발생
										</td>
										<td><img src="<c:url value='/resources/img/solution/solution04_3_img02.gif'/>" alt=""/><br><br>
										•  HTML 표준을 활용한 설치 방식<br>
										• 최초 1회 설치로 다양한 웹 브라우저에서 실행
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<h3 class="cnt_tit">실시간 키 입력 암호화</h3>
					<div class="con_wr">
						<p class="mb10">시스템, 사용자 레벨에서 키보드 입력 정보를 실시간으로 암호화하여 키로깅, 메모리 해킹, 스파이웨어를 이용한 악성 공격을 방어합니다. </p> 
						<div class="box_wr">
							<img src="<c:url value='/resources/img/solution/solution04_3_gph02.gif'/>" alt=""/>
						</div>	
					</div>

					<h3 class="cnt_tit">다양한 운영체제 및 웹 브라우저 지원</h3>
					<div class="con_wr">
						<p class="mb10">다양한 운영체제와 웹 브라우저를 지원하며, 최초 1회 설치만으로 다양한 웹 브라우저에서 실행됩니다. </p> 
						<p class="center">
							<img src="<c:url value='/resources/img/solution/solution04_3_img01.jpg'/>" alt=""/>
						</p>	
					</div>

					<h3 class="cnt_tit">가상키패드</h3>
					<div class="con_wr">
						<p class="mb10">사용자 환경이 가상이거나 물리 키보드 보안의 지원이 어려울 시 가상 키패드가 자동으로 적용됩니다. </p> 
						<ul class="sol04_03_keppad">
							<li><img src="<c:url value='/resources/img/solution/solution04_3_img02.jpg'/>" alt=""/><br>랜덤 숫자 키패드</li>
							<li><img src="<c:url value='/resources/img/solution/solution04_3_img03.jpg'/>" alt=""/><br>랜덤 쿼티 키패드(마진형)</li>
							<li><img src="<c:url value='/resources/img/solution/solution04_3_img04.jpg'/>" alt=""/><br>랜덤 쿼티 키패드(키캡형)</li>
							<li><img src="<c:url value='/resources/img/solution/solution04_3_img05.jpg'/>" alt=""/><br>랜덤 쿼티 키패드(확장형)</li>
						</ul>	
					</div>

					<h3 class="cnt_tit">인증</h3>
					<div class="certification">
					  <ul>
						<li><img src="<c:url value='/resources/img/solution/solution04_3_certification1.jpg'/>" alt=""/><span>국가정보원 검증필 암호모듈</span></li>
						<li><img src="<c:url value='/resources/img/solution/solution04_3_certification2.jpg'/>" alt=""/><span>우수 품질 소프트웨어 인증</span></li>
					  </ul>
					</div>
					
					<h3 class="cnt_tit">사용 환경</h3>
					<div class="con_wr">
						<div class="table-responsive">
							<table cellpadding="0" cellspacing="0" border="0" class="tbl">
								<caption class="blind"></caption>
								<colgroup>
									<col width="40%" />
									<col width="60%" />
								</colgroup>
								<tbody>
									<tr>
										<td class="tbl_tit">소프트웨어 </td>
										<td class="lft">- Windows XP SP3 / Vista SP1 / 7 / 8 / 8.1 / 10 (32, 64bit 지원)<br>
										- OS X 10.8 ~ 10.11 / Ubuntu 12.04 ~ 16.04 / Fedora 17 ~ 23<br>
										- Android / iOS
										</td>
									</tr>
									<tr>
										<td class="tbl_tit">하드웨어 </td>
										<td class="lft">- CPU : Pentium 4 3.0Ghz 이상<br>
										- Memory (RAM) : 1GB 이상<br>
										- HDD : 30GB 이상의 여유공간
										</td>
									</tr>
									<tr>
										<td class="tbl_tit">웹 브라우저 </td>
										<td class="lft">- Internet Explorer 7 ~ 11 / Edge / Chrome 30.0 ~ 52.0<br>
										- Safari / Firefox 21.0 ~ 48.0 / Opera 18.0 ~ 39.0 <br>
										- Swing / 360 / QQ / 그 외 다수 웹 브라우저 지원<br>
										※ 행정자치부‘전자정부서비스 호환성 준수지침’준용
										</td>
									</tr>
									<tr>
										<td class="tbl_tit">기타 </td>
										<td class="lft">- 공인인증서 모듈 연동
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</div>
			<!--//키보드보안 E-->
		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->
