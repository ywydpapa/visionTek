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
			<li class="depth_sub"><a href="javascript:void('0')">Other Solution</a>
				<ul>
					<li><a href="<c:url value='/solution/solution01'/>">네트워크보안</a></li>
					<li><a href="<c:url value='/solution/solution02'/>">클라우드</a></li>
					<li><a href="<c:url value='/solution/solution03'/>">어플리케이션 보안</a></li>
					<li><a href="<c:url value='/solution/solution04'/>">엔드 포인트 보안</a></li>
					<li><a href="<c:url value='/solution/solution05'/>">Other Solution</a></li>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">데이터베이스관리소프트웨어</a>
				<ul>
					<li><a href="<c:url value='/solution/solution05'/>">데이터베이스관리소프트웨어</a></li>		
					<li><a href="<c:url value='/solution/solution05_2'/>">CCTV원격관리솔루션</a></li>		
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">데이터베이스관리소프트웨어</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<!--데이터베이스관리소프트웨어 S-->
			<div class="solution_hd sol04">
				<div class="inner">
					<h3 class="hd_tit">ALTIBASE</h3>
					<p class="mtxt"><span class="txt_str">High Performance Enterprise Grade Relational DBMS</span></p>
					<p class="center">Altibase는 hybrid 아키텍처를 제공하는 인메모리 데이터베이스 관리 시스템(IMDBMS) 입니다.</p>
				</div>	
			</div>
			<div class="inner">
				<div class="solution01">
					
					<h3 class="cnt_tit">인메모리 DBMS</h3>
					<div class="con_wr">
						<p class="mb10">인메모리 DBMS는 메인 메모리(RAM)에 모든 데이터를 저장하고 트랜잭션을 처리하는 DBMS입니다.<br>
							Altibase는 디스크 DBMS에 비해 트랜잭션 처리 성능이 수십배 이상 빠르기 때문에 다음과 같은 목적으로 사용됩니다.</p>
						<h4 class="cnt_tit02">사용 목적</h4> 
						<ul class="con_list">
							<li>온라인 트랜잭션 업무(OLTP)의 빠른 처리</li>
							<li>온라인 분석 업무(OLAP)의 빠른 처리</li>
						</ul>
					</div>

					<h3 class="cnt_tit">Hybrid DBMS</h3>
					<div class="con_wr">
						<p class="mb10">하이브리드 DBMS는 인메모리 DBMS와 디스크 DBMS를 합쳐놓은 구조입니다.</p>
						<h4 class="cnt_tit02">하이브리드 DBMS의 특징</h4> 
						<ul class="con_list">
							<li>통합된 하나의 DB 엔진(인메모리 DBMS+디스크 DBMS)</li>
							<li>고성능 트랜잭션 처리 가능</li>
							<li>대용량 데이터 관리 가능</li>
							<li>메모리와 디스크 간의 데이터 관리 및 연동이 유연함</li>
						</ul>
						<div class="box_wr">
							<img src="<c:url value='/resources/img/solution/solution05_gph01.gif'/>" alt=""/>
						</div>	
					</div>

					<h3 class="cnt_tit">인메모리 DBMS vs. Buffer Cache</h3>
					<div class="con_wr">
						<p class="mb10">버퍼 캐쉬는 디스크 DBMS에서 데이터 처리 시 발생하는 Disk I/O로 인한 성능 저하를 줄이기 위해 사용하는 메모리 공간입니다. 버퍼 캐쉬의 특징은 다음과 같습니다.</p> 
						<ul class="con_list">
							<li>일부의 데이터를 임시적으로 저장(디스크에서 메모리로 page copy)</li>
							<li>캐싱된 데이터 접근 시에만 성능 효과 있음</li>
							<li>Dirty Page에 대한 빈번한 flush 작업 발생(데이터 동기화)</li>
						</ul>

						<h4 class="cnt_tit02">Altibase vs Database Buffer Cache</h4> 
						<div class="table-responsive">
							<table cellpadding="0" cellspacing="0" border="0" class="tbl">
								<caption class="blind"></caption>
								<colgroup>
									<col width="20%" />
									<col width="40%" />
									<col width="40%" />
								</colgroup>
								<thead>
									<tr>
										<th>Item</th>
										<th>Altibase In-Memory Database</th>
										<th>Database Buffer Cache</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tbl_tit">Architecture</td>
										<td><img src="<c:url value='/resources/img/solution/solution05_gph03.gif'/>" alt=""/></td>
										<td><img src="<c:url value='/resources/img/solution/solution05_gph04.gif'/>" alt=""/></td>
									</tr>
									<tr>
										<td class="tbl_tit">WRITES</td>
										<td>Fast</td>
										<td>Slow</td>
									</tr>
									<tr>
										<td class="tbl_tit">READS</td>
										<td>Faster</td>
										<td>Slower</td>
									</tr>
									<tr>
										<td class="tbl_tit">Data Access Mode</td>
										<td>Direct Memory Table Access</td>
										<td>Disk Table Access via Buffer</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<p class="mb10">인메모리 DBMS는 모든 데이터가 메모리에 상주하기 때문에 Disk I/O가 거의 발생하지 않으며 이로 인한 성능 저하도 없습니다.</p> 
						<h4 class="cnt_tit02">인메모리 DBMS의 특징</h4> 
						<ul class="con_list">
							<li>모든 데이터를 메모리에 저장(Disk I/O 거의 없음)</li>
							<li>모든 데이터 접근 시 성능 보장</li>
							<li>균일한 성능 보장</li>
						</ul>
					</div>

					<h3 class="cnt_tit">메모리 데이터 저장방법</h3>
					<div class="con_wr">
						<p class="mb10">메인 메모리(RAM)는 휘발성이라는 특성을 가지고 있습니다. 따라서, 정전이 발생하게 되면 메모리에 저장된 데이터는 모두 삭제됩니다.<br>Altibase는 이런 특성을 고려하여 영속성을 보장할 수 있도록 다음의 순서로 관리하고 있습니다.</p> 
						<ul class="con_list">
							<li>1.트랜잭션 발생</li>
							<li>2.메모리 로그 버퍼에 트랜잭션 로깅</li>
							<li>3.데이터 변경(메모리)</li>
							<li>4.로그 플러쉬(로그 파일로 저장)</li>
							<li>5.체크포인트(메모리 데이터 저장)</li>
						</ul>
						<div class="box_wr mb10">
							<img src="<c:url value='/resources/img/solution/solution05_gph02.gif'/>" alt=""/>
						</div>
						<p class="mb10">또한, 자체적으로 보조 전원을 가지고 있는 NVRAM을 저장소로 사용한다면 이런 문제로부터 자유로울 수 있습니다.</p> 
					</div>		
					
				</div>
			</div>
			<!--//데이터베이스관리소프트웨어 E-->

		</div>
		<!--//컨텐츠 E-->
	</div>
	
      </div>
<!-- //content E -->