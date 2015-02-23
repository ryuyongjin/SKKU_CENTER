<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 4 });
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
                <li>C-School</li>
                <li>C-Office 소개</li>
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
            C-Office 소개
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                
				<p>
                C-Office는 성균 C-School에 참여하는 학생들의 학습 활동 전반에 대한 전문적인 상담과 의사결정을 지원하는 공간입니다. <br>
                C-School 교과, 학습, 프로그램, 진로와 관련된 전반적인 문제를 C-Advisor가 개별 상담과 코칭을 통해 도와드립니다. <br>
                또한 CI 역량 진단과 E-포트폴리오를 통해 여러분의 학업을 전문적으로 관리하고 있습니다.  <br>
                대학교육혁신센터 홈페이지 ‘<span class="colorBlue">C-Advisor 상담예약</span>’에서 상담을 신청할 수 있으며, <span class="colorBlue">전화로도 상담 예약</span>을 할 수 있습니다.
                </p>
                
                <ul class="listType15 mt20">
                	<li>위치 : 경영관 31B102</li>
                    <li>상담 및 예약 문의 : 02)740-1830~1</li>
                </ul>
                
                <div class="mt20 mb20">
                	<img src="../images/cschool/dia_coffice01.gif" alt="" class="img100">
                </div>

                
                <ul class="img2">
                	<li><img src="../images/cschool/pic_coffice01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/cschool/pic_coffice02.jpg" alt="" class="img100"></li>
                </ul>
                <ul class="img2">
                	<li><img src="../images/cschool/pic_coffice03.jpg" alt="" class="img100"></li>
                    <li><img src="../images/cschool/pic_coffice04.jpg" alt="" class="img100"></li>
                </ul>



                
                
                




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