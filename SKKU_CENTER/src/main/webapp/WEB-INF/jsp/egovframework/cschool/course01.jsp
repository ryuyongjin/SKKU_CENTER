<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 2, snSecond: 1 });
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
                <li>교육과정</li>
                <li>로드맵</li>
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
            로드맵
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                

				<h4 class="titDepth1 mt0">
                	<p>성균 C-School 교육과정 로드맵</p>
                </h4>
                
                <p>
                성균 C-School에서는 여러분을 Creative Innovator의 길로 안내하는 체계적인 교육과정을 제공하고 있습니다. <br>C-School에서 운영하는 교육체계는 [전공전문성 + CI역량 + 비교과 체험활동]의 융합과정으로 구성되어 있습니다.
                </p>              
                

                
                <p class="mt30">
                ※ 본 교육과정은 CI Track Ⅰ, Ⅱ 중 선택하여 이수할 수 있습니다.
                </p>
                
                
                <div class="mt10">
                	<img src="../images/cschool/1dia_course01.gif" alt="" class="img100">
                </div>
                
                
                
                
                <h4 class="titDepth1">
                	<p>C-School 학생중심 교육과정 운영 로드맵</p>
                </h4>
                
                <p>
                성균 C-School에 참여한 학생은 입학부터 졸업에 이르기까지 C-School의 전문적 코칭과 밀착서비스를 지원받으며, 자신의 진로와 관련된 교육 프로그램 및 다양한 체험활동을 이수하게 됩니다.
                </p>
                
                <p class="mt10">
                C-School에서는 다양한 수준 및 주제, 학문 분야를 바탕으로 학생들의 흥미를 유발할 수 있는 과목을 개발하였으며, CI 역량을 균형 있게 발달시킬 수 있는 교육과정을 개발하여 제공하고 있습니다.
                </p>
                
                
                <div class="mt20">
                	<img src="../images/cschool/1dia_course02.gif" alt="" class="img100">
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