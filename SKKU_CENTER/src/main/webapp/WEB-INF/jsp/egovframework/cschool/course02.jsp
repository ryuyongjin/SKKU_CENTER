<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 2, snSecond: 2 });
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
                <li>교과목</li>
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
            교과목
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                

				<h4 class="titDepth1 mt0">
                	<p>CI 기초 과목</p>
                </h4>
                
                <p>
                성균 C-School은 CI 역량 함양을 위한 교과 과정을 운영하고 있습니다. CI 기초 과목은 컴퓨팅 사고, 디자인사고, 인포매틱스기초, 데이터분석, 프로그래밍 기초의 총 5과목으로 구성되어 있습니다.
                </p>                
                
                <ul class="listType15 mt20">
                	<li>컴퓨팅 사고(Computational Thinking)</li>
                </ul>
                
                <div class="mt20">
                	<img src="../images/cschool/2dia_course01.gif" alt="" class="img100">
                </div>
                <p class="ml20 mt10">
                정보화 시대의 핵심 역량인 데이터 추상화, 알고리즘 등에 대한 기초 지식을 쌓고 나아가 프로그래밍 실습을 통해 기초 프로그래밍 능력을 기름
                </p>
                
                
                <ul class="listType15 mt20">
                	<li>디자인 사고(Design Thinking)</li>
                </ul>
                
                <div class="mt20">
                	<img src="../images/cschool/2dia_course02.gif" alt="" class="img100">
                </div>
                <p class="ml20 mt10">
                디자인 사고는 Empathy, Define, Ideate, Prototype, Test의 전 과정을 다루며, 문제를 찾아 솔루션을 제시하는 과정까지를 팀 프로젝트 기반으로 수행하게 됨
                </p>
                
                
                <ul class="listType15 mt20">
                	<li>인포매틱스 기초(Informatics)</li>
                </ul>
                
                <div class="mt20">
                	<img src="../images/cschool/2dia_course03.gif" alt="" class="img100">
                </div>
                <p class="ml20 mt10">
                컴퓨터 소프트웨어를 효과적으로 활용하는 방법에 관한 수업으로, 컴퓨터 하드웨어와 소프트웨어에 대한 기초 지식을 이해하 실제 소프트웨어 활용 능력을 기름
                </p>
                
                
                
                <ul class="listType15 mt20">
                	<li>데이터 분석</li>
                    <li>프로그래밍 기초</li>
                </ul>
                
                
                
                
                <h4 class="titDepth1">
                	<p>CI 적용 과목</p>
                </h4>
                
                <!-- 교육학과 칼라박스 -->
                <div class="colorBox">
                <dl>
                	<dt>교육학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>교육과 창조경영</li>
                            <li>감성지능과 인포매틱스</li>
                            <li>빅데이터분석과 미래예측</li>
                            <li>교육인포메틱스</li>
                            <li>Labor Informatics</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="right">                    
                    <dt>글로벌 경제학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>Econometrics</li>
                            <li>Forecasting and Time Series Analysis Utilizing Big Data</li>
                            <li>Labor Economics</li>
                            <li>Health Economics</li>
                            <li>Health Informatics</li>
                        </ul>
                    </dd>
                </dl>
                <dl>  
                    <dt class="bgGreen">디자인학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>인포메이션디자인</li>
                            <li>사용자경험디자인</li>
                            <li>비쥬얼인터랙션디자인 </li>
                            <li>크리에이티브디자인</li>
                            <li>디자인솔루션</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="right"> 
                    <dt class="bgGreen">소프트웨어학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>프로그래밍원리</li>
                            <li>자료구조와 알고리즘</li>
                            <li>컴퓨터그래픽스개론</li>
                            <li>인터넷서비스와정보보호</li>
                            <li>인공지능개론</li>
                        </ul>
                    </dd>
                </dl>
                <dl> 
                    <dt class="bgPerple">글로벌 경영학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>Integration of Systems & Business Informatics</li>
                            <li>Decision Support System</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="right"> 
                    <dt class="bgPerple">글로벌 BME학과</dt>
                	<dd>
                        <ul class="listType15">
                            <li>바이오인포메틱스</li>
                            <li>바이오물리모델링</li>
                            <li>메디컬인포메틱스</li>
                            <li>바이오메디컬이미징프로세싱</li>
                            <li>바이오시그널프로세싱</li>
                        </ul>
                    </dd>
                </dl>
                </div>
                <!-- //교육학과 칼라박스 -->
                
                <p class="mt10">
                * CI 적용 과목은 각 학과 사무실에 문의하시면 보다 자세한 정보를 얻으실 수 있습니다.
                </p>
                
                
                
                
                
                
                
                <h4 class="titDepth1">
                	<p>CI 심화 과목</p>
                </h4>
                
                <ul class="listType15">
                	<li>모바일프로그래밍</li>
                    <li>자료구조와알고리즘</li>
                    <li>운영체제</li>
                    <li>데이터베이스개론</li>
                    <li>정보보호</li>
                    <li>인간컴퓨터상호작용</li>
                    <li>웹프로그래밍</li>
                    <li>데이터마이닝</li>
                    <li>소프트웨어 프로젝트 관리</li>
                    <li>컴퓨터그래픽스개론</li>
                </ul>
                
                
                <h4 class="titDepth1">
                	<p>CI 적용 과목</p>
                </h4>
                
                <ul class="listType15">
                	<li>문제해결력</li>                    
                    <li>융합종합프로젝트</li>
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