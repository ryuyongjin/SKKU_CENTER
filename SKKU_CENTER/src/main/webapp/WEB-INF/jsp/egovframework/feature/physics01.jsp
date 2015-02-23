<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 6 });
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
                <li>차세대 선도 물리인재 양성 사업단</li>
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
            차세대 선도 물리인재 양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/physics01.do" class="on">교육목표/교육비전</a></li>
                        <li><a href="/feature/physics02.do">세부 추진계획</a></li>
                        <li><a href="/feature/physics03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
				
                <h4 class="titDepth1 mt0">
                	<p>교육목표</p>
                </h4>
                
                <ul class="listType1">
                	<li>미래를 선도하는 창조적 인재를 배출하여 국내외 산학연 핵심인력으로 양성</li>
                </ul>
                

                
                
				<h4 class="titDepth1">
                	<p>교육비전</p>
                </h4>
                
                <ul class="listType1">
                	<li>교육 선순환 구조를 바탕으로 한 상생적 교육 생태계 구축</li>
                    <li>전문지식기반과 창의기반 융복합 교육과정을 통해 미래사회를 선도하는 산학연 핵심인력인 글로벌 창의리더 양성</li>
                </ul>
                
                
                <div class="mt30">
                	<img src="../images/feature/1dia_physics01.gif" alt="" class="img100">
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