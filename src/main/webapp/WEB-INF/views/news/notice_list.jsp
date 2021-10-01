<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="ui"%>
<!--서브 비주얼이미지 S-->
<section id="sub_visual">
	<div class="sub_visual_txt">
		<span><img src="<c:url value='/resources/img/common/sub_visual_txt_logo.png'/>" alt="VisionTek" class="sub_vtxt_line"/></span>
		<h2>NEWS</h2>
	</div>
	<div class="viimg svis06 visualZoom">
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
				<a href="javascript:void('0')">NEWS</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<li><a href="<c:url value='/solution/solution01'/>" >솔루션</a>
					<li><a href="<c:url value='/procure/procure01'/>" >조달제품</a>
					<li><a href="<c:url value='/security/security01'/>">보안SI</a>
					<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">NEWS</a>
				<ul>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">NEWS</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<div class="innerwrap">
		        <form id="boardFrm" action="<c:url value='/news/notice_list'/>" method="post" >
               	<input type="hidden" id="pageIndex" name="pageIndex" value="1">
               	<input type="hidden" id="seq" name="seq" value="0">
				<!--검색 S-->
				<div class="search_wr">
					<select name="searchCondition" id="searchCondition">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
					<span class="search_sec"><input type="text" id="searchKeyword" name="searchKeyword" value="${boardVO.searchKeyword }" placeholder="검색어를 입력하세요"></span>
					<button type="button" onclick="selectBoardList()">검색</button>
				</div>
				<!--//검색 리스트 E-->
				
				<!--News 리스트 S-->
				<div class="bbs">
						<ul class="bbs_list">
							<c:forEach var="board" items="${boardList }" varStatus="status">
									<li>
										<div class="txt_area">
										<c:if test="${board.important eq '공지'}">
											<a href="javascript:;" onclick="selectBoard(${board.seq})">
												<span class="ico_notice">${board.important }</span><em class="tit" >${board.title }</em>
											</a>
											<span>${board.createDt }</span> <span>조회수 : ${board.readCount }</span> 
											<span> 	
											<c:if test="${board.hasAttachment eq 'Y' }">
                                                <img src="<c:url value='/resources/img/news/ico_file.png'/>" alt="첨부파일"/>
                                            </c:if>
                                            </span>
										</c:if>
										<c:if test="${board.important eq '미공지'}">
											<a href="javascript:;" onclick="selectBoard(${board.seq})">
												<em class="tit" >${board.title }</em>
											</a>
											<span>${board.createDt }</span> <span>조회수 : ${board.readCount }</span> 
											<span> 	
											<c:if test="${board.hasAttachment eq 'Y' }">
                                                <img src="<c:url value='/resources/img/news/ico_file.png'/>" alt="첨부파일"/>
                                            </c:if>
                                            </span>
                                        </c:if>
										</div>
									</li>
							</c:forEach>
								
<%-- 							<c:forEach var="board" items="${boardList }" varStatus="status"> --%>
<%-- 								<c:if test="${board.important eq 'N'}"> --%>
<!-- 								<li> -->
<!-- 									<div class="txt_area"> -->
<%-- 										<a href="javascript:;" onclick="selectBoard(${board.seq})"> --%>
<%-- 											<em class="tit" >${board.title }</em> --%>
<!-- 										</a> -->
<%-- 										<span>${board.createDt }</span> <span>조회수 : ${board.readCount }</span>  --%>
<!-- 										<span> 	 -->
<%-- 										<c:if test="${board.hasAttachment eq 'Y' }"> --%>
<%--                                                <img src="<c:url value='/resources/img/news/ico_file.png'/>" alt="첨부파일"/> --%>
<%--                                            </c:if> --%>
<!--                                         </span> -->
<!-- 									</div> -->
<!-- 								</li> -->
<%-- 								</c:if> --%>
<%-- 							</c:forEach> --%>
						</ul>
					</div>
				</form>
				<!--//News 리스트 E-->

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
$(function() {
	var searchCondition = "${boardVO.searchCondition}";
	
	if(searchCondition != "") {
		$("#searchCondition").val(searchCondition);	
	}
});

function selectBoard(seq) {
	$("#seq").val(seq);
	
	$("#boardFrm").attr("action" ,"<c:url value='/news/notice_view'/>");
	$("#boardFrm").submit();
}

function selectBoardList() {
	$("#boardFrm").submit();
}

function goPageNum(num) {
    $("#pageIndex").val(num);
    
    $("#boardFrm").submit();
}
</script>