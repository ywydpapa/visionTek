<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="ui" uri="ui"%>
	
<form id="modifyForm" name="modifyForm" method="post" action="<c:url value='/manager/modifyNoticePage.do'/>">
	<input type="hidden" name="searchCondition" value="${boardVO.searchCondition }"/>
	<input type="hidden" name="searchKeyword" value="${boardVO.searchKeyword }"/>
	<input type="hidden" id="searchBoardId" name="seq" value="${boardVO.seq }"/>
	<input type="hidden" id="searchPageIndex" name="pageIndex" value="${boardVO.pageIndex }"/>
</form>
	
<div class="bbs">
	<form id="frm" name="frm" method="post" action="<c:url value='/manager/noticeList.do'/>">
	    <input type="hidden" name="pageIndex" id="pageIndex" value="1" />
        
		<fieldset>
			<legend></legend>
			<p class="searchInfo">* 결과 : <span>${noticeCnt } 건</span></p>
			<p class="search">					
				<select id="searchCondition" name="searchCondition">
<!-- 					<option value="">전체</option> -->
					<option value="title" <c:if test="${boardVO.searchCondition eq 'title'}">selected="selected"</c:if>>제목</option>
					<option value="content" <c:if test="${boardVO.searchCondition eq 'content'}">selected="selected"</c:if>>내용</option>
				</select>
				<input type="search" id="searchKeyword" name="searchKeyword" value="${boardVO.searchKeyword }"/>
				<input type="submit" class="btn_submit" value="검색" />
			</p>
		</fieldset>
	</form>
	
	<form id="frm2" name="frm2" method="post" action="<c:url value='/manager/deleteNotice.do'/>">
	<table class="bbsList">
		<colgroup>
			<col width="7%" />
			<col width="7%" />			
			<col width="7%" />
			<col width="61%" />
			<col width="10%" />
			<col width="10%" />
			<col width="15%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col"><input type="checkbox" id="checkAll" name="checkAll"/></th>
				<th scope="col">번호</th>
				<th scope="col">공지구분</th>
				<th scope="col">제목</th>
				<th scope="col">첨부파일</th>
				<th scope="col">작성자</th>
				<th scope="col" class="lastLine">등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${fn:length(noticeList) eq 0 }">
				<tr>
					<td colspan="8" class="lastLine">등록된 데이터가 없습니다.</td>
				</tr>	
			</c:if>
			<c:forEach var="list" items="${noticeList }" varStatus="status">
				<tr>
					<td><input type="checkbox" name="seqs" value="${list.seq }"/></td>
					<td class="num">${noticeCnt - (boardVO.pageIndex - 1) * boardVO.recordCountPerPage - status.index }</td>					
					<td>${list.important }</td>
					<td class="subject" style="text-align:left"><a href="#" onclick="goModify('${list.seq}'); return false;"><c:out value="${list.title }" escapeXml="false"/></a></td>
										<td>
						<c:if test='${list.hasAttachment eq "Y" }'>
							<img src="<c:url value='/resources/_img/ico_down.gif'/>" alt="첨부파일"/>
						</c:if>
					</td>
					<td>${list.writerName }</td>
					<td class="lastLine">${list.createDt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
	<div class="paging clfix">
		<p class="btns fl">
			<a href="#" class="btn01"  id="seldelbt"><span>선택삭제</span></a>
		</p>
		<p class="list">
			<ui:pagination paginationInfo = "${paginationInfo}" type="imageAdmin" jsFunction="goPageNum" />
		</p>
		<p class="btns fr">
			<a href="<c:url value='/manager/registerNotice.do'/>" class="btn01"><span>신규등록</span></a>
		</p>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$("#checkAll").click(function(){
		if(this.checked){
			$("input[name='seqs']").each(function(){
				this.checked= true;
			});
		}else{
			$("input[name='seqs']").each(function(){
				this.checked= false;
			});
		}
	});
	
	$("#seldelbt").click(function(e){
		e.preventDefault();
		if($("input[name='seqs']:checked").length > 0) {
			if(confirm("삭제하시겠습니까?")){
				$("#frm2").submit();
			}
		}else{
			alert("삭제할 row를 선택하세요.");
		}
	});
});	

function goPageNum(num){
	$("#pageIndex").val(num);
	$("#frm").submit();
}

function goModify(seq){
	$("#searchBoardId").val(seq);
	$("#modifyForm").submit();
}
</script>
	