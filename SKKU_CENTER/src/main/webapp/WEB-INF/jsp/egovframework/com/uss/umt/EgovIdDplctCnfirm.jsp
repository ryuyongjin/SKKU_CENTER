<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : EgovIdDplctCnfirm.jsp
  * @Description : 아이디중복확인
  * @Modification Information
  * @
  * @  수정일         수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.03.03    조재영          최초 생성
  *
  *  @author 공통서비스 개발팀 박지욱
  *  @since 2009.03.23
  *  @version 1.0
  *  @see
  *
  */
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<title>ID중복확인</title>
<base target="_self" >
<link rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />" type="text/css">
<link href="<c:url value='/css/egovframework/com/button.css' />" rel="stylesheet"  type="text/css">
<script type="text/javaScript" language="javascript">
<!--
function fnCheckId(){
	if(fnCheckNotKorean(document.checkForm.checkId.value) && fnCheck(document.checkForm.checkId.value)){
		document.checkForm.submit();
    }else{
        return;
    }
}
function fnReturnId(){
	var retVal="";
    if (document.checkForm.usedCnt.value == 0){
	    retVal = document.checkForm.resultId.value;
	    
	    var parentPanel = null;
		var browser = navigator.userAgent;
	    
 	    if (browser.indexOf('Trident/') > -1) {
	    	parentPanel = parent.window.document;
	    }else{
	    	parentPanel = opener.document;
	    }

	    
	    
	    if(parentPanel.entrprsManageVO){
	    	parentPanel.entrprsManageVO.entrprsmberId.value = retVal;
	    }else if(parentPanel.userManageVO){
	    	parentPanel.userManageVO.emplyrId.value = retVal;
	    }else if(parentPanel.mberManageVO){
	    	parentPanel.mberManageVO.mberId.value = retVal;
	    }
	    

	    parent.window.returnValue = retVal;
        window.close();
    }else if (document.checkForm.usedCnt.value == 1){
        alert("이미사용중인 아이디입니다.");
        return;
    }else{
    	alert("먼저 중복확인을 실행하십시오");
        return;
    }
}
function fnClose(){
    var retVal="";
    window.returnValue = retVal;
    window.close();
}
function fnCheckNotKorean(koreanStr){
    for(var i=0;i<koreanStr.length;i++){
        var koreanChar = koreanStr.charCodeAt(i);
        if( !( 0xAC00 <= koreanChar && koreanChar <= 0xD7A3 ) && !( 0x3131 <= koreanChar && koreanChar <= 0x318E ) ) {
        }else{
            //hangul finding....
           	alert("한글은 사용할 수 없습니다.");
            return false;
        }
    }
    return true;
}

// 2011.10.25 보안점검 후속조치
function fnCheck(str){
    var blank_pattern = /[\s]/g;
    var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

    if( special_pattern.test(str) == true || blank_pattern.test(str) == true ){
        alert("공백 및 특수문자는 사용할 수 없습니다.");
        return false;
    } else {
   		return true;
	}
}

-->
</script>
</head>
<body>
<form name="checkForm" action ="<c:url value='/uss/umt/EgovIdDplctCnfirm.do'/>">
<div id="wrap">    
	<div class="popWrap">
		<h2>아이디 중복확인</h2>       
    
	<div class="writeType2">
    <table>
        <tr>
            <th scope="row">사용할아이디</th>
            <td>
                <input type="hidden" name="resultId" value="<c:out value="${checkId}"/>" />
	            <input type="hidden" name="usedCnt" value="<c:out value="${usedCnt}"/>" />
	            <input type="text" name="checkId" value="<c:out value="${checkId}"/>" maxlength="20" tabindex="1" title="아이디입력"/>
	        </td>
	    </tr>
	    <tr>
            <th scope="row">결과</th>
            <td>
                <c:choose>
                <c:when test="${usedCnt eq -1}">
                    &nbsp; 중복확인을 실행하십시오
                </c:when>
                <c:when test="${usedCnt eq 0}">
                    ${checkId} 는 사용가능한 아이디입니다.
                </c:when>
                <c:otherwise>
                    ${checkId} 는 사용할수 없는 아이디입니다.
                </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
    </div>
    
    <div class="btnWrap ac">
    	<!-- 조회 -->
        <span class="button"><input type="button" onclick="fnCheckId();" value="<spring:message code='button.inquire' />" class="btnGrays" /></span>
        <!-- 사용 -->
        <span class="button"><input type="button" onclick="fnReturnId();" value="<spring:message code='button.use' />" class="btnGrays" /></span>
        <!-- 닫기 -->
        <span class="button"><input type="button" onclick="fnClose();" value="<spring:message code='button.close' />" class="btnGrays" /></span>
    </div>
		
    
</div>
</div>
</form>
</body>
</html>
