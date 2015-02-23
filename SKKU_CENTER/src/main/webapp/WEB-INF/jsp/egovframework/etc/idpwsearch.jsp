<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 3 });
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
                <li>아이디/비밀번호 찾기</li>
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
            아이디/비밀번호 찾기
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            
            
            

			<!-- ID(e-Mail) 찾기 -->
            <div class="loginWrap">
            
            	<h5 class="titDepth2 mt0">
                	<p>ID(e-Mail) 찾기</p>
                </h5>
            
            
                <form name="flogin" onsubmit="return flogin_submit(this);" method="post">
            
                <fieldset class="login_fs">
                    <legend>ID(e-Mail) 찾기</legend>
                    <label for="login_id" class="login_id">이름</label>
                    <input type="text" name="mb_id" id="login_id" required class="frm_input" size="20" maxLength="20">
                    <label for="login_pw" class="login_pw">연락처</label>
                    <input type="password" name="mb_password" id="login_pw" required class="frm_input" size="20" maxLength="20">
                    <input type="submit" value="확인" class="btn_submit">
                </fieldset>
                
                <div class="skkuLogin">
                	<p class="pt10 pb10">
                    홍길동 회원님 아이디 는 <span class="colorBlue">admin@skku.edu</span>  입니다.
                    </p>
                </div>
            
                </form>
            </div>  
            <!-- //ID(e-Mail) 찾기 -->
            
            
            <!-- 비밀번호찾기 -->
            <div class="loginWrap">
            
            	<h5 class="titDepth2 mt0">
                	<p>비밀번호찾기</p>
                </h5>
            
            
                <form name="flogin" onsubmit="return flogin_submit(this);" method="post">
            
                <fieldset class="login_fs">
                    <legend>비밀번호찾기</legend>
                    <label for="login_id" class="login_id">이메일</label>
                    <input type="text" name="mb_id" id="login_id" required class="frm_input" size="20" maxLength="20">
                    <label for="login_pw" class="login_pw">이름</label>
                    <input type="password" name="mb_password" id="login_pw" required class="frm_input" size="20" maxLength="20">
                    <input type="submit" value="확인" class="btn_submit">
                </fieldset>
                
                <div class="skkuLogin">
                	<p class="pt10 pb10">
                    가입하신 이메일로 회원님의 임시 비밀번호를 발송하였습니다.<br>이메일을 확인하시고 반드시 비밀번호 변경을 해주시기 바랍니다.
                    </p>
	                <a href="/" class="btnGray">로그인</a> <a href="/" class="btnGray">메인으로 이동</a>
                </div>
            
                </form>
            </div>  
            <!-- //비밀번호찾기 -->
            
            
            


  

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