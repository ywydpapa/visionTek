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
			<li class="depth_sub"><a href="javascript:void('0')">큐브바이트</a>
				<ul>
					<li><a href="<c:url value='/procure/procure01'/>">모니터랩</a></li>
					<li><a href="<c:url value='/procure/procure02'/>">틸론</a></li>
					<li><a href="<c:url value='/procure/procure03'/>">넷코아테크</a></li>
					<li><a href="<c:url value='/procure/procure04'/>">SQI소프트</a></li>
					<li><a href="<c:url value='/procure/procure05'/>">LG히다찌 </a></li>
					<li><a href="<c:url value='/procure/procure06'/>">큐브바이트</a></li>
					<li><a href="<c:url value='/procure/procure07'/>">알티베이스</a></li>
					<li><a href="<c:url value='/procure/procure08'/>">BeyondTrust</a></li>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">CCTV원격관리솔루션  </a>
				<ul>
					<li><a href="<c:url value='/procure/procure06'/>">CCTV원격관리솔루션  </a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">CCTV원격관리솔루션  </h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<div class="innerwrap">
			<form id="boardFrm" action="<c:url value='/procure/procure05'/>" method="post" >
			<input type="hidden" id="pageIndex" name="pageIndex" value="1">
				<div class="procure_hd pro_bg06">
					<h3>캐시모니터링시스템</h3>
					<!-- <p class="stxt"><span>Traffic Management System</span></p> -->
					<div class="conts">
						<div class="title">
							<p>IoT 디바이스를위한 통합솔루션</p>
						</div>
						<div class="conts_in">
							캐시모니터링시스템은 각종장비들의 HW/SW 오류발생시 시스템의 복구를 위해 신속하고 안전하면서도 편리하게 원격에서 전원관리를 통하여 장비들의 장애를 해결할 수 있도록 합니다.<br>
							현재 IoT 디바이스들(CCTV Camera 등)은 시스템 에러등의 장애시에 시스템OS를 재부팅하는 것만으로도 정상적인 기능을 다시 회복하는 경우가 대부분(이상증상의90%이상해결)입니다. 하지만, 지금까지는 재부팅을 하기 위해서 현장을 방문하여 직접 전원을 조작하여야만 하였습니다.<br>
모니터링시스템은 다수의 복잡한 네트워크상에서의 IoT 디바이스들의 전원을 원격에서 관리함으로써, 관리의효율성을 높이고 현장출동을 위한 시간적, 경제적 손실을 최소화하여 신속하고 효율적인 관리체계를 제공하는데 그 목적이 있습니다.
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
								<p class="pdt_title"><span class="maker">큐브바이트</span><br><span class="pdt_name">${board.title }</span></p>
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