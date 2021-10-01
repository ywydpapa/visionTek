<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<form id="listForm" name="listForm" method="post" action="<c:url value='/manager/adminList.do'/>">
	<input type="hidden" id="searchPageIndex" name="pageIndex" value="${adminVO.pageIndex }" />
</form>

<div class="bbs">
	<fieldset>
		<legend></legend>
		<p class="searchInfo">* 필수 입력 항목 입니다.</p>
		<form id="frm" name="frm" method="post"	action="<c:url value='/manager/registerAdminInfo.do'/>">
			<c:if test="${mode eq 'upd' }">
				<input type="hidden" id="adminId" name="adminId" value="${adminInfo.adminId }" />
			</c:if>
			<input type="hidden" id="mode" name="mode" value="${mode }" />
			<table class="bbsWrite">
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">*아이디</th>
						<td>
							<c:if test="${mode eq 'upd' }">${adminInfo.adminId } </c:if> 
							<c:if test="${mode eq 'add' }">
								<input type="text" id="adminId" name="adminId" class="txt" style="width: 150px; height: 19px; ime-mode: disabled;" value="${adminInfo.adminId }" maxlength="20"/>
								<span id="userIdMsg">아이디를 입력하세요.</span>
								<input type="hidden" id="chkId" value="N" />
							</c:if>
						</td>
						</tr>
					<tr>
						<th scope="row">*패스워드</th>
						<td><input type="password" id="adminPwd" name="adminPwd" class="txt" style="width: 150px; height: 19px;" value="" maxlength="20"/></td>
					</tr>
<!-- 					<tr> -->
<!-- 						<th scope="row">*권한</th> -->
<!-- 						<td> -->
<!-- 							<select name="previledgeId"> -->
<%-- 								<option value="99" <c:if test="${adminInfo.previledgeId eq '99' }">selected="selected"</c:if>>관리자</option> --%>
<%-- 								<option value="1" <c:if test="${adminInfo.previledgeId eq '1' }">selected="selected"</c:if>>상인회</option> --%>
<!-- 							</select> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr>
						<th scope="row">*이름</th>
						<td><input type="text" id="adminName" name="adminName" class="txt" style="width: 250px; height: 19px;" value="${adminInfo.adminName }" maxlength="10"/></td>
					</tr>
					<tr>
						<th scope="row">이메일</th>
						<td><input type="text" id="email" name="email" class="txt" style="width: 250px; height: 19px;" value="${adminInfo.email }" maxlength="50"/>
						</td>
					</tr>
					<tr>
						<th scope="row">전화번호</th>
						<td><input type="text" id="phone" name="phone" class="txt" style="width: 250px; height: 19px;" value="${adminInfo.phone }" maxlength="20"/>
							<span> ex) 010-1234-1234</span></td>
					</tr>
				</tbody>
			</table>
		</form>
		<p class="btns">
			<a href="#" onclick="goList(); return false;" class="btn01"><span>목록</span></a>
			<a href="#" class="btn01" id="regbt">
				<span> 
					<c:if test="${mode eq 'upd' }">수정</c:if> 
					<c:if test="${mode eq 'add' }">등록</c:if>
				</span>
			</a>
		</p>
	</fieldset>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$("#regbt").click(function(e){
		var mode = $("#mode").val();
		e.preventDefault();
		
		var adminPwd = $.trim($("#adminPwd").val());
		var adminName = $.trim($("#adminName").val());
		
		if(mode == "add"){
			var adminId = $.trim($("#adminId").val());
			if(adminId == ""){
				alert("아이디를 입력하세요.");
				$("#adminId").focus();
				return;
			}
			
			if($("#chkId").val() == "N"){
				alert("올바르지 않은 아이디입니다.");
				$("#adminId").focus();
				return;
			}
		}
		
		if(adminPwd == ""){
			alert("패스워드를 입력하세요.");
			$("#adminPwd").focus();
			return;
		}
		
		if(adminName == ""){
			alert("이름을 입력하세요.");
			$("#adminName").focus();
			return;
		}
		
		if(mode == "upd"){
			$("#frm").attr("action", "<c:url value='/manager/modifyAdminInfo.do'/>");	
		}
		
		$("#frm").submit();
	});
	
	$("#adminId").keyup(function(){
		$("#chkId").val("N");
		var adminId = $.trim($("#adminId").val());
		
		if(adminId == 0){
			$("#userIdMsg").text("아이디를 입력하세요.");
			return;
		}
		
		var len = adminId.length;
		if((len < 6) || (len > 12)) {
			$("#userIdMsg").text("아이디는 6~12자리입니다.");			
			return;
		}
		
		$.ajax({
			type : "post",
		    url : "<c:url value='/manager/checkAdminId.do'/>",
		    data : {
		    	"adminId" : adminId
		    },
		    dataType : "json",
		    success : function(data){
		    	var result = data.result;
		    	if(result == "Y"){
		    		$("#userIdMsg").text("사용가능한 아이디입니다.");
		    		$("#chkId").val("Y");
		    	}else{
		    		$("#userIdMsg").text("사용중인 아이디입니다.");
		    	}
		    }
		});
	});
});	

function checkEmail(email){
	var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	if(!regEmail.test(email)){
		return false;
	}
	return true;
}

function goList() {
	$("#listForm").submit();
}
</script>