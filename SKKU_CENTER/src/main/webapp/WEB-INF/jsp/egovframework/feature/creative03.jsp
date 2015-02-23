<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 1 });
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
                <li>융합기반 Creative Informatics 인재양성 사업단</li>
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
            융합기반 Creative Informatics 인재양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/creative01.do">Creative Informatics</a></li>
                        <li><a href="/feature/creative02.do">비전/목표/전략</a></li>
                        <li><a href="/feature/creative03.do" class="on">성균교육 3.0</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                <h4 class="titDepth1 mt0">
                	<p>성균교육의 미래</p>
                    <span>: 글로벌 이슈를 해결하는 입체형 창의ㆍ융합ㆍ혁신 인재 육성</span>
                </h4>

                
                <p>
                창의적ㆍ혁신적 문제해결능력을 바탕으로 글로벌 이슈 해결을 위해 타인과 소통ㆍ협업ㆍ융합하며 빅데이터 속에서 유의미한 가치를 창출하고 공유하는 3차원적 입체형 인재를 양성하는 새로운 형태의 창의 융합 혁신적 교육 시스템 구축
                </p>
                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_creative03.gif" alt="" class="img100">
                </div>
                

				<h4 class="titDepth1">
                	<p>성균교육 3.0</p>
                </h4>
                
                <p>
                융합기반 지식생태계 구축을 통해, Sungkyun CI를 양성함으로써, 대학의 교육가치를 구현하고 한국 종합대학의 새로운 교육모델을 창출하는 「성균교육 3.0」 구현
                </p>
                
                <div>
                	<img src="../images/feature/3dia_creative01.jpg" alt="" class="img100">
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