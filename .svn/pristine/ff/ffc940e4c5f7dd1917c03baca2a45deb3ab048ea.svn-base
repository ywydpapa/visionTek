 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	

<form id="listForm" name="listForm" method="post" action="<c:url value='/manager/brochureList.do'/>">
	<input type="hidden" id="pageIndex" name="pageIndex" value="${brochureVO.pageIndex }" />
	<input type="hidden" name="searchCondition" value="${brochureVO.searchCondition }" />
	<input type="hidden" name="searchKeyword" value="${brochureVO.searchKeyword }" />
</form>
	
<div class="bbs">
	<fieldset>
		<legend></legend>
		<p class="searchInfo">* 필수 입력 항목 입니다.</p>
		<div id="print">
		<form id="frm" name="frm" method="post" enctype="multipart/form-data" action="<c:url value='/manager/registerBrochure.do'/>">
			<input type="hidden" id="seq" name="seq" value="${brochure.seq }"/>
			<input type="hidden" id="mode" name="mode" value="${mode }"/>
			
			<table class="bbsWrite">
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">카테고리</th>
						<td>
							<input type="text" id="title" name="title" class="txt"  value="${brochure.title }" maxlength="50" style="width:160px" readonly="readonly"/>
<%-- 							<input type="text" id="title" name="title" class="txt"  value="${brochure.title }" maxlength="50"/> --%>
						</td>
<!-- 						<td> -->
<!-- 						<select id="title" name="title" style="width:100px"> -->
<%-- 							<option value="웹방화벽" <c:if test="${brochure.title eq '웹방화벽'}">selected="selected"</c:if>>웹방화벽</option> --%>
<%-- 							<option value="DFW" <c:if test="${brochure.title eq 'DFW'}">selected="selected"</c:if>>DFW</option> --%>
<%-- 							<option value="APT" <c:if test="${brochure.title eq 'APT'}">selected="selected"</c:if>>APT</option> --%>
<%-- 							<option value="VIP" <c:if test="${brochure.title eq 'VIP'}">selected="selected"</c:if>>VIP</option> --%>
<%-- 							<option value="SWG" <c:if test="${brochure.title eq 'SWG'}">selected="selected"</c:if>>SWG</option> --%>
<%-- 							<option value="DSTATION" <c:if test="${brochure.title eq 'DSTATION'}">selected="selected"</c:if>>DSTATION</option> --%>
<%-- 							<option value="QOS" <c:if test="${brochure.title eq 'QOS'}">selected="selected"</c:if>>QOS</option> --%>
<%-- 							<option value="망연계" <c:if test="${brochure.title eq '망연계'}">selected="selected"</c:if>>망연계</option> --%>
<%-- 							<option value="히타치" <c:if test="${brochure.title eq '히타치'}">selected="selected"</c:if>>히타치</option> --%>
<!-- 						</select> -->
<!-- 						</td> -->
					</tr>
					<tr>
						<th scope="row">첨부파일</th>
						<td>
							<div id="fileShow">
								<c:if test="${mode eq 'add' }">
									<input type="file" id="add_file" name="file" class="file"/>
								</c:if>
								<c:if test="${mode eq 'upd' }">
									<c:forEach items="${fileList }" var="list" varStatus="status">
										<a href="<c:url value='/common/FileDown.do?fileId=${list.seq }'/>">${list.orgFilename}</a>
                                        <a href="#" onclick="deleteFile('${list.seq}'); return false;" style="color: red;"> X</a><br/>
                                        <input type="hidden" name="org" id="org" value="${list.seq }"/>
									</c:forEach>
									<input type="file" name="file0" class="file"/> 
								</c:if>
							</div>
						</td>
					</tr>	
				</tbody>
			</table>
		</form>
		</div>
		<p class="btns">
			<a href="#" onclick="goList(); return false;" class="btn01"><span>목록</span></a>
			<a href="#" onclick="goWrite(); return false;" class="btn01">
				<span>
					<c:if test="${mode eq 'upd' }">등록</c:if>
					<c:if test="${mode eq 'add' }">등록</c:if>
				</span>
			</a>
		</p>
	</fieldset>
</div>

<script type="text/javascript" src="<c:url value='/resources/se/js/HuskyEZCreator.js'/>" charset="utf-8"></script>	
<script type="text/javascript">
var fileNmNum = 0;

function filePlus() {
	fileNmNum += 1;	
	$("#fileShow").children().last().after("<br/><input type=\"file\" name=\"file"+fileNmNum+"\" class=\"file\"/>");
}

function fileMinus() {
	var chkCnt = $("[name*=file]").length;
	if(chkCnt > 1) {
		fileNmNum -= 1;
		$("#fileShow").children().last().prev().remove();
		$("#fileShow").children().last().remove();
	}
}

function goList(){
	$("#listForm").submit();
}

function goWrite(){
// 	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	var title = $.trim($("#title").val());
	var mode = $("#mode").val();
	
	if(title == ""){
		alert("카테고리를 입력하세요.");
		$("#title").focus();
		return;
	}
	
	if(mode == "upd"){
		$("#frm").attr("action", "<c:url value='/manager/modifyBrochure.do'/>");
	}
	
    if($("#seq").val() == "") {
    	$("#seq").val(0);
    }
	
	$("#frm").submit();
}

function deleteFile(fileId){
	if(confirm("첨부파일을 삭제하시겠습니까?")){
		$.ajax({
			type : "post",
			url : "<c:url value='/manager/deleteFile.do'/>",
			dataType : "json",
			data : {"fileId": fileId},
			success : function(data) {
				if(data.result == "Y"){
					location.reload();
				}else{
					alert("에러가 발생하였습니다.");
				}
			}
		});	
	}
}
</script>
