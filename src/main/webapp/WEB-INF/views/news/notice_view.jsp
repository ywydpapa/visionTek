<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--서브 비주얼이미지 S-->
<section id="sub_visual">
	<div class="sub_visual_txt">
		<span><img src="<c:url value='/resources/img/common/sub_visual_txt_logo.png'/>" alt="VisionTek" class="sub_vtxt_line"/></span>
		<h2>NEWS</h2>
	</div>
	<div class="viimg svis06 visualZoom">
	</div>
</section>
<!--//서브 비주얼이미지 E-->
      
      <!-- content S -->
<div id="sub_container">
	<!--페이지경로-->
	<div class="path">
		<ul class="depth">
			<li class="home"><a href="<c:url value='/main/index'/>" title="홈으로 가기">&nbsp;</a></li>
			<li class="depth_sub">
				<a href="javascript:void('0')">NEWS</a>
				<ul>
					<li><a href="<c:url value='/company/company01'/>">회사소개</a>
					<li><a href="<c:url value='/solution/solution01'/>" >솔루션</a>
					<li><a href="<c:url value='/procure/procure01'/>" >조달제품</a>
					<li><a href="<c:url value='/security/security01'/>">보안SI</a>
					<li><a href="<c:url value='/maintenance/maintenance01'/>">유지보수</a>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a>
				</ul>
			</li>
			<li class="depth_sub2"><a href="javascript:void('0')">NEWS</a>
				<ul>
					<li><a href="<c:url value='/news/notice_list'/>">NEWS</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--//페이지경로-->

	<div id="sub_middle">
		<h3 class="ctle">NEWS</h3>
		
		<!--컨텐츠 S-->
		<div class="contents">
			<div class="innerwrap">
			
				<!--News 뷰 S-->
				<div class="bbs">
					<div class="bbs_view">
						<div class="view_tit">
							<p class="top"><span class="date">${boardVO.createDt }</span> <span class="hit">조회수 : ${boardVO.readCount }</span></p>
							<h3 class="tit">${boardVO.title }</h3>
						</div>
						<div class="view_cont">
							<div class="con">
							${boardVO.content }
							</div>
						</div>
						<dl class="file">
						<dt><img src="<c:url value='/resources/img/news/ico_file.png'/>" alt="첨부파일"/></dt>
						<c:forEach var="file" items="${fileList }" varStatus="status">
							<dd><a href="<c:url value='/common/FileDown.do?fileId=${file.seq }'/>">${file.orgFilename}</a><br/></dd>
                        </c:forEach>
						</dl>
					</div>
				</div>
				<!--//News 뷰 E-->

				<!--버튼-->
				<div class="btnwr">
					<span class="button m"><a href="<c:url value='/news/notice_list'/>">목록</a></span> <!-- <span class="button m str"><a href="#">저장</a></span>-->
				</div>
				<!--//버튼-->
			</div>
		</div>
		<!--//컨텐츠 E-->
	</div>
</div>
<!-- //content E -->