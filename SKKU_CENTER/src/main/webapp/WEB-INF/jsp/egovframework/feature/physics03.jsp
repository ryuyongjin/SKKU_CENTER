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
                        <li><a href="/feature/physics01.do">교육목표/교육비전</a></li>
                        <li><a href="/feature/physics02.do">세부 추진계획</a></li>
                        <li><a href="/feature/physics03.do" class="on">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
				
                <h4 class="titDepth1 mt0">
                	<p>교과과정 구성 및 운영</p>
                </h4>
                
                <ul class="listType1">
                	<li>교과과정은 공통기초과목인 전공핵심과목군, 세부전공과목 및 학제간과목 등을 포함하는 전공일반과목군,  물리실험과목인 전공실험 과목군으로 구성</li>
                    <li>전공핵심 과목군과 전공실험 과목군의 거의 모든 과목들은 매년 개설</li>
                    <li>전공핵심과목의 경우 교육의 질을 높이고 학생들의 문제해결능력을 향상시키기 위해 연습과목을 각각 개설 및 운영</li>
                    <li>전공일반과목군의 경우 일부 핵심과목은 매년 개설되고 있으며 최신 물리학 동향을 반영하여 과목들을 개설</li>
                    <li>자연과학의 다른 분야뿐만 아니라 인문 사회과학을 통섭하는 학제간과목 및 융합 과목을 개설하여 학생들에게 제공</li>
                    <li>대학원에 진학할 예정인 우수학생들을 위해 대학원과목의 선수강제도를 운영하고 연구과목 및 졸업연구과목을 활용하여 직접 연구에 참여할 기회 제공</li>
                    <li>현장에 직접 파견되어 실무를 익힐 수 있는 물리현장실습과목을 운영하고 물리 세미나 과목을 통하여 각 분야 전문가를 초빙하여 학생들에게 다양한 정보를 제공 및 진로 선택 기회 제공</li>
                    <li>진로에 따라 특성화된 교과과정 로드맵(Roadmap) 제공</li>
                </ul>

                
                
                <div class="mt30">
                	<img src="../images/feature/3dia_physics01.gif" alt="" class="img100">
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