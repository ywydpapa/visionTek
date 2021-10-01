<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="ui"%>
<!--서브 비주얼이미지 S-->
<section id="sub_visual">
	<div class="sub_visual_txt">
		<span><img src="<c:url value='/resources/img/common/sub_visual_txt_logo.png'/>" alt="VisionTek" class="sub_vtxt_line"/></span>
		<h2>조달제품</h2>
	</div>
	<div class="viimg svis03 visualZoom">
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
				<a href="javascript:void('0')">조달제품</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<li><a href="<c:url value='/solution/solution01'/>" >솔루션</a>
					<li><a href="<c:url value='/procure/procure01'/>" >조달제품</a>
					<li><a href="<c:url value='/security/security01'/>">보안SI</a>
					<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
				</ul>
			</li>
			<li class="depth_sub"><a href="javascript:void('0')">틸론</a>
				<ul>
					<li><a href="<c:url value='/procure/procure01'/>">모니터랩</a></li>
					<li><a href="<c:url value='/procure/procure02'/>">틸론</a></li>
					<li><a href="<c:url value='/procure/procure03'/>">넷코아테크</a></li>
					<li><a href="<c:url value='/procure/procure04'/>">SQI소프트 </a></li>
					<li><a href="<c:url value='/procure/procure05'/>">LG히다찌</a></li>
					<li><a href="<c:url value='/procure/procure06'/>">큐브바이트</a></li>
					<li><a href="<c:url value='/procure/procure07'/>">알티베이스</a></li>
					<li><a href="<c:url value='/procure/procure08'/>">BeyondTrust</a></li>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">컴퓨터망전환장치</a>
				<ul>
					<li><a href="<c:url value='/procure/procure02'/>">가상데스크톱</a></li>
					<li><a href="<c:url value='/procure/procure02_2'/>">컴퓨터망전환장치</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">컴퓨터망전환장치</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<div class="innerwrap">
			<form id="boardFrm" action="<c:url value='/procure/procure02'/>" method="post" >
			<input type="hidden" id="pageIndex" name="pageIndex" value="1">
				<div class="procure_hd pro_bg02">
					<h3>ZeroPlex</h3>
					<p class="stxt"><span>T24E38</span></p>
					<div class="conts">
						<div class="title">
							<p>디스플레이 일체형 컴퓨터 망전환장치</p>
						</div>
						<div class="conts_in">
							ZeroPlex는 가상 데스크톱의 보안성과 업무 효율성을 극대화하는 디스플레이 일체형 컴퓨터 망전환장치입니다.
							틸론의 글로벌 표준 가상화 원천 기술을 바탕으로 최신 컴퓨팅 아키텍처, 눈이 편안한 IPS디스플레이, 검증된 국내 생산 프로세스로 차별화된 클라우드 경험을 선사합니다. 망분리부터 스마트워크까지, 어떠한 업무 환경에서도 뛰어난 내구도와 편리한 가상 데스크톱 경험을 제공하는 ZeroPlex와 함께 하십시오.
						</div>
					</div>
					<div class="btn_wr">
						<c:forEach items="${fileList }" var="list" varStatus="status">
							<c:if test="${status.index lt 1}">
								<span class="btn_brochure"><a href="<c:url value='/common/FileDown.do?fileId=${list.seq }'/>">제품브로셔</a></span>
							</c:if>	
						</c:forEach>
					</div>
				</div>
				<!--조달제품 리스트 S-->
				<div class="procure_list">
					<ul>
						<c:forEach var="board" items="${itemList }" varStatus="status">
						<li>
							<c:choose>
							    <c:when test="${'<img/>' eq board.content}">
							        <p class="pdt_img"><img src="<c:url value='/resources/img/procure/noimg.gif'/>"alt="noimg"/></p>
							    </c:when>
							    <c:otherwise>
							        <p class="pdt_img">${board.content }</p>
							    </c:otherwise>
							</c:choose>
							<div class="product_info">
								<p class="pdt_title"><span class="maker">틸론</span><br><span class="pdt_name">${board.title }</span></p>
								<p class="etc_info">${board.subTitle }</p>
								<ul class="info">
									<li><span class="tit">물품식별번호</span> ${board.itemNumber }</li>
									<li><span class="tit">조달등록가격</span> ${board.price }</li>
								</ul>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
				</form>
				<!--//조달제품 리스트 E-->

				<!--페이징-->
				<div class="paging">
					<ul>
						<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="goPageNum" />
					</ul>
				</div>
				<!--//페이징-->
				<!-- 모바일용 페이징 S -->
				<div class="mb_paging_btn">
				<ui:pagination paginationInfo="${paginationInfo2}" type="imageMobile" jsFunction="goPageNum" />
<!-- 					<button class="prev">이전</button> <span class="total">3/15</span> <button class="next">다음</button> -->
				</div>
				<!-- 모바일용 페이징 E -->

			</div>
		</div>
		<!--//컨텐츠 E-->
	</div>
</div>
<!-- //content E -->
<script type="text/javascript">
function goPageNum(num) {
    $("#pageIndex").val(num);
    
    $("#boardFrm").submit();
}
</script>