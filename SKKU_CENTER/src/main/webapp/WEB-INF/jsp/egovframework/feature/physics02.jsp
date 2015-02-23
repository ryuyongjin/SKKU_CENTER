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
                        <li><a href="/feature/physics02.do" class="on">세부 추진계획</a></li>
                        <li><a href="/feature/physics03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
				
                <h4 class="titDepth1 mt0">
                	<p>세부 추진계획</p>
                </h4>
                
                
                <h5 class="titDepth2">
                	<p>전공교육의 수월성 확보를 위한 체계 구축</p>
                </h5>
                
                <ul class="listType2">
                	<li>교과과정의 큰 틀은 유지하고 신규과목 개설보다는 교육의 질 향상에 주력</li>
                    <li>전공핵심과목의 강의과목, 연습과목, 실험과목의 유기적 연계성 강화</li>
                </ul>
                
                
                
                <h5 class="titDepth2">
                	<p>다양한 전공선택과목 및 학제간 융합과목 개설 운영</p>
                </h5>
                
                <ul class="listType2">
                	<li>전공일반과목을 크게 핵/입자/천체, 응집/통계, 나노/바이오군으로 구분하며 특히 본 학과가 집중적으로 육성하고 있는 천체, 바이오 물리분야의 과목을 개설하여 다양한 분야의 과목 제공</li>
                    <li>수학, 화학, 생물학 등을 통합하는 자연과학 학제간 연구과목을 개설 운영하는 한편 경영학, 인문학 등과의 다양한 융합과목을 개설하고 학생들의 수강 지원</li>
                </ul>
                
                
                
                <h5 class="titDepth2">
                	<p>학부-대학원 교육연계과정 운영</p>
                </h5>
                
                <ul class="listType2">
                	<li>우수한 학생들에게 보다 높은 수준의 교육을 받을 수 있게 하여 대학원 진학 및 연구단계로의 조기진입 유도</li>
                    <li>학부생들의 대학원 과목 선수강 제도를 유지하고 그 대상을 점차적으로 확대</li>
                    <li>연구학점과목 및 졸업논문연구과목을 활성화시켜 학생들이 직접 연구에 참여할 수 있는 기회 제공</li>
                    <li>과학인재전형제도를 활용하여 우수과학고 졸업생을 선발하고 대학원연계프로그램에 참여하도록 유도하여 대학원 핵심연구인력으로 육성</li>
                </ul>
                
                
                
                <h5 class="titDepth2">
                	<p>국제화 교육 프로그램 운영</p>
                </h5>
                
                <ul class="listType2">
                	<li>해외대학과의 교육교류를 통한 국제화프로그램을 운영 : 스웨덴 Umea대학과의 협력을 강화하고 교육교류의 범위 확대 및 국제교육협력 대상기관을 점차적으로 확대</li>
                    <li>학생들의 해외연수탐방 프로그램 개발. 자연과학대학에서 시행하고 있는 RAE (Research Abroad Experience) 프로그램을 적극 활용하는 한편 사업단 자체적인 프로그램 신규 개발ㆍ운영</li>
                    <li>전공기초과목을 국제어강의과목으로 유지하고 외국인 강의전담교수의 강의 비율을 일정수준 이상으로 유지</li>
                </ul>
                
                
                
                <h5 class="titDepth2">
                	<p>지역대학과의 교육협력 프로그램 운영</p>
                </h5>
                
                <ul class="listType2">
                	<li>상호간 이익 증진을 위한 교육 및 연구 부문에서 교류 협정 체결 : 현재 2개 지역대학과 협정을 체결하였으며 점차 협력기관 확대</li>
                    <li>석학초빙 세미나 과목의 공동수강을 추진 및 교육교류의 범위를 점차적으로 확대</li>
                    <li>공동으로 운영할 수 있는 교육 프로그램 개발ㆍ지원</li>
                </ul>
                
                
                
                <h5 class="titDepth2">
                	<p>일반인 및 중고등학생 대상 교육 프로그램 운영</p>
                </h5>
                
                <ul class="listType2">
                	<li>물리학의 재미있고 흥미로운 주제를 다루며 강연 및 체험으로 구성되는 “물리야 놀자” 프로그램 운영</li>
                    <li>지역 고등학생들이 참여하는 물리체험 프로그램을 지속적으로 운영함으로써 물리저변 확대에 기여</li>
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