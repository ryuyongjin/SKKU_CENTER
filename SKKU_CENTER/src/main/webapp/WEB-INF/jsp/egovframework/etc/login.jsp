<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 1 });
    });
	
	function checkLogin(userSe) {
	    // 일반회원
	    if (userSe == "GNR") {
	        document.loginForm.rdoSlctUsr[0].checked = true;
	        document.loginForm.rdoSlctUsr[1].checked = false;
	        document.loginForm.rdoSlctUsr[2].checked = false;
	        document.loginForm.userSe.value = "GNR";
	    // 기업회원
	    } else if (userSe == "ENT") {
	        document.loginForm.rdoSlctUsr[0].checked = false;
	        document.loginForm.rdoSlctUsr[1].checked = true;
	        document.loginForm.rdoSlctUsr[2].checked = false;
	        document.loginForm.userSe.value = "ENT";
	    // 업무사용자
	    } else if (userSe == "USR") {
	        document.loginForm.rdoSlctUsr[0].checked = false;
	        document.loginForm.rdoSlctUsr[1].checked = false;
	        document.loginForm.rdoSlctUsr[2].checked = true;
	        document.loginForm.userSe.value = "USR";
	    }
	}
	
	function actionLogin() {
	
	    if (document.loginForm.id.value =="") {
	        alert("아이디를 입력하세요");
	    } else if (document.loginForm.password.value =="") {  
	        alert("비밀번호를 입력하세요");
	    } else {
	        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
	        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
	        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
	        document.loginForm.submit();
	    }
	}
	
	function actionCrtfctLogin() {
	    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
	    document.defaultForm.submit();
	}
	
	function goFindId() {
		alert("준비중입니다.");
		return;   
		
	    document.defaultForm.action="<c:url value='/uat/uia/egovIdPasswordSearch.do'/>";
	    document.defaultForm.submit();
	}
	
	function goRegiUsr() {
	
		<% // 임시 막음 %>
		alert("준비중입니다.");
		return;
		
		var useMemberManage = '${useMemberManage}';
	
		if(useMemberManage != 'true') {
			alert("사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요.");
			return false;
		}
	
	    var userSe = document.loginForm.userSe.value;
	    // 일반회원
	    if (userSe == "GNR") {
	        //document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
	        document.loginForm.action="<c:url value='/uss/umt/EgovMberSbscrbView.do'/>";
	        document.loginForm.submit();
	    }
	}
	
	function goGpkiIssu() {
	    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
	    document.defaultForm.submit();
	}
	
	function setCookie (name, value, expires) {
	    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
	}
	
	function getCookie(Name) {
	    var search = Name + "=";
	    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
	        offset = document.cookie.indexOf(search);
	        if (offset != -1) { // 쿠키가 존재하면
	            offset += search.length;
	            // set index of beginning of value
	            end = document.cookie.indexOf(";", offset);
	            // 쿠키 값의 마지막 위치 인덱스 번호 설정
	            if (end == -1)
	                end = document.cookie.length;
	            return unescape(document.cookie.substring(offset, end));
	        }
	    }
	    return "";
	}
	
	function saveid(form) {
	    var expdate = new Date();
	    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
	    if (form.checkId.checked)
	        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
	    else
	        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
	    setCookie("saveid", form.id.value, expdate);
	}
	
	function getid(form) {
	    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
	}
	
	function fnInit() {
		/* if (document.getElementById('loginForm').message.value != null) {
		    var message = document.getElementById('loginForm').message.value;
		} */
	    if ("${message}" != "") {
	        alert("${message}");
	    }
	
	    getid(document.loginForm);
	    // 포커스
	    //document.loginForm.rdoSlctUsr.focus();
	}
	
	function press(event) {
		if (event.keyCode==13) {
			actionLogin();
		}
	}
</script>
</head>
<body onLoad="fnInit();">
<form name="loginForm" action ="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
<input type="hidden" id="message" name="message" value="<c:out value='${message}'/>" />
<input type="hidden" id="userSe" name="userSe" value="GNR" />
<div id="wrap">
	<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>	
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>회원서비스</li>
                <li>로그인</li>
            </ul>
        </div>
    </div>
    <div id="container">
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_etc.jsp" %>
        <div class="content">
            <h3 class="title">
            로그인
            </h3> 
            <div class="loginWrap">  
                <h1 class="loginTitle">
					본인의 이메일과 비밀번호를 입력해주세요.<br>
					성균관대 구성원은 킹고포털로 로그인하시기 바랍니다.
                </h1>
                <fieldset class="login_fs">
                    <legend>회원로그인</legend>
                    <label for="login_id" class="login_id">아이디</label>
                    <input type="text" name="id" id="id" class="frm_input" size="20" maxLength="20" ime-mode: disabled;" />
                    <label for="login_pw" class="login_pw">비밀번호</label>
                    <input type="password" name="password" id="password" class="frm_input" size="20" maxLength="20" onkeypress="press(event);" />
                    <input type="button" onclick="actionLogin();" value="로그인" class="btn_submit"> 
                </fieldset>
                <div class="skkuLogin">
	                <label for="checkId"><input type="checkbox" name="checkId" onClick="javascript:saveid(document.loginForm);" id="checkId" tabindex="6"/> ID저장</label>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/" class="btnGreen">킹고포털 로그인하기</a>
                </div>
                <dl class="loginTxt">
                	<dt>
                    	<p class="txt1">아직 대학교육혁신센터 회원이 아니세요?</p>
                        <p class="txt2">대학교육혁신센터에 회원가입을 통해 더 많은 혜택과 서비스를 안전하게 이용할 수 있습니다.</p>
                    </dt>
                    <dd><a href="#LINK" onclick="goRegiUsr();" class="btnGray">회원가입</a></dd>
                </dl>
                <dl class="loginTxt">
                	<dt>
                    	<p class="txt1">아이디 비밀번호를 분실하셨습니까?</p>
                        <p class="txt2">대학교육혁신센터 아이디와 비밀번호를 찾을 수 있습니다.</p>
                    </dt>
                    <dd><a href="#LINK" onClick="goFindId();" class="btnGray">아이디/비밀번호 찾기</a></dd>
                </dl>
            </div>  
        </div>
    </div>
	<%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>
</div>
</form>
</body>
</html>