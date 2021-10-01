<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>관리자페이지</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/admin.css'/>" />
    <script type="text/javascript" src="<c:url value='/resources/js/jquery-1.11.2.js'/>"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $("#adminId").focus();
                
        $(".loginBtn").click(function(){
            actionLogin();
        });
        
    });
    
    function chkPass(str){
        var isPw  = /[~!#$%^&*\()\=+_'"<>]/gi;
        return (isPw.test(str))? true:false;
    }
    
    function chkId(str){
        var patten = /^([a-zA-Z0-9]+)$/;
        return (patten.test(str))? true:false;
    }
    
    function actionLogin(){
        var adminId = $("#adminId").val();
        var adminPwd = $("#adminPwd").val();

        if(adminId == ""){
            alert("ID는 필수값입니다.");
            $("#adminId").focus();
            return;
        }
        
        if(!chkId(adminId)){
            alert("ID는 영문 또는 숫자만 가능합니다.");
            $("#adminId").val("");
            $("#adminId").focus();
            return;
        }
        
        if(adminPwd == ""){
            alert("Password는 필수값입니다.");
            $("#adminPwd").focus();
            return;
        }
        
//         if(chkPass(adminPwd)){
//             alert("Password에 사용불가능한 특수문자가 있습니다.");
//             $("#adminPwd").val("");
//             $("#adminPwd").focus();
//             return;
//         }
        
        $.ajax({
            type : "post",
            url : "<c:url value='/login.do'/>",
            data : {
                "adminId" : adminId,
                "adminPwd" : adminPwd
            },
            dateType : "json",
            success : function(data) {
                var result = data.result;
                if(result == "Y") {
                    window.location.href="<c:url value='/manager/noticeList.do'/>";
                } else {
                    alert("ID 또는 Password가 올바르지 않습니다.");
                    $("#adminId").focus();
                    return;
                }
            },
            error : function(e) {}
        });
    }
    </script>
    
</head>
    <body class="login">
        <div id="header">
            <div class="hgroup">
                <!-- <h1><img src="<c:url value='/resources/_img/ci_login.png'/>" alt="" /></h1> -->
            </div>
        </div>
        <div class="login_form">
            <div class="article">
                <h3><img src="<c:url value='/resources/_img/login_txt_2.gif'/>" alt="로그인" /></h3>
                <div class="formbox">
                    <img src="<c:url value='/resources/_img/txt_desc_login.gif'/>" alt="" />
                </div>          
                <fieldset style="clear:both;zoom:1;">
                    <p><label for="adminId"><img src="<c:url value='/resources/_img/login_th_id.gif'/>" alt="" /></label><input id="adminId" name="adminId" type="text" class="txt" maxlength="16"/></p>
                    <p><label for="pass"><img src="<c:url value='/resources/_img/login_th_pass.gif'/>" alt="" /></label><input id="adminPwd" name="adminPwd" type="password" class="txt" maxlength="16" onkeydown="javascript:if (event.keyCode == 13) { actionLogin(); }"/></p>
                    <button class="loginBtn"><img src="<c:url value='/resources/_img/login_btn.gif'/>" alt="Login" /></button>
                </fieldset>
            </div>
        </div>
        <div id="footer">
            <!-- <p><img src="<c:url value='/resources/_img/txt_footer.gif'/>" alt="COPYRIGHT © 2017 THE Altec ALL RIGHT RESERVED." /></p> -->
        </div>
    </body>
</html>