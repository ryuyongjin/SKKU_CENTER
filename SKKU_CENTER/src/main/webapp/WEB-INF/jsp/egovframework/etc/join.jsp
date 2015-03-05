<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<link rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />" type="text/css">
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 2 });
    });
</script>
<script type="text/javascript" src="<c:url value="/sec/rnc/validator.do"/>"></script>
<validator:javascript formName="mberManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/ccm/zip/EgovZipPopup.js' />" ></script>
<script type="text/javaScript" language="javascript" defer="defer">
function fnIdCheck(){
    var retVal;
    var url = "<c:url value='/uss/umt/EgovIdDplctCnfirmView.do'/>";
    var varParam = new Object();
    varParam.checkId = document.mberManageVO.mberId.value;
    var openParam = "dialogWidth:303px;dialogHeight:250px;scroll:no;status:no;center:yes;resizable:yes;";
    retVal = window.showModalDialog(url, varParam, openParam);
    if(retVal) {
        document.mberManageVO.mberId.value = retVal;
    }
}
function showModalDialogCallback(retVal) {
	if(retVal) {
	    document.mberManageVO.mberId.value = retVal;
	}
}

function fnSbscrb(){
	if( !$("#checkField").is(":checked") ) {
		alert("개인정보취급방침에 동의하지 않으셨습니다.");
		$("#checkField").focus();
		return;
	}
	 
	if(validateMberManageVO(document.mberManageVO)){
		alert("asdf");
		if(document.mberManageVO.password.value != document.mberManageVO.password2.value){
            alert("<spring:message code="fail.user.passwordUpdate2" />");
            return;
        }
		alert("asdf2");
        document.mberManageVO.submit();
    }
}
</script>
</head>
<body>
<form:form commandName="mberManageVO" action="${pageContext.request.contextPath}/uss/umt/EgovMberSbscrb.do" name="mberManageVO"  method="post" >
<!-- 상세정보 사용자 삭제시 prameter 전달용 input -->
<input name="checkedIdForDel" type="hidden" />
<!-- 검색조건 유지 -->
<input type="hidden" name="searchCondition" value="<c:out value='${userSearchVO.searchCondition}'/>"/>
<input type="hidden" name="searchKeyword" value="<c:out value='${userSearchVO.searchKeyword}'/>"/>
<input type="hidden" name="sbscrbSttus" value="<c:out value='${userSearchVO.sbscrbSttus}'/>"/>
<input type="hidden" name="pageIndex" value="<c:out value='${userSearchVO.pageIndex}'/>"/>
<!-- 우편번호검색 -->
<input type="hidden" name="zip_url" value="<c:url value='/sym/ccm/zip/EgovCcmZipSearchPopup.do'/>" />
<form:hidden path="mberSttus" />
<div id="wrap">
	<!-- header -->
	<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>	
    <!-- //header -->
	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>회원서비스</li>
                <li>회원가입</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->
    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_etc.jsp" %>
	    <!-- //왼쪽메뉴 -->
        <!-- 서브본문 감싸기 -->
        <div class="content">
        	<!-- 타이틀 -->
            <h3 class="title">
            회원가입
            </h3>
            <!-- //타이틀 -->
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            	<!-- 개인정보취급방침 -->
                <h5 class="titDepth2 mt0">
                	<p>개인정보취급방침</p>
                </h5>
				<c:forEach var="result" items="${stplatList}" varStatus="status">
                <div class="fregister_private">
                    <label for="privacy" class="blind">개인정보 처리방침 동의사항</label>
                    <textarea id="privacy" name="privacy" readonly="readonly">${result.useStplatCn}</textarea>
                    <input name="checkuseStplatCn" type="hidden" value="<c:out value='${result.useStplatId}'/>">
                    <fieldset class="fregister_agree">
                        <input type="checkbox" id="checkField" name="checkField" value="1" />
                        <label for="checkField">개인정보처리방침 내용에 동의합니다.</label>
                    </fieldset>
                </div>
                </c:forEach>
                <!-- //개인정보취급방침 -->
                <p>* 별표 항목은 필수입력 입니다.</p>
            	<div class="writeType1">
                <table summary="회원가입 폼">
                <caption>회원가입 정보</caption>
                    <colgroup>
                        <col style="width:200px">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><label for="mberId">* (ID)이메일</label></th>
                            <td>
                            	<form:input path="mberId" size="20" cssClass="input50" readonly="true" maxlength="20" />&nbsp;<a href="javascript:fnIdCheck();" class="btnGrays">유효성확인</a>
                            	<div><form:errors path="mberId" cssClass="error" /></div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="mberNm">* 이름</label></th>
                            <td>
                            	<!-- <input type="text" name="name" size="50" class="input50"> -->
                            	 <input name="mberNm" type="text" size="20" value="" maxlength="60" title="이름입력" class="input50" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="password">* 비밀번호</label></th>
                            <td>
                            	<!-- <input type="password" name="password" size="50" class="input50"> -->
                            	<form:password path="password" size="50" maxlength="20" cssClass="input50" />
                    			<div><form:errors path="password" cssClass="error" /></div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="password2">* 비밀번호확인</label></th>
                            <td>
                            	<!-- <input type="password" name="password" size="50" class="input50"> -->
                            	<input type="password" id="password2" name="password2" size="50" maxlength="20" class="input50" title="비밀번호입력" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="passwordHint">* 비밀번호힌트</label></th>
                            <td>
                            	<form:select path="passwordHint">
			                        <form:option value="" label="--선택하세요--"/>
			                        <form:options items="${passwordHint_result}" itemValue="code" itemLabel="codeNm"/>
			                    </form:select>
		                    	<div><form:errors path="passwordHint" cssClass="error"/></div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="passwordCnsr">* 비밀번호정답</label></th>
                            <td>
                            	<!-- <input type="text" name="affiliate" size="50" class="input100"> -->
                            	<form:input path="passwordCnsr" cssClass="input50" size="50" maxlength="100" />
                    			<div><form:errors path="passwordCnsr" cssClass="error"/></div>
                            </td>
                        </tr>
                       
                    </tbody>
                </table>
                </div>
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="javascript:fnSbscrb();" class="btnGray">회원가입</a></a>
                	<a href="javascript:document.mberManageVO.reset();" class="btnGray">취소</a></a>
                </div>
                <!-- //버튼 end -->
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