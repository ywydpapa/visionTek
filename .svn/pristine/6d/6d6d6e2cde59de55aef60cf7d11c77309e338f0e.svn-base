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
			<li class="depth_sub"><a href="javascript:void('0')">모니터랩</a>
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
			<li class="depth_sub2"><a href="javascript:void('0')">웹방화벽</a>
					<ul>
					<li><a href="<c:url value='/procure/procure01'/>">웹방화벽</a></li>
					<li><a href="<c:url value='/procure/procure01_2'/>">DB방화벽</a></li>
					<li><a href="<c:url value='/procure/procure01_3'/>">APT대응솔루션</a></li>
					<li><a href="<c:url value='/procure/procure01_4'/>">VoIP방화벽</a></li>
					<li><a href="<c:url value='/procure/procure01_5'/>">유해사이트차단</a></li>
					<li><a href="<c:url value='/procure/procure01_6'/>">클라우드웹방화벽</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">웹방화벽</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<div class="innerwrap">
			<form id="boardFrm" action="<c:url value='/procure/procure01'/>" method="post" >
			<input type="hidden" id="pageIndex" name="pageIndex" value="1">
				<div class="procure_hd">
					<h3>WEB INSIGHT WAF</h3>
					<p class="stxt">Intelligent Web Application Firewall <span>WEB INSIGHT WAF</span></p>
					<div class="conts">
						<div class="title">
							<p>What is<br> WEB INSIGHT WAF?</p>
						</div>
						<div class="conts_in">
							WEB INSIGHT WAF는 완전한 HTTP Protocol해석을 기반으로, Profile 기반의 자동화된 보안 정책과 주기적인 업데이트를 포함하는 정규화된 시그너쳐(Signature) 기반의 보안정책을 지원하며, 다양한 부가 기능을 통해 외부의 해킹으로부터 웹 서비스를 보호해주는 전용 웹 방화벽 제품입니다. 
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
								<p class="pdt_title"><span class="maker">모니터랩</span><br><span class="pdt_name">${board.title }</span></p>
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