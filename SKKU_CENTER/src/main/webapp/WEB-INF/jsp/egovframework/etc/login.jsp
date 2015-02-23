<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 1 });
    });
</script>
</head>

<body>

<div id="wrap">

	<!-- header -->
	<%@ include file="/include/header.jsp" %>	
    <!-- //header -->


	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>회원서비스</li>
                <li>로그인</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/include/lnb_etc.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            로그인
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            
            
            

            <div class="loginWrap">  
                
                <h1 class="loginTitle">
					본인의 이메일과 비밀번호를 입력해주세요.<br>
					성균관대 구성원은 킹고포털로 로그인하시기 바랍니다.
                </h1>
            
            
                <form name="flogin" onsubmit="return flogin_submit(this);" method="post">
            
                <fieldset class="login_fs">
                    <legend>회원로그인</legend>
                    <label for="login_id" class="login_id">이메일주소</label>
                    <input type="text" name="mb_id" id="login_id" required class="frm_input" size="20" maxLength="20">
                    <label for="login_pw" class="login_pw">비밀번호</label>
                    <input type="password" name="mb_password" id="login_pw" required class="frm_input" size="20" maxLength="20">
                    <input type="submit" value="로그인" class="btn_submit">
                </fieldset>
                
                <div class="skkuLogin">
	                <input type="checkbox" name="login" value="1"> 자동 로그인&nbsp;&nbsp;&nbsp;&nbsp;<a href="/" class="btnGreen">킹고포털 로그인하기</a>
                </div>
                
                <dl class="loginTxt">
                	<dt>
                    	<p class="txt1">아직 대학교육혁신센터 회원이 아니세요?</p>
                        <p class="txt2">대학교육혁신센터에 회원가입을 통해 더 많은 혜택과 서비스를 안전하게 이용할 수 있습니다.</p>
                    </dt>
                    <dd><a href="/" class="btnGray">회원가입</a></dd>
                </dl>
                
                
                <dl class="loginTxt">
                	<dt>
                    	<p class="txt1">아이디 비밀번호를 분실하셨습니까?</p>
                        <p class="txt2">대학교육혁신센터 아이디와 비밀번호를 찾을 수 있습니다.</p>
                    </dt>
                    <dd><a href="/" class="btnGray">아이디/비밀번호 찾기</a></dd>
                </dl>

            
                </form>
                
                
            </div>  


  

            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------------------------->
         


        
        </div>
        <!-- //서브본문 감싸기 -->
    
    </div>
    <!-- //왼쪽메뉴,본문 container -->


	<!-- footer -->
	<%@ include file="/include/footer.jsp" %>
    <!-- //footer -->
    
</div>

</body>
</html>