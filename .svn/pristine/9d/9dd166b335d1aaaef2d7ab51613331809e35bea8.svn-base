<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="ui"%>

<div class="bbs">
	<form id="frm" name="frm" method="post" action="<c:url value='/manager/adminList.do'/>">
		<input type="hidden" id="pageIndex" name="pageIndex" value="1">
		<input type="hidden" id="adminId" name="adminId" value="${adminVO.adminId }"/>
	</form>
	
	<form id="frm2" name="frm2" method="post" action="<c:url value='/manager/deleteAdminInfo.do'/>">
		<input type="hidden" name="seqs" id="seqs">
		<table class="bbsList">
			<colgroup>
				<col width="7%" />
				<col width="7%" />
				<col width="22%" />
				<col width="15%" />
				<col width="22%" />
				<col width="17%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><input type="checkbox" id="checkAll" name="checkAll" /></th>
					<th scope="col">번호</th>
					<th scope="col">아이디</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">전화번호</th>
					<th scope="col" class="lastLine">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${fn:length(adminList) eq 0 }">
					<tr>
						<td colspan="7" class="lastLine">등록된 데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${adminList }" varStatus="status">
					<tr>
						<td><input type="checkbox" name="seq" value="${list.adminId }" /></td>
						<td class="num">${adminCnt - (adminVO.pageIndex - 1) * adminVO.recordCountPerPage - status.index }</td>
						<td class="subject" style="text-align:center"><a href="#" onclick="adminModify('${list.adminId }', '${paginationInfo.currentPageNo }'); return false;">${list.adminId }</a></td>
						<td>${list.adminName }</td>
						<td>${list.email }</td>
						<td>${list.phone }</td>
						<td class="lastLine">${list.createDate }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	<div class="paging clfix">
		<p class="btns fl">
			<a href="#" class="btn01" id="seldelbt"><span>선택삭제</span></a>
		</p>
		<!-- 페이징 태그라이러브 사용 -->
		<p class="list">
			<ui:pagination paginationInfo="${paginationInfo}" type="imageAdmin" jsFunction="goPageNum" />
		</p>
		<p class="btns fr">
			<a href="#" class="btn01" id="btn_add"><span>신규등록</span></a>
		</p>
	</div>
</div>

<script type="text/javascript">
$(function() {
	$("#btn_add").click(function(e) {
		e.preventDefault();
		window.location.href = "<c:url value='/manager/registerAdminInfo.do?mode=add'/>";
	});

	$("#checkAll").click(function() {
		if (this.checked) {
			$("input[name='seq']").each(function() {
				this.checked = true;
			});
		} else {
			$("input[name='seq']").each(function() {
				this.checked = false;
			});
		}
	});

	$("#seldelbt").click(function(e) {
		e.preventDefault();
		var seqs = [];
		if ($("[name='seq']:checked").length > 0) {
			$("[name='seq']:checked").each(function(d, i) {
				seqs.push(this.value);
			});
			
			$("#seqs").val(seqs);
			
			if (confirm("삭제하시겠습니까?")) {
				$("#frm2").submit();
			}
		} else {
			alert("삭제할 row를 선택하세요.");
		}
	});
});

function goPageNum(num) {
	$("#pageIndex").val(num);
	$("#frm").submit();
}

function adminModify(id, num) {
	$("#pageIndex").val(num);
	$("#adminId").val(id);
	
	$("#frm").attr("action", "<c:url value='/manager/modifyAdminInfoPage.do'/>");
	$("#frm").submit();
}
</script>
