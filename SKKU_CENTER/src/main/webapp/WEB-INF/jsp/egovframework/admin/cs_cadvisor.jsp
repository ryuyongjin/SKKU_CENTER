<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript">
	$(document).ready(function() {
		<c:if test="${msg != '' and fn:length(msg) > 0}">
			alert("변경되었습니다.");
		</c:if>
	
		$("[name=thisStatus]").change(function() {
			var frm = document.frm;
			$("#nttId").val($(this).siblings("span").text());
			$("#status").val($(this).val());
			frm.action = "<c:url value='/admin/cs_cadvisor.do'/>";
			frm.submit();
		});
		
		$("#dataTable tbody tr").click(function() {
			$(".content").hide();
			$(this).next("tr").show();
		});
		
		$("#dataTable tbody tr").hover(function() {
			$(this).addClass("ca_gray");
		},function() {
			$(this).removeClass("ca_gray");
		});
	});


	function search() {
		var frm = document.frm;
		frm.submit();
	}
	
<!--
	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_addNotice() {
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fn_egov_inqire_notice(i, nttId, bbsId) {
		document.subForm.nttId.value = nttId;
		document.subForm.bbsId.value = bbsId;
		document.subForm.action = "<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>";
		document.subForm.submit();
	}
//-->

	
</script>
</head>
<body>
<!-- wrap -->
<div id="wrap">    
    <!-- header -->
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_header.jsp" %>
    <!-- //header -->
    <!-- container -->
    <div id="admin_container">
    	<!-- 상단 타이틀 -->
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>C-Advisor 상담예약</h3>
    		    <h2>| C-School</h2>
            </div>
        </div>
        <!-- //상단 타이틀 -->
        <!-- 본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    	<div class="admin_content"> 
    			<form name="frm" action ="<c:url value='/cop/bbs/selectBoardList.do'/>" method="post">
				<input type="hidden" id="bbsId" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
				<input type="hidden" id="nttId" name="nttId"  value="0" />
				<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
				<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
				<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
				<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
				<input type="hidden"  id="status" name="status" value=""/>
				<input type="hidden"  id="msg" name="msg" value=""/>
				<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" />
        		<!-- 상세검색 start -->
                <div class="whiteBox">
                    <select id="searchDateGbn" name="searchDateGbn">
                    	<option value="A">신청일</option>
                    	<option value="B">상담예약일</option>
                    </select> 
                    <input type="hidden" id="stResvDate" name="stResvDate" value="${searchVO.stResvDate}" />
                    <input type="text" id="stResvDateView" name="stResvDateView" value="${fn:substring(searchVO.stResvDate,0,4)}-${fn:substring(searchVO.stResvDate,4,6)}-${fn:substring(searchVO.stResvDate,6,8)}" title="기간검색시작일" onClick="javascript:fn_egov_NormalCalendar(document.frm, document.frm.stResvDate, document.frm.stResvDateView);" />
                    <img src="<c:url value='/images/egovframework/com/cmm/icon/bu_icon_carlendar.gif' />" 
                    onClick="javascript:fn_egov_NormalCalendar(document.frm, document.frm.stResvDate, document.frm.stResvDateView);"
                    width="15" height="15" alt="달력창팝업버튼이미지">
			     	-
			     	<input type="hidden" id="edResvDate" name="edResvDate" value="${searchVO.stResvDate}" /> 
			     	<input type="text" id="edResvDateView" name="edResvDateView" value="${fn:substring(searchVO.edResvDate,0,4)}-${fn:substring(searchVO.edResvDate,4,6)}-${fn:substring(searchVO.edResvDate,6,8)}" title="기간검색종료일" onClick="javascript:fn_egov_NormalCalendar(document.frm, document.frm.edResvDate, document.frm.edResvDateView);" />
			     	<img src="<c:url value='/images/egovframework/com/cmm/icon/bu_icon_carlendar.gif' />"
		      	onClick="javascript:fn_egov_NormalCalendar(document.frm, document.frm.edResvDate, document.frm.edResvDateView);"
			    width="15" height="15" alt="달력창팝업버튼이미지">
			     <br/><form:errors path="ntceBgndeView" />
				 <br/><form:errors path="ntceEnddeView" /> 
                    <div class="grayBox mt5">
                        <input type="radio" id="statusAll" name="searchStatus" value="" <c:if test="${boardVO.searchStatus == ''}">checked="checked"</c:if>><label for="statusAll">전체</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="statusA" name="searchStatus" value="A" <c:if test="${boardVO.searchStatus == 'A'}">checked="checked"</c:if>><label for="statusA">신청중</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="statusB" name="searchStatus" value="B" <c:if test="${boardVO.searchStatus == 'B'}">checked="checked"</c:if>><label for="statusB">예약완료</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="statusC" name="searchStatus" value="C" <c:if test="${boardVO.searchStatus == 'C'}">checked="checked"</c:if>><label for="statusC">상담완료</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="statusD" name="searchStatus" value="D" <c:if test="${boardVO.searchStatus == 'D'}">checked="checked"</c:if>><label for="statusD">예약보류</label> 
                    </div>
                    <div class="mt10">
                    <a href="javascript:search();" class="btnGray">검색</a>&nbsp;&nbsp;&nbsp;<a href="./" class="btnWhite">엑셀파일 다운로드</a>
                    </div>
                </div>
                <!-- //상세검색 start -->
                <!-- 버튼 start -->
                <div class="btnWrap ar">
                	<a href="/admin/calendar.do" class="btnGreen">캘린더보기</a>
                </div>
                <!-- //버튼 end -->
                
                <!-- 검색박스 start -->
                <div class="searchBox">
                    <fieldset>
                        <legend>게시판 검색</legend>
                        <select id="searchCnd" name="searchCnd">
                            <option value="3" <c:if test="${searchVO.searchCnd == '3'}">selected="selected"</c:if>>학번</option>
                            <option value="4" <c:if test="${searchVO.searchCnd == '4'}">selected="selected"</c:if>>성명</option>
                            <!-- <option value="2">학과</option> -->
                        </select>
                        <input type="text" title="검색어를 입력해주세요." id="searchWrd" name="searchWrd" value="<c:out value="${searchVO.searchWrd}"/>" class="inputTxt" onkeypress="press(event);" />
                        <input type="submit" value="검색" class="btnSearch" >
                    </fieldset>
                </div> 
                </form>
                <!-- //검색박스 end -->
                <!-- 게시판 -->
                <div class="boardList">
                <table summary="게시판 번호, 제목, 작성자, 작성일, 조회수 구성" id="dataTable">
                <caption>공지사항 목록</caption>                	
                	<thead>                                      	
                    	<tr>
                        	<th scope="col" class="num">번호</th>
                            <th scope="col" class="date">신청일</th>
                            <th scope="col">학과</th>
                            <th scope="col">학번</th>
                            <th scope="col" class="name">성명</th>                            
                            <th scope="col">상담예약일</th>
                            <th scope="col">현황</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${resultList}" var="resvInfo" varStatus="status">
                    		<tr>
	                            <td class="num">${status.index+1}</td>
	                            <td class="date">${resvInfo.frstRegisterPnttm}</td>
	                            <td>${resvInfo.major}</td>
	                            <td>${resvInfo.schoolNo}</td>
	                            <td class="name">${resvInfo.ntcrNm}</td>
	                            <td>${fn:substring(resvInfo.resvDate,0,4)}-${fn:substring(resvInfo.resvDate,4,6)}-${fn:substring(resvInfo.resvDate,6,8)} ${resvInfo.resvTime}분</td>
	                            <td>
	                            	<span style="display:none;">${resvInfo.nttId}</span>
		                            <select name="thisStatus" ​ id="thisStatus${status.index}">  
		                                <option value="A" <c:if test="${resvInfo.status == 'A'}">selected="selected"</c:if>>신청중</option>
		                                <option value="B" <c:if test="${resvInfo.status == 'B'}">selected="selected"</c:if>>예약완료</option>
		                                <option value="C" <c:if test="${resvInfo.status == 'C'}">selected="selected"</c:if>>상담완료</option>
		                                <option value="D" <c:if test="${resvInfo.status == 'D'}">selected="selected"</c:if>>예약보류</option>
		                            </select>
	                            </td>
	                        </tr>
                            <!-- 상담내용 -->
                            <tr style="display:none;" class="content">
                            	<td colspan="8" class="cadvisorCon">
                                	<div>
	                                	<span>학번</span> :  ${resvInfo.schoolNo} 
	                                    <span>연락처</span> : ${resvInfo.phone}   
	                                    <span>이메일</span> : <a href="mailto:${resvInfo.email}">${resvInfo.email}</a>
										<p><span>상담내용</span> : ${resvInfo.nttCn}</p>
                                    </div>
                                </td>
                            </tr>
                            <!-- //상담내용 -->
                    	</c:forEach>
                    	<c:if test="${fn:length(resultList) == 0}">
                    		<tr>
                    			<td colspan="8"><spring:message code="common.nodata.msg" /></td>
                    		</tr>
                    	</c:if>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                <!-- 버튼 start --> 
                <ul class="btnWrap2">
                	<!-- <li><a href="./" class="btnGray">선택삭제</a></li> -->
                	<!-- <li><a href="./" class="btnBlue">글쓰기</a></li> -->                    
                </ul>
                <!-- //버튼 end -->
                
                <!-- PC용 페이징 start -->
                <div class="paging">
                	<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
                	<!-- 
                    <a href="/" class="first"><img src="../images/common/btn_first.gif" alt="처음" /></a>
                    <a href="/" class="prev"><img src="../images/common/btn_prev.gif" alt="이전" /></a>
                    <strong>1</strong>
                    <a href="/" >2</a>
                    <a href="/" >3</a>
                    <a href="/" >4</a>
                    <a href="/" >5</a>
                    <a href="/" >6</a>
                    <a href="/" >7</a>
                    <a href="/" >8</a>
                    <a href="/" >9</a>
                    <a href="/" >10</a>
                    <a href="/" class="next"><img src="../images/common/btn_next.gif" alt="다음" /></a>
                    <a href="/" class="end"><img src="../images/common/btn_end.gif" alt="끝" /></a>
                     -->
		        </div>
                <!-- //PC용 페이징 end --> 
                
                <!-- 모바일용 페이징 start -->
                <div class="pagingMb">
                	<a href="#prev" class="prev">이전</a>
                	<a href="/" class="next">다음</a>
                </div> 
                <!-- //모바일용 페이징 end -->
        </div>
        <!-- //본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    <!-- footer -->
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_footer.jsp" %>
    <!-- //footer -->
    </div>
    <!-- //container -->
</div>
<!-- //wrap -->
</body>
</html>