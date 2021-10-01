<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="ui" uri="ui"%>
	
<form id="modifyForm" name="modifyForm" method="post" action="<c:url value='/manager/modifyBrochurePage.do'/>">
	<input type="hidden" name="searchCondition" value="${brochureVO.searchCondition }"/>
	<input type="hidden" name="searchKeyword" value="${brochureVO.searchKeyword }"/>
	<input type="hidden" id="searchBoardId" name="seq" value="${brochureVO.seq }"/>
	<input type="hidden" id="searchPageIndex" name="pageIndex" value="${brochureVO.pageIndex }"/>
</form>
	
<div class="bbs">
	<form id="frm" name="frm" method="post" action="<c:url value='/manager/brochureList.do'/>">
	    <input type="hidden" name="pageIndex" id="pageIndex" value="1" />
        
		<fieldset>
			<legend></legend>
			<p class="searchInfo">* 결과 : <span>${brochureCnt } 건</span></p>
			<p class="search"> 					
				<select id="searchCondition" name="searchCondition" style="width:80px;" >
<!-- 					<option value="">전체</option> -->
					<option value="title" <c:if test="${brochureVO.searchCondition eq 'title'}">selected="selected"</c:if>>카테고리</option>
<%-- 					<option value="content" <c:if test="${brochureVO.searchCondition eq 'content'}">selected="selected"</c:if>>내용</option> --%>
				</select>
				<input type="search" id="searchKeyword" name="searchKeyword" value="${brochureVO.searchKeyword }"/>
				<input type="submit" class="btn_submit" value="검색" />
			</p>
		</fieldset>
	</form>
	
<%-- 	<form id="frm2" name="frm2" method="post" action="<c:url value='/manager/deleteNotice.do'/>"> --%>
	<table class="bbsList">
		<colgroup>
			<col width="7%" />
			<col width="61%" />
			<col width="10%" />
			<col width="15%" />
		</colgroup>
		<thead>
			<tr>
<!-- 				<th scope="col"><input type="checkbox" id="checkAll" name="checkAll"/></th> -->
				<th scope="col">번호</th>
				<th scope="col">카테고리</th>
				<th scope="col">첨부파일</th>
				<th scope="col" class="lastLine">등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${fn:length(brochureList) eq 0 }">
				<tr>
					<td colspan="4" class="lastLine">등록된 데이터가 없습니다.</td>
				</tr>	
			</c:if>
			<c:forEach var="list" items="${brochureList }" varStatus="status">
				<tr>
<%-- 					<td><input type="checkbox" name="seqs" value="${list.seq }"/></td> --%>
					<td class="num">${brochureCnt - (brochureVO.pageIndex - 1) * brochureVO.recordCountPerPage - status.index }</td>					
					<td class="subject" style="text-align:left"><a href="#" onclick="goModify('${list.seq}'); return false;"><c:out value="${list.title }" escapeXml="false"/></a></td>
					<td>
						<c:if test='${list.hasAttachment eq "Y" }'>
							<img src="<c:url value='/resources/_img/ico_down.gif'/>" alt="첨부파일"/>
						</c:if>
					</td>
					<td class="lastLine">${list.createDt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%-- 	</form> --%>
	<div class="paging clfix">
		<p class="list">
			<ui:pagination paginationInfo = "${paginationInfo}" type="imageAdmin" jsFunction="goPageNum" />
		</p>
<!-- 		<p class="btns fr"> -->
<%-- 			<a href="<c:url value='/manager/registerBrochure.do'/>" class="btn01"><span>신규등록</span></a> --%>
<!-- 		</p> -->
	</div>
</div>

<script type="text/javascript">

function goPageNum(num){
	$("#pageIndex").val(num);
	$("#frm").submit();
}

function goModify(seq){
	$("#searchBoardId").val(seq);
	$("#modifyForm").submit();
}
</script>
	