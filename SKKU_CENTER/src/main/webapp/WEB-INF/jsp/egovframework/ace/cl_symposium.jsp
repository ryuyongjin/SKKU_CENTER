<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 3, snThird: 4 });
    });
</script>
</head>

<body>

<div id="wrap">

	<!-- header -->
	<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>
    <!-- //header -->


	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>ACE</li>
                <li>성대형 ACE 모델 확산</li>
                <li>창의리더 심포지엄</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_ace.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            창의리더 심포지엄
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	

                
                
               
                
                
                <p class="font18black">
                	창의리더 심포지엄은
                </p>
                
                <p>
                	대학의 창의성과 리더십 교육에 대한 이해를 증진하고, <br>이를 함양하는 바람직한 교육 방안 모색과 발전방향에 대하여 논의하는 장을 마련하고자 한다.
                </p>
               
                <div class="mt20 mb30">
					<img src="../images/ace/dia_symposium01.gif" alt="" class="img100">
                </div>
                
                
                
                <ul class="img3">
                	<li><img src="../images/ace/pic_symposium01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_symposium02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_symposium03.jpg" alt="" class="img100"></li>
                </ul> 
                
                <ul class="img3">
                    <li><img src="../images/ace/pic_symposium04.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_symposium05.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_symposium06.jpg" alt="" class="img100"></li>
                </ul> 
                
                <div class="btnWrap ar">
                	<a href="./" class="btnViewblue">행사 자세히보기</a>
                </div>
                
                
                
                
            


                
                 
                




                
                
                




            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------->
         


        
        </div>
        <!-- //서브본문 감싸기 -->
    
    </div>
    <!-- //왼쪽메뉴,본문 container -->


	<!-- footer -->
	<%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>
    <!-- //footer -->
    
</div>

</body>
</html>