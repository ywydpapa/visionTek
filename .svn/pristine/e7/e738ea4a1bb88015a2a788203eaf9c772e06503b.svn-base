<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

		<script language="JavaScript">
		isIE=document.all;
		isNN=!document.all&&document.getElementById;
		isN4=document.layers;
		function hideMe(id){
		  if ( document.getElementById('chkbox'+id).checked ) {
			setCookie( "mainPop"+id, "done" , 1 );
		 document.getElementById('chkbox'+id).checked = false;
		  }
		  if (isIE||isNN) document.getElementById('divpop'+id).style.visibility="hidden";
		  else if (isN4) document.divpop.visibility="hide";  
		}
		function setCookie( name, value, expiredays ) {
		  var todayDate = new Date();
		  todayDate.setDate( todayDate.getDate() + expiredays );
		  document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
		}
		//document.onmousedown=ddInit;
		document.onmouseup=Function("ddEnabled=false");
	</script>

		<!--팝업 S-->
		<div id="divpop0" class="dkPopup">
			<a class="dkPopImg" href="#"><img src="<c:url value='/resources/img/popup/popup_180105.jpg'/>" width="100%" alt=""/></a>
			<div class="dkPopClose">
				<input type="checkbox" name="chkbox0" id="chkbox0" value="checkbox" onfocus="this.blur();" onclick="hideMe(0);"> 하루 동안 이 창을 열지 않습니다.
				<button type="button" onClick="hideMe(0);return false">닫기</button>
			</div>
		</div>

		<script language="JavaScript">
		cookiedata = document.cookie;
		for (i=0;i<3;i++){
		 if ( cookiedata.indexOf("mainPop"+i+"=done") < 0 ) {
		   //document.all['divpop'+i].style.visibility = "visible";
		 }
		 else {
		 document.all['divpop'+i].style.visibility = "hidden";
		 }
		}
		</script>
		<!--//팝업 E-->

		<!-- 메인 비주얼 S -->
		<section id="mainVisual">
			<div class="visual-img">
				<div class="visual-item">
					<img src="<c:url value='/resources/img/main/main_visual02.jpg'/>" alt="" />
					<div class="visual-txt">
						<div class="visual-inner-txt">
							<h2>보안</h2>
							<strong>최고의 보안시스템 구축</strong>
							<p>풍부한 경험과 최고의 기술력을 바탕으로 안전한 보안시스템을 구축합니다.</p>
						</div>
					</div>
				</div>		
				<div class="visual-item">
					<img src="<c:url value='/resources/img/main/main_visual01.jpg'/>" alt="" />
					<div class="visual-txt">
						<div class="visual-inner-txt">
							<h2>클라우드</h2>
							<strong>IT인프라 효율 극대화</strong>
							<p>시스템 자원 및 관리 효율 향상, 보안 강화, 유연한 업무 환경, 에너지 효율 향상을 경험할 수 있도록 최적의 환경을 제공합니다.</p>
						</div>
					</div>
				</div>	
			</div>
			<div class="scroll-icon">
				<span>SCROLL</span>
				<img src="<c:url value='/resources/img/main/scroll_icon.png'/>" alt="" />
			</div>
		</section>
		<!-- //메인 비주얼 E -->
        
        <!-- content S -->
		<div id="container">
			<!-- 솔루션,보안SI S -->
        	<div class="conbox01">
				<div class="m_solution">
					<div class="conbox_in f_rgt">
						<div class="conbox">
							<h3><span>Invative solution</span>솔루션</h3>
							<p>더 빠르고 안정적이며 안전한 서비스로 고객의 비즈니스 가치를 극대화시킵니다.</p>
							<ul class="sol_link">
								<li>
									<a href="<c:url value='/solution/solution01'/>" class="actionBtn1">
										<span class="hover"></span>
										<span>네트워크 보안</span>
									</a>
								</li>
								<li>
									<a href="<c:url value='/solution/solution02'/>" class="actionBtn1">
										<span class="hover"></span>
										<span>클라우드</span>
									</a>
								</li>
								<li>
									<a href="<c:url value='/solution/solution03'/>" class="actionBtn1">
										<span class="hover"></span>
										<span>어플리케이션 보안</span>
									</a>
								</li>
								<li>
									<a href="<c:url value='/solution/solution04'/>" class="actionBtn1">
										<span class="hover"></span>
										<span>엔드 포인트 보안</span>
									</a>
								</li>
								<li>
									<a href="<c:url value='/solution/solution05'/>" class="actionBtn1">
										<span class="hover"></span>
										<span>Other Solution</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="m_security">
					<div class="conbox_in f_lft">
						<div class="conbox">
							<h3><span>security solution</span>보안SI</h3>
							<p>비전테크는 다양한 IT 보안 사업 경험을 통해 축적된 노하우를 바탕으로 정보보호 전문가에 의한 보안 SI 서비스를 제공하고 있습니다.</p>
							<p class="security_img">
								<img src="<c:url value='/resources/img/main/m_security01.png'/>" alt="정보보호전문가, 정보보호솔루션, 보안시스템"/>	
								<a href="<c:url value='/security/security01'/>" class="btn_more">more</a>
							</p>
						</div>
					</div>
				</div>
            </div>
			<!-- 솔루션,보안SI E --> 
			<!-- 조달제품 S -->
			<div class="conbox02">
				<div class="innerwrap">
					<form name="itemFrm" id="itemFrm" action="<c:url value='/main/index'/>" method="post" >
		            <input type="hidden" id="pageIndex" name="pageIndex" value="1">
						<h3>조달제품</h3>
						<ul class="m_procure_list">
							<c:forEach var="item" items="${itemList }" varStatus="status">
								<li>
									<div class="product">
										<p class="pdt_img"><a href="<c:url value='/procure/${item.url}'/>">
										<c:choose>
										    <c:when test="${'<img/>' eq item.content}">
										        <img src="<c:url value='/resources/img/procure/noimg.gif'/>"alt="noimg"/>
										    </c:when>
										    <c:otherwise>
										        ${item.content }
										    </c:otherwise>
										</c:choose>
										</a></p>
										<p class="maker">${item.type}</p>
										<dl>
											<dt>${item.title}</dt>
											<dd class="price">${item.price}</dd>	
										</dl>
										<span class="btn_more"><a href="<c:url value='/procure/${item.url}'/>">자세히보기</a></span>
									</div>
								</li>
							</c:forEach>
						</ul>
					</form>
					<div class="btn">
					<ui:pagination paginationInfo="${paginationInfo}" type="imageMain" jsFunction="goPageNum" />	
