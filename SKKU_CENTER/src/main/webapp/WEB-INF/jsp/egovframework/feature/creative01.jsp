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
                        <li><a href="/feature/creative01.do" class="on">Creative Informatics</a></li>
                        <li><a href="/feature/creative02.do">비전/목표/전략</a></li>
                        <li><a href="/feature/creative03.do">성균교육 3.0</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>왜 Creative Informatics인가?</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>글로벌 이슈 : ‘일, 학습, 건강’</p>
                </h5>
                
                <ul class="listType2">
                	<li>최근 영양 개선과 의약의 발전으로 인간의 평균 수명이 연장되어 빠른 속도의 고령화가 진행되면서, 건강에 대한 관심이 전 세계적으로 증대</li>
                    <li>이와 함께 65세 인구 비중은 16%에서 25% 상승하면서 생산 가능 인구 감소와 생산성 증가율 둔화 등에 따라 저성장으로 인한 일자리 위기 심화</li>
                    <li>청년, 중도퇴직자, 고령자의 일자리 욕구는 상승하고 있으나 사회 전체의 일자리창출 능력은 저하되고 있어 평생학습을 통한 지속적인 자기 혁신 능력 향상이 중요한 이슈로 부각</li>
                    <li>즉, 미래 사회에서는 건강(Sustainable Welfare Society)을 지키고, 지속적인 자기혁신 능력(Learning for Global Professionals)을 갖추어 일자리 및 新경쟁력을 창출하는 것(Innovative Job Creation), 이 세 가지가 가장 핵심적인 글로벌 이슈</li>
                    <li>글로벌 이슈는 “향후 고부가가치 일자리의 창출 및 높은 성장이 예상되는 분야”이고, 관련 “영역 간 융복합 없이는 해결하기 어려운 분야”</li>
                </ul>
                
                <div class="mt20 ml20">
                	<img src="../images/feature/1dia_creative01.jpg" alt="" class="img100">
                </div>
                
                
                <h5 class="titDepth2">
                	<p>Big data 시대 도래와 인포매틱스(Informatics) 중요성 부각</p>
                </h5>
                
                <ul class="listType2">
                	<li>오늘날 사회의 모든 분야에서 방대한 양의 데이터와 정보가 축척되어 빅데이터를 형성하는데, 이처럼 기하급수적으로 증가하는 정보의 처리와 활용이 사회적 문제로 대두</li>
                    <li>따라서 각 사회 분야별로 빅데이터와 연관된 문제를 해결하고 빅데이터를 활용하여 새로운 비지니스와 상품을 창출하는 것이 사회적 이슈</li>
                    <li>인포매틱스는 소프트웨어 기술을 활용하여 사회 각 분야별로 당면한 빅데이터 문제를 해결하는 핵심 학문</li>
                </ul>
                
                
                <h4 class="titDepth1">
                	<p>Creative Informatics</p>
                </h4>
                
                <ul class="listType1">
                	<li>다양한 도메인(Domain)이 유기적으로 결합된 융합 도메인에서 생성되는 빅데이터로부터 의미를 발굴ㆍ창출하여 새로운 지식과 가치를 창출하는 다학제 융합학문분야</li>
                    <li>Creativity(창의적 문제창출/해결 능력) + Informatics(도메인지식 + SW 활용 능력)</li>
                    <li>CI는 새로운 문제를 발견하고 이를 다양한 도메인 지식과 SW기술을 융합하여 체계적 과정을 통해 해결하여 새로운 지식과 새로운 가치를 창출하는 학문</li>
                    <li>도메인에 특화된 SW기술을 활용하여 문제를 해결하는 기존의 인포매틱스를 창조적으로 확장한 개념</li>
                </ul>
                
                <div class="mt20">
                	<img src="../images/feature/1dia_creative02.jpg" alt="" class="img100">
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