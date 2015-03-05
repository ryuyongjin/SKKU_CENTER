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

		var major = $("#major").val();
		var schoolNo = $("#schoolNo").val();
		var nttSj = $("#nttSj").val();
		var ntcrNm = $("#ntcrNm").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var resvDateHan = $("#resvDateHan").val();
		var nttCn = $("#nttCn").val();
		
		if(major == "") {
			alert("학과를 입력해주세요.");
			$("#major").focus();
			return;
		}
		
		if(nttSj == "") {
			alert("학년을 입력해주세요.");
			$("#nttSj").focus();
			return;
		}
		
		if(ntcrNm == "") {
			alert("이름을 입력해주세요.");
			$("#ntcrNm").focus();
			return;
		}
		
		if(schoolNo == "") {
			alert("학번을 입력해주세요.");
			$("#schoolNo").focus();
			return;
		}
		
		if(phone == "") {
			alert("연락처를 입력해주세요.");
			$("#phone").focus();
			return;
		}
		
		if(email == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(!validateEmail(email)) {
			alert("정상적인 이메일주소를 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(resvDateHan == "") {
			alert("상담일을 입력해주세요.");
			$("#resvDateHan").focus();
			return;
		}
		
		if(nttCn == "") {
			alert("상담내용을 입력해주세요.");
			$("#nttCn").focus();
			return;
		}

		/* if (!validateBoard(document.board)){
			return;
		} */

		//if (confirm('<spring:message code="common.regist.msg" />')) {
			//document.board.onsubmit();
		document.board.action = "<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>";
		document.board.submit();
		//}
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
	
	function validateEmail(email) { 
	    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    return re.test(email);
	} 
</script>
</head>

<body onLoad="onloading();">
<form:form commandName="board" name="board" method="post" enctype="multipart/form-data">

<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="bbsId" value="<c:out value='${searchVO.bbsId}'/>" />
<input type="hidden" name="bbsAttrbCode" value="" />
<input type="hidden" name="bbsTyCode" value="" />
<input type="hidden" name="replyPosblAt" value="" />
<input type="hidden" name="fileAtchPosblAt" value="" />
<input type="hidden" name="posblAtchFileNumber" value="0" />
<input type="hidden" name="posblAtchFileSize" value="" />
<input type="hidden" name="tmplatId" value="" />

<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" />
<input type="hidden" name="authFlag" value="" />

<c:if test="${anonymous != 'true'}">
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
</c:if>

<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
   <input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
   <input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">
</c:if>
<div id="wrap">
	<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>C-School</li>
                <li>C-Advisor 상담 예약</li>
            </ul>
        </div>
    </div>
    <div id="container">
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_cschool.jsp" %>
        <div class="content">
            <h3 class="title">
            C-Advisor 상담 예약
            </h3>
				<p class="mb10">
                	*는 필수입력입니다.
                </p>
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
                            <td><input type="text" name="major" id="major" class="input100" value=""></td>
                            <th scope="row">* 학년</th>
                            <td><input type="text" name="nttSj" id="nttSj" class="input100" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row">* 이름</th>
                            <td><input type="text" name="ntcrNm" id="ntcrNm" class="input100" value=""></td>
                            <th scope="row">* 학번</th>
                            <td><input type="text" name="schoolNo" id="schoolNo" class="input100" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row">* 연락처</th>
                            <td><input type="text" name="phone" id="phone" class="input100" value=""></td>
                            <th scope="row">* 이메일</th>
                            <td><input type="text" name="email" id="email" class="input100" value=""></td>
                        </tr>
                        <tr>
                            <th scope="row">상담일예약</th>
                            <td colspan="3">
                            	<input type="hidden" name="resvDate" id="resvDate" value="">
                            	<input type="hidden" name="resvTime" id="resvTime" value="">
                            	<input type="text" name="resvDateHan" id="resvDateHan" style="padding-left:5px; width:180px;" value="" readonly="readonly"> <a href="#none" onClick="window.open('/cschool/calendar.do','캘린더보기','width=800,height=700,scrollbars=yes,left=150,top=100')" class="btnBlues">상담일예약</a></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="wr_content">상담내용</label></th>
                            <td colspan="3"><textarea id="nttCn" name="nttCn" class="textarea100"></textarea>​</td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <div class="btnWrap ac">
                	<a href="javascript:fn_egov_regist_notice();" class="btnGray">신청하기</a>
                </div>
        </div>
    </div>
	<%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>
</div>
</form:form>
</body>
</html>