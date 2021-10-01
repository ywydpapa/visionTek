<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>시스템 관리자</title>
<link type="text/css" rel="stylesheet"  href="<c:url value='/resources/css/admin.css'/>" />
<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.11.2.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/admin/common.js'/>"></script>
</head>
<body class="admin">
	<div id="header">
		<!-- 메뉴 선택 시 a 태그에 class="on" 지정 -->
		<h1>
			<a href="<c:url value='/manager/noticeList.do'/>"><img src="<c:url value='/resources/img/common/logo.png'/>" alt="visionTek" /></a>
		</h1>
		<div class="nav">
			<ul class="border">
				<c:forEach items="${mainMenu}" var="obj" varStatus="cnt">
					<c:if test="${obj.setYn eq 'Y'}">
						<c:set var="submenu" value="${obj }" scope="request" />
					</c:if>
					<c:choose>
						<c:when test="${cnt.count % 7 == 0 }">
							<li class="last"><a href="<c:url value="${obj.value }" />"
								<c:if test="${obj.setYn eq 'Y'}">class="on"</c:if>>${obj.name }</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="<c:url value="${obj.value }"/>"
								<c:if test="${obj.setYn eq 'Y'}">class="on"</c:if>
								<c:if test="${obj.id eq 'M10'}">target="_blank"</c:if>>${obj.name }</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
		</div>
		<p class="user">
			<span>반갑습니다!&nbsp;<b>${loginAdmin.adminId }</b> 님
			</span> <a href="<c:url value="/logout.do"/>" class="loginbox2">로그아웃</a>
			<a href="<c:url value="/manager/noticeList.do"/>">관리자홈</a> 
			<a href="<c:url value='/'/>" class="site" target="_blank">사이트홈</a>
		</p>
		<c:if test="${submenu != null}">
			<div class="linemap">
				<h3>
					<c:choose>
						<c:when test="${fn:length(submenu.subMenu) ne '0'}">
							<c:forEach items="${submenu.subMenu}" var="obj">
								<c:if test="${obj.setYn eq 'Y' }">${obj.name }(${command })</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>${submenu.name }(${command })</c:otherwise>
					</c:choose>
				</h3>
				<p>
					<a class="ico_home"></a> <a	href="<c:url value="${submenu.value }"/>">${submenu.name }</a>
					<c:if test="${fn:length(submenu.subMenu) ne '0'}">
						<c:forEach items="${submenu.subMenu }" var="obj">
							<c:if test="${obj.setYn eq 'Y' }">
								<span>${obj.name }</span>
							</c:if>
						</c:forEach>
					</c:if>
				</p>
			</div>
		</c:if>
		<div class="admin">
			<div class="nav">
				<!-- 메뉴 선택 시 a 테그에 class="tapOn" 지정 -->
				<c:forEach items="${submenu.subMenu }" var="obj">
					<a href="<c:url value="${obj.value }"/>"
						<c:if test="${obj.setYn eq 'Y'}">class="tapOn"</c:if>>${obj.name }</a>
				</c:forEach>
			</div>
