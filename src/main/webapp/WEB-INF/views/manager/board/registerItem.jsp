<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	

<form id="listForm" name="listForm" method="post" action="<c:url value='/manager/itemList.do'/>">
	<input type="hidden" id="pageIndex" name="pageIndex" value="${itemVO.pageIndex }" />
	<input type="hidden" name="searchCondition" value="${itemVO.searchCondition }" />
	<input type="hidden" name="searchKeyword" value="${itemVO.searchKeyword }" />
</form>
	
<div class="bbs">
	<fieldset>
		<legend></legend>
		<p class="searchInfo">* 필수 입력 항목 입니다.</p>
		<div id="print">
		<form id="frm" name="frm" method="post" enctype="multipart/form-data" action="<c:url value='/manager/registerItem.do'/>">
			<input type="hidden" id="seq" name="seq" value="${item.seq }"/>
			<input type="hidden" id="mode" name="mode" value="${mode }"/>
			
			<table class="bbsWrite">
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">메인표시</th>
						<td>
						<select id="important" name="important">
							<option value="N" <c:if test="${item.important eq 'N'}">selected="selected"</c:if>>X</option>
							<option value="Y" <c:if test="${item.important eq 'Y'}">selected="selected"</c:if>>O</option>
						</select>
						</td>
					</tr>
					<tr>
						<th scope="row">카테고리</th>
						<td>
						<select id="type" name="type" style="width:200px">
							<option value="웹방화벽" <c:if test="${item.type eq '웹방화벽'}">selected="selected"</c:if>>웹방화벽</option>
							<option value="DB방화벽" <c:if test="${item.type eq 'DB방화벽'}">selected="selected"</c:if>>DB방화벽</option>
							<option value="APT대응솔루션" <c:if test="${item.type eq 'APT대응솔루션'}">selected="selected"</c:if>>APT대응솔루션</option>
							<option value="VoIP방화벽" <c:if test="${item.type eq 'VoIP방화벽'}">selected="selected"</c:if>>VoIP방화벽</option>
							<option value="유해사이트차단" <c:if test="${item.type eq '유해사이트차단'}">selected="selected"</c:if>>유해사이트차단</option>
							<option value="클라우드웹방화벽" <c:if test="${item.type eq '클라우드웹방화벽'}">selected="selected"</c:if>>클라우드웹방화벽</option>
							<option value="가상데스크톱" <c:if test="${item.type eq '가상데스크톱'}">selected="selected"</c:if>>가상데스크톱</option>
							<option value="컴퓨터망전환장치" <c:if test="${item.type eq '컴퓨터망전환장치'}">selected="selected"</c:if>>컴퓨터망전환장치</option>
							<option value="트래픽분석관리시스템" <c:if test="${item.type eq '트래픽분석관리시스템'}">selected="selected"</c:if>>트래픽분석관리시스템</option>
							<option value="망연계솔루션" <c:if test="${item.type eq '망연계솔루션'}">selected="selected"</c:if>>망연계솔루션</option>
							<option value="올플래시 스토리지" <c:if test="${item.type eq '올플래시 스토리지'}">selected="selected"</c:if>>올플래시 스토리지</option>
							<option value="CCTV원격관리솔루션" <c:if test="${item.type eq 'CCTV원격관리솔루션'}">selected="selected"</c:if>>CCTV원격관리솔루션</option>
							<option value="데이터베이스관리소프트웨어" <c:if test="${item.type eq '데이터베이스관리소프트웨어'}">selected="selected"</c:if>>데이터베이스관리소프트웨어</option>
							<option value="랜섬웨어 대응솔루션" <c:if test="${item.type eq '랜섬웨어 대응솔루션'}">selected="selected"</c:if>>랜섬웨어 대응솔루션</option>
						</select>
						</td>
					</tr>
					<tr>
						<th scope="row">*제품이름</th>
						<td>
							<input type="text" id="title" name="title" class="txt" style="width:600px;height:19px;" value="${item.title }" maxlength="50"/>
						</td>
					</tr>
					<tr>
						<th scope="row">제품이름2</th>
						<td>
							<input type="text" id="subTitle" name="subTitle" class="txt" style="width:600px;height:19px;" value="${item.subTitle }" maxlength="50"/>
						</td>
					</tr>
					<tr>
						<th scope="row">물품식별번호</th>
						<td>
							<input type="text" id="itemNumber" name="itemNumber" class="txt" style="width:300px;height:19px;" value="${item.itemNumber }" maxlength="50"/>
						</td>
					</tr>
					<tr>
					<tr>
						<th scope="row">조달등록가격</th>
						<td>
							<input type="text" id="price" name="price" class="txt" style="width:300px;height:19px;" value="${item.price }" maxlength="50"/>
						</td>
					</tr>
					<tr>
						<th scope="row">제품 (사진버튼이용)</th>
						<td>
							<textarea id="content" name="content" rows="5" cols="100" style="width:800px; height:400px;" maxlength="1000">${item.content }</textarea>
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
					<c:if test="${mode eq 'upd' }">수정</c:if>
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

//네이버 웹 에디터 생성
var oEditors = [];
$(document.body).ready(function(){
	nhn.husky.EZCreator.createInIFrame({ 
		oAppRef: oEditors,
		elPlaceHolder: "content", //<= textarea id와 일치
		sSkinURI: "<c:url value='/resources/se/SmartEditor2Skin.html'/>", 
		fCreator: "createSEditor2",
		htParams : {fOnBeforeUnload:function(){}}
	});
});	
		
function goList(){
	$("#listForm").submit();
}

function goWrite(){
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	var title = $.trim($("#title").val());
	var mode = $("#mode").val();
	
	if(title == ""){
		alert("제목을 입력하세요.");
		$("#title").focus();
		return;
	}
	
	if(mode == "upd"){
		$("#frm").attr("action", "<c:url value='/manager/modifyItem.do'/>");
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
			url : "<c:url value='/manager/deleteItemFile.do'/>",
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