<!-- 						<button class="active"></button>  <button></button> -->
					</div>
					<!-- 조달제품 모바일용 버튼 S -->
					<div class="mb_btn">
					<ui:pagination paginationInfo="${paginationInfo2}" type="imageMobile" jsFunction="goPageNum" />
<!-- 						<button class="prev">이전</button> <span class="total">3/15</span> <button class="next">다음</button> -->
					</div>
					<!-- 조달제품 모바일용 버튼 E -->
				</div>		
            </div>
			<!-- 조달제품 E -->
			<!-- news, 배너, 고객센터 S -->
        	<div class="conbox03" id="conbox03">
				<div class="innerwrap">
					<!-- news S -->
					<div class="news">
					<form id="boardFrm" action="<c:url value='/news/notice_view'/>" method="post">
                    	<input type="hidden" id="seq" name="seq">
                	</form>
						<h3>NEWS</h3>
						<p class="smltxt">비전테크의 새로운 소식을 알려드립니다.</p>
						<ul>
							<c:forEach var="board" items="${boardList }" varStatus="status">
								<li>
									<p class="date"><span class="year">
									${fn:substring(board.createDt, 0, 4) }
									</span>${fn:substring(board.createDt, 5, 10) }</p>
									<dl>
										<dt>
										 <a href="javascript:;" onclick="selectBoard(${board.seq})">
	                                       ${board.title}
	                                    </a>
	                                    </dt>
										<dd>
<%-- 										${board.content } --%>
	                                        ${fn:substring(board.content, 0, 75)}
										</dd>
									</dl>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- news E -->
					<!-- 배너,고객센터 S -->
					<div class="right_wr">
						<div class="qlink">
							<ul>
								<li>
									<a href="<c:url value='/company/company01'/>">
										<p class="qck"><span class="ic q01"></span> 회사소개</p>
									</a>
								</li>
								<li>
									<a href="<c:url value='/company/company04'/>">
										<p class="qck"><span class="ic q02"></span> 오시는길</p>
									</a>
								</li>
								<li>
									<a href="<c:url value='/company/company05'/>">
										<p class="qck"><span class="ic q03"></span> 협력사</p>
									</a>
								</li>
							</ul>
						</div>
						<div class="service_center">
							<p class="title">
								고객센터<span>궁금한 점이 있으시면 문의주세요.</span>
							</p>
							<p class="center_info">
								<span class="tel">070-8260-3882</span>
								평일 : 09:00 ~ 18:00<br>주말 및 공휴일 : 휴무
							</p>
						</div>
					</div>
					<!-- 배너,고객센터 E -->
				</div>
			</div>
			<!-- news, 배너, 고객센터 E -->
        </div>
		<!-- content E -->
<script type="text/javascript">
function selectBoard(seq) {
    $("#seq").val(seq);
    
    $("#boardFrm").submit();
}

function goPageNum(num) {
    $("#pageIndex").val(num);
    
    $("#itemFrm").submit();
    conbox03.scrollIntoView(true);
}

//마지막 페이지 스크롤 위치기억(쿠키플러그인 이용)
$(function(){
    //get
    if($.cookie('scroll_loc')){
        $(window).scrollTop($.cookie('scroll_loc'));
    }
    //set
    $(window).scroll(function(){
        $.cookie('scroll_loc',$(this).scrollTop());
    });
});
</script>
