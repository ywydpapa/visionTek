<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="ui" uri="ui"%>
	
<form id="modifyForm" name="modifyForm" method="post" action="<c:url value='/manager/modifyItemPage.do'/>">
	<input type="hidden" name="searchCondition" value="${itemVO.searchCondition }"/>
	<input type="hidden" name="searchKeyword" value="${itemVO.searchKeyword }"/>
	<input type="hidden" id="searchBoardId" name="seq" value="${itemVO.seq }"/>
	<input type="hidden" id="searchPageIndex" name="pageIndex" value="${itemVO.pageIndex }"/>
</form>
	
<div class="bbs">
	<form id="frm" name="frm" method="post" action="<c:url value='/manager/itemList.do'/>">
	    <input type="hidden" name="pageIndex" id="pageIndex" value="1" />
        
		<fieldset>
			<legend></legend>
			<p class="searchInfo">* 결과 : <span>${itemCnt } 건</span></p>
			<p class="search">					
				<select id="searchCondition" name="searchCondition" style="width:80px;" >
<!-- 					<option value="">전체</option> -->
					<option value="type" <c:if test="${itemVO.searchCondition eq 'type'}">selected="selected"</c:if>>카테고리</option>
					<option value="title" <c:if test="${itemVO.searchCondition eq 'title'}">selected="selected"</c:if>>제품이름</option>
				</select>
				<input type="search" id="searchKeyword" name="searchKeyword" value="${itemVO.searchKeyword }"/>
				<input type="submit" class="btn_submit" value="검색" />
			</p>
		</fieldset>
	</form>
	
	<form id="frm2" name="frm2" method="post" action="<c:url value='/manager/deleteItem.do'/>">
	<table id="bbsList" class="bbsList">
		<colgroup>
			<col width="5%" />
			<col width="5%" />			
			<col width="5%" />			
			<col width="15%" />			
			<col width="35%" />			
			<col width="15%" />			
			<col width="8%" />			
			<col width="13%" />			
			<col width="10%" />
			<col width="10%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col"><input type="checkbox" id="checkAll" name="checkAll"/></th>
				<th scope="col">번호</th>
				<th scope="col">메인표시</th>
				<th scope="col">카테고리</th>
				<th scope="col">제품이름</th>
				<th scope="col">제품이름2</th>
				<th scope="col">물품식별번호</th>
				<th scope="col">조달등록가격</th>
				<th scope="col">작성자</th>
				<th scope="col" class="lastLine">등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${fn:length(itemList) eq 0 }">
				<tr>
					<td colspan="10" class="lastLine">등록된 데이터가 없습니다.</td>
				</tr>	
			</c:if>
			<c:forEach var="list" items="${itemList}" varStatus="status">
				<tr>
					<td><input type="checkbox" name="seqs" value="${list.seq }"/></td>
					<td class="num">${itemCnt - (itemVO.pageIndex - 1) * itemVO.recordCountPerPage - status.index }</td>					
					<td>${list.important}</td>					
					<td id="type">${list.type }</td>					
					<td class="subject" style="text-align:left"><a href="#" onclick="goModify('${list.seq}'); return false;"><c:out value="${list.title }" escapeXml="false"/></a></td>
					<td>${list.subTitle}</td>
					<td>${list.itemNumber }</td>
					<td>${list.price }</td>
					<td>${list.writerName  }</td>
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
			<a href="<c:url value='/manager/registerItemPage.do'/>" class="btn01"><span>신규등록</span></a>
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
