<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 3 });
    });
</script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}
	
	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		//document.board.onsubmit();


		//var ntceBgnde = eval(document.getElementById("ntceBgnde").value);
		//var ntceEndde = eval(document.getElementById("ntceEndde").value);


		/* if(ntceBgnde > ntceEndde){
			alert("게시기간 종료일이 시작일보다 빠릅니다.");
			return;
		} */

		/* if (!validateBoard(document.board)){
			return;
		} */

		if (confirm('<spring:message code="common.regist.msg" />')) {
			//document.board.onsubmit();
			document.board.action = "<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.board.submit();
	}
	function makeFileAttachment(){
	<c:if test="${bdMstr.fileAtchPosblAt == 'Y'}">
		 var maxFileNum = document.board.posblAtchFileNumber.value;
	     if(maxFileNum==null || maxFileNum==""){
	    	 maxFileNum = 3;
	     }
		 var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
		 multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
	</c:if>
	}
	
	<% // 캘린더에서 선택된 일자 셋팅 %>
	function setDate(date,time,dateHan) {
		$("#resvDateHan").val(dateHan);
		$("#resvDate").val(date);
		$("#resvTime").val(time);
	}
</script>
</head>

<body onLoad="onloading();">
<form:form commandName="board" name="board" method="post" enctype="multipart/form-data" >

<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="bbsId" value="<c:out value='${bdMstr.bbsId}'/>" />
<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />

<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" />
<input type="hidden" name="authFlag" value="<c:out value='${bdMstr.authFlag}'/>" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">
</c:if>
<div id="wrap">

	<!-- header -->
	<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>
    <!-- //header -->
	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>C-School</li>
                <li>C-Advisor 상담 예약</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_cschool.jsp" %>
	    <!-- //왼쪽메뉴 -->
        <!-- 서브본문 감싸기 -->
        <div class="content">
        	<!-- 타이틀 -->
            <h3 class="title">
            C-Advisor 상담 예약
            </h3>
            <!-- //타이틀 -->
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
				<p class="mb10">
                	*는 필수입력입니다.
                </p>
                
				<!-- 상담예약 폼 start -->
            	<div class="writeType1">
                <table summary="상담예약  폼">
                <caption>상담예약 정보</caption>
                    <colgroup>
                        <col style="width:100px">
                        <col style="width:auto" >
                        <col style="width:100px">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">* 학과</th>
                            <td><input type="text" name="major" id="major" class="input100" value="dummy"></td>
                            <th scope="row">* 학년</th>
                            <td><input type="text" name="nttSj" id="nttSj" class="input100" value="dummy"></td>
                        </tr>
                        <tr>
                            <th scope="row">* 이름</th>
                            <td><input type="text" name="ntcrNm" id="wr_link" class="input100" value="dummy"></td>
                            <th scope="row">* 학번</th>
                            <td><input type="text" name="schoolNo" id="schoolNo" class="input100" value="dummy"></td>
                        </tr>
                        <tr>
                            <th scope="row">* 연락처</th>
                            <td><input type="text" name="phone" id="phone" class="input100" value="dummy"></td>
                            <th scope="row">* 이메일</th>
                            <td><input type="text" name="email" id="email" class="input100" value="dummy"></td>
                        </tr>
                        <tr>
                            <th scope="row">상담일예약</th>
                            <td colspan="3">
                            	<input type="hidden" name="resvDate" id="resvDate" value="">
                            	<input type="hidden" name="resvTime" id="resvTime" value="">
                            	<input type="text" name="resvDateHan" id="resvDateHan" style="padding-left:5px; width:180px;" value=""> <a href="#none" onClick="window.open('/cschool/calendar.do','캘린더보기','width=900,height=900,scrollbars=yes,left=150,top=100')" class="btnBlues">상담일예약</a></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="wr_content">상담내용</label></th>
                            <td colspan="3"><textarea id="nttCn" name="nttCn" class="textarea100">dummy</textarea><form:errors path="nttCn" />​</td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //상담예약 폼 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="javascript:fn_egov_regist_notice();" class="btnGray">신청하기</a>
                </div>
                <!-- //버튼 end -->
            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------->
        </div>
        <!-- //서브본문 감싸기 -->
    </div>
    <!-- //왼쪽메뉴,본문 container -->

	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>
    <!-- //footer -->
    
</div>
</form:form>
</body>
</html>