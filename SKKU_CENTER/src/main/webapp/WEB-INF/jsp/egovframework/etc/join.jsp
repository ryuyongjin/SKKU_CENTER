<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 2 });
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
                <li>회원가입</li>
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
            회원가입
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            
            
            
            
            	<!-- 개인정보취급방침 -->
                <h5 class="titDepth2 mt0">
                	<p>개인정보취급방침</p>
                </h5>

                <div class="fregister_private">
                    <label for="privacy" class="blind">개인정보 처리방침 동의사항</label>
                    <textarea id="privacy" name="privacy" readonly="readonly">개인정보취급방침 내용</textarea>
                    <fieldset class="fregister_agree">
                        <input type="checkbox" name="agree2" value="1" id="agree21">
                        <label for="agree21">개인정보처리방침 내용에 동의합니다.</label>
                    </fieldset>
                </div>
                <!-- //개인정보취급방침 -->
				
                
                
                <!-- 회원가입 폼 start -->
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
                            <th scope="row"><label for="email">* (ID)이메일</label></th>
                            <td><input type="text" name="email" size="50" class="input50"> &nbsp;<a href="/" class="btnGrays">유효성확인</a></a></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="password">* 비밀번호</label></th>
                            <td><input type="password" name="password" size="50" class="input50"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="password">* 비밀번호확인</label></th>
                            <td><input type="password" name="password" size="50" class="input50"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="name">* 이름</label></th>
                            <td><input type="text" name="name" size="50" class="input50"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="affiliate">소속</label></th>
                            <td><input type="text" name="affiliate" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="group">그룹</label></th>
                            <td><input type="text" name="group" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="companyname">대학및기관명</label></th>
                            <td><input type="text" name="companyname" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="work">학과(부)및부서</label></th>
                            <td><input type="text" name="work" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="position">직위/직급</label></th>
                            <td><input type="text" name="position" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="phone">연락처(휴대폰)</label></th>
                            <td><input type="text" name="phone" size="10"> - <input type="text" name="phone" size="10"> - <input type="text" name="phone" size="10"></td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //회원가입 폼 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="/" class="btnGray">회원가입</a></a>
                </div>
                <!-- //버튼 end -->

            

                



  

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