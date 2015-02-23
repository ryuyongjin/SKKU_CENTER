<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 4 });
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
                <li>대학특성화</li>
                <li>글로벌 유학 창의인재 양성 사업단</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_feature.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            글로벌 유학 창의인재 양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/confucianism01.do" class="on">교육비전 및 목표</a></li>
                        <li><a href="/feature/confucianism02.do">교육목표 및 인재상, 교육 역량</a></li>
                        <li><a href="/feature/confucianism03.do">추진전략</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교육비전 및 목표</p>
                </h4>
                
                <p>글로벌 유학 창의 인재 양성</p>
                
                <ul class="listType1">
                	<li>글로벌 유학 창의 인재 양성이라는 특성화 교육 목표를 달성하기 위하 본 사업단은 ‘응용유학(Applied Confucianism) 교육과정 신설’을 주축으로 한 구체적 실천 방안 수립</li>
                    <li>상호 유기적으로 연관된 네 가지 핵심 역량 분야 : 창의 역량, 글로벌 역량, 기초 역량을 본 사어단의 특성화 사업 목표로 설정하고 체계적으로 추진</li>
                </ul>
                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_confucianism01.gif" alt="" class="img100">
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