<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />" ></script>
<script type="text/javascript">
	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_addNotice() {
		document.frm.action = "<c:url value='/admin/noticeWrite.do'/>";
		document.frm.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/admin/notice.do'/>";
		document.frm.submit();
	}

	function fn_egov_inqire_notice(i, nttId, bbsId) {
		document.subForm.nttId.value = nttId;
		document.subForm.bbsId.value = bbsId;
		document.subForm.action = "<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>";
		document.subForm.submit();
	}
</script>
</head>
<body>
<form name="frm" action ="<c:url value='/admin/notice.do'/>" method="post">
<input type="hidden" name="bbsId" value="<c:out value='${searchVO.bbsId}'/>" />
<input type="hidden" name="nttId"  value="0" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
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
                <div class="searchBox">
                    <fieldset>
                        <legend>게시판 검색</legend>
                        <select name="searchCnd" class="select" title="검색조건선택">
                           <option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
						   <option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
						   <option value="2" <c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if> >작성자</option>
                        </select>
                        <input name="searchWrd" type="text" size="35" value='<c:out value="${searchVO.searchWrd}"/>' maxlength="35" class="inputTxt" onkeypress="press(event);" title="검색어 입력">
                        <input type="submit" value="검색" class="btnSearch" >
                    </fieldset>
                </div> 
                <!-- //검색박스 end -->
				</form>
                <!-- 게시판 -->
                <div class="boardList">
                <table summary="게시판 번호, 제목, 작성자, 작성일, 조회수 구성">
                <caption>공지사항 목록</caption>
                	<thead>
                    	<tr>
                        	<!-- <th scope="col"><input type="checkbox" name="checkbox" value="1"></th> -->
                        	<th scope="col" class="num">번호</th>
                            <th scope="col" class="subject">제목</th>
                            <!-- <th scope="col" class="file">파일</th> -->
                            <th scope="col" class="date">작성일</th>
                            <th scope="col" class="hit">조회</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="result" items="${resultList}" varStatus="status">
                    		<tr>
	                        	<!-- <td><input type="checkbox" name="checkbox" value="1"></td> -->
	                            <td class="num"><c:out value="${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}"/><!-- <span class="notice">공지</span> --></td>
	                            <td class="subject">
	                            	<form name="subForm" method="post" action="<c:url value='/admin/noticeView.do'/>">
										<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
										<input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
										<input type="hidden" name="bbsTyCode" value="" />
										<input type="hidden" name="bbsAttrbCode" value="" />
										<input type="hidden" name="authFlag" value="" />
										<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
										<span class="tag">
						    				<input type="submit" style="width:320px;border:solid 0px black;text-align:left;" value="<c:out value="${result.nttSj}"/>" >
						    			</span>
							    	</form>
	                            	<!-- <span class="tag">센터 |</span><a href="./notice_view.jsp">대학교육혁신센터(CIHE)</a> -->
	                            </td>
	                            <!-- <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td> -->
	                            <td class="date"><c:out value="${result.frstRegisterPnttm}"/></td>
	                            <td class="hit"><c:out value="${result.inqireCo}"/></td>
                        	</tr>
                    	</c:forEach>
                    	<c:if test="${fn:length(resultList) == 0}">
                    		<tr>
                    			<td colspan="4" ><spring:message code="common.nodata.msg" /></td>
                    		</tr>
                    	</c:if>
                        <!-- 
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">1</td>
                            <td class="subject"><span class="tag">대학특성화 |</span><a href="./notice_view.jsp">Creative Design Studio CI Office(인사캠)</a></td>
                            <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">1</td>
                            <td class="subject"><span class="tag">대학연구 |</span><a href="./notice_view.jsp">나만의 효율적인 학습을 위한 Learning Aid'프로그램</a> <a href="/" class="btnBlues">행사중</a></td>
                            <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr> -->
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                
                <!-- 버튼 start -->
                <ul class="btnWrap2">
                	<!-- <li><a href="#Link" class="btnGray">선택삭제</a></li> -->
                	<li><a href="javascript:fn_egov_addNotice();" class="btnBlue">글쓰기</a></li>                    
                </ul>
                <!-- //버튼 end -->
                
                <!-- PC용 페이징 start -->
                <div class="paging">
                    <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
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