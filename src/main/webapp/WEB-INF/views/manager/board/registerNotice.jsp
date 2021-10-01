 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	

<form id="listForm" name="listForm" method="post" action="<c:url value='/manager/noticeList.do'/>">
	<input type="hidden" id="pageIndex" name="pageIndex" value="${boardVO.pageIndex }" />
	<input type="hidden" name="searchCondition" value="${boardVO.searchCondition }" />
	<input type="hidden" name="searchKeyword" value="${boardVO.searchKeyword }" />
</form>
	
<div class="bbs">
	<fieldset>
		<legend></legend>
		<p class="searchInfo">* 필수 입력 항목 입니다.</p>
		<div id="print">
		<form id="frm" name="frm" method="post" enctype="multipart/form-data" action="<c:url value='/manager/registerNotice.do'/>">
			<input type="hidden" id="seq" name="seq" value="${board.seq }"/>
			<input type="hidden" id="mode" name="mode" value="${mode }"/>
			
			<table class="bbsWrite">
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<tbody>
<!-- 					<tr> -->
<!-- 					<th scope="row">구분</th> -->
<!-- 						<td> -->
<!-- 						<select id="type" name="type" style="width:100px"> -->
<%-- 							<option value="공지사항" <c:if test="${board.type eq '공지사항'}">selected="selected"</c:if>>공지사항</option> --%>
<%-- 							<option value="정책공지" <c:if test="${board.type eq '정책공지'}">selected="selected"</c:if>>정책공지</option> --%>
<%-- 							<option value="시스템 점검" <c:if test="${board.type eq '시스템 점검'}">selected="selected"</c:if>>시스템 점검</option> --%>
<!-- 						</select> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr>
						<th scope="row">공지구분</th>
						<td>
							<select id="important" name="important">
								<option value="N" <c:if test="${board.important eq 'N'}">selected="selected"</c:if>>X</option>
								<option value="Y" <c:if test="${board.important eq 'Y'}">selected="selected"</c:if>>O</option>
							</select>
						</td>
					</tr>	
					<tr>
						<th scope="row">*제목</th>
						<td>
							<input type="text" id="title" name="title" class="txt" style="width:600px;height:19px;" value="${board.title }" maxlength="50"/>
						</td>
					</tr>
					<tr>
						<th scope="row">첨부파일</th>
						<td>
							<div id="fileShow">
								<c:if test="${mode eq 'add' }">
									<input type="file" id="add_file" name="file" class="file"/>
									<a href="#" onclick="filePlus(); return false;"><img src="<c:url value='/resources/_img/btn_plus.gif'/>" alt="plus"/></a> 
									<a href="#" onclick="fileMinus(); return false;"><img src="<c:url value='/resources/_img/btn_minus.gif'/>" alt="minus"/></a>
								</c:if>
								<c:if test="${mode eq 'upd' }">
									<c:forEach items="${fileList }" var="list" varStatus="status">
										<a href="<c:url value='/common/FileDown.do?fileId=${list.seq }'/>">${list.orgFilename}</a>
                                        <a href="#" onclick="deleteFile('${list.seq}'); return false;" style="color: red;"> X</a><br/>
                                        <input type="hidden" name="org" id="org" value="${list.seq }"/>
									</c:forEach>
									<input type="file" name="file0" class="file"/> 
									<a href="#" onclick="filePlus(); return false;"><img src="<c:url value='/resources/_img/btn_plus.gif'/>" alt="plus"/></a> 
									<a href="#" onclick="fileMinus(); return false;"><img src="<c:url value='/resources/_img/btn_minus.gif'/>" alt="minus"/></a>
								</c:if>
							</div>
						</td>
					</tr>	
					<tr>
						<th scope="row">내용</th>
						<td>
							<textarea id="content" name="content" rows="5" cols="100" style="width:800px; height:400px;" maxlength="1000">${board.content }</textarea>
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
		$("#frm").attr("action", "<c:url value='/manager/modifyNotice.do'/>");
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
