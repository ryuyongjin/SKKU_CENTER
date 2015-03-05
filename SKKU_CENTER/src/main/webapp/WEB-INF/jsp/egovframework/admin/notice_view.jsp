<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}

	function fn_egov_select_noticeList() {
		document.frm.action = "<c:url value='/admin/notice.do'/>";
		document.frm.submit();
	}

	function fn_egov_delete_notice() {
		if (confirm('<spring:message code="common.delete.msg" />')) {
			document.frm.action = "<c:url value='/admin/deleteNotice.do'/>";
			document.frm.submit();
		}
	}

	function fn_egov_moveUpdt_notice() {
		document.frm.action = "<c:url value='/admin/forUpdateNotice.do'/>";
		document.frm.submit();
	}
</script>
</head>
<body onload="onloading();">
<form name="frm" method="post" action="">
	<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
	<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" >
	<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" >
	<input type="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" >
	<input type="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" >
	<input type="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" >
	<input type="hidden" name="nttSj" value="<c:out value='${result.nttSj}'/>" >
</form>
<div id="wrap">    
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_header.jsp" %>
    <div id="admin_container">
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>공지사항</h3>
    		    <h2>| 기본관리</h2>
            </div>
        </div>
    	<div class="admin_content"> 
                <div class="tabWrap">
                    <ul>
                        <li><a href="/admin/notice.do" <c:if test="${searchVO.bbsId == 'noticeAll'}">class="on"</c:if>>전체</a></li>
                        <li><a href="/admin/notice.do?bbsId=BBSMSTR_000000000031" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000031'}">class="on"</c:if>>센터</a></li>
                        <li><a href="/admin/notice.do?bbsId=BBSMSTR_000000000032" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000032'}">class="on"</c:if>>대학특성화</a></li>
                        <li><a href="/admin/notice.do?bbsId=BBSMSTR_000000000033" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000033'}">class="on"</c:if>>C-School</a></li>
                        <li><a href="/admin/notice.do?bbsId=BBSMSTR_000000000034" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000034'}">class="on"</c:if>>ACE</a></li>
                        <li><a href="/admin/notice.do?bbsId=BBSMSTR_000000000035" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000035'}">class="on"</c:if>>대학연구</a></li>
                    </ul>
                </div>
                <div class="boardView">
					<div class="viewTitle">
						<h2><c:out value="${result.nttSj}" /></h2>						
					</div>
                    <div class="viewData">
                    	<span>작성자</span><c:out value="${result.ntcrNm}" /><span>작성일</span><c:out value="${result.frstRegisterPnttm}" /><span>조회</span><c:out value="${result.inqireCo}" />
                    </div>
                    <c:if test="${not empty result.atchFileId}">
                    <div class="viewFile">
                    	<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
							<c:param name="param_atchFileId" value="${result.atchFileId}" />
						</c:import>
                    </div>
                    </c:if>
					<div class="viewContent">
						<c:out value="${result.nttCn}" escapeXml="false" />
	                    <!-- <div class="btnWrap ar">
	                        <a href="/" class="btnBlueb">행사신청하기</a>
	                    </div> -->
					</div>
                    
				</div>
                <div class="btnWrap ar">
                	<a href="javascript:fn_egov_moveUpdt_notice();" class="btnGray">수정</a>
                    <a href="javascript:fn_egov_delete_notice();" class="btnGray">삭제</a>
                	<a href="javascript:fn_egov_select_noticeList();" class="btnGray">목록</a>
                </div>
                <!-- 이전글/다음글 start -->
				<!-- <div class="viewPrenext">
					<div class="preNext">
						<strong>다음 글</strong>
						<a href="/">[합격공지] 제117차 기업… </a><span class='data'>2015-12-24</span>
					</div>
					<div class="preNext">
						<strong>이전 글</strong>
						<a href="/">[행사] 2014년 제 6차 기술…</a><span class='data'>2015-12-24</span>
					</div>
                </div> -->
                <!-- //이전글/다음글 end -->
        </div>
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_footer.jsp" %>
    </div>
</div>
</body>
</html>