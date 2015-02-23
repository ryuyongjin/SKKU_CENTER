<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 2 });
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
                <li>센터소개</li>
                <li>설립목적 및 연혁</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_about.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            설립목적 및 연혁
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
                
				
                <h4 class="titDepth1 mt0">
                	<p>설립목적</p>
                </h4>
                
                <p>
                성균관대학교 대학교육혁신센터는 대학교육의 비전ㆍ전략ㆍ목표를 수립하고 대학교육 혁신모델의 연구개발을 통해 글로벌 리딩 대학으로 비상하고자 하는 우리 대학의 장기 비전 실현을 목적으로 2014년 8월에 설립되었습니다.<br />
                대학교육혁신센터는 글로벌 창의인재 양성을 목표로 학생중심 개방형 융합교육 플랫폼 구축, 학부교육 패러다임 질적 내실화를 통해 성균관대형 대학교육 혁신모델 확산을 위한 지속적인 노력을 기울여 나갈 것입니다.
                </p>
                
                
                <h4 class="titDepth1">
                	<p>주요기능</p>
                </h4>
                
                <div class="historyBox">
                	<ul>
                    	<li>
                        	<p>대학교육 비전, 전략 및 목표 수립</p>                            
                        </li>
                        <li>
                        	<p>대학교육 혁신을 위한 제반사업 수행, 관리 및 운영</p>
                        </li>
                        <li>
                        	<p>Big Data 활용 Academic Life Cycle(ALC) 모델 구축</p>
                        </li>
                        <li>
                        	<p>학생중심 전주기 맞춤형 학습지원체제 구축 및 운영</p>
                        </li>
                        <li>
                        	<p>대학교육 혁신모델 연구 및 확산</p>
                        </li>
                        <li>
                        	<p>대학교육의 질관리 모델 구축 및 확산</p>
                        </li>
                        <li>
                        	<p>대학교육효과성프로그램 개발, 운영, 확산</p>
                        </li>
                        <li>
                        	<p>성균리더십프로그램 개발, 운영, 확산</p>
                        </li>
                        <li>
                        	<p>창의성프로그램 개발, 운영, 확산</p>
                        </li>
                        <li>
                        	<p>고등교육정책 및 대학교육의 질 향상을 위한 제반 연구</p>
                        </li>
                    </ul>
                </div>

                
                
                <h4 class="titDepth1">
                	<p>연혁</p>
                </h4>    
                
                <p>
                2014. 8. 대학교육혁신센터 설립<br />
                2014. 8. 제1대 센터장 교육학과 배상훈 교수 취임
                </p>            

                



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