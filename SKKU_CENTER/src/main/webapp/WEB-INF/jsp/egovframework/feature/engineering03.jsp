<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 3 });
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
                <li>글로벌 건설 엔지니어링 전문인력 양성 사업단</li>
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
            글로벌 건설 엔지니어링 전문인력 양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/engineering01.do">교육비전</a></li>
                        <li><a href="/feature/engineering02.do">교육목표</a></li>
                        <li><a href="/feature/engineering03.do" class="on">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교과과정 구성 및 운영</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>기본방향</p>
                </h5>
                
                <ul class="listType2">
                	<li>‘건축공학’과 ‘토목공학’ 등 두 학문분야의 시너지 효과를 극대화시키기 위해 공통부분과 심화부분으로 나누어 교육과정 편성</li>
                    <li>대학의 교육방침과 인재상을 기반으로 하는 교양과정 위에 건축공학과 토목공학에서 공유할 수 있는 교과과정을 배치하고 고학년으로 진입하면서 공학인증체계(ABEEK)에 따라 ‘건축공학 심화과정’ 또는 ‘토목공학 심화과정’을 선택하는 한편, 학생 개인의 적성과 관심분야에 따라 세부전공 트랙을 결정할 수 있도록 로드맵을 제시하며 궁극적으로 Capstone Design 과정을 통해 다양한 세부전공 분야가 협업에 의해 성과물 도출</li>
                    <li>또한 정규교과과정만으로 충족시킬 수 없는 본 사업단의 인재상과 역량에 관해서는 비교과과정을 적극 활용</li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>건설 및 엔지니어링 산업의 High-Tech 융ㆍ복합 기술 및 교육 Needs 반영</p>
                </h5>
                
                <ul class="listType2">
                	<li>정보기술의 발달로 PMIS는 대부분 건설관련 회사의 기본 시스템으로 정착했을 뿐만 아니라 대형 건설공사에서는 필수적인 정보교환 수단이 되고 있으며, 리모트 센싱 기술, 유비쿼터스 기술, Building Information Modeling 등은 상용화 수준을 넘어 글로벌 시장에서 요구하는 필수적 기술로 진화</li>
                    <li>따라서 차세대 엔지니어를 위한 교육에서는 이러한 High-Tech 기술을 운용할 수 있는 역량과 일반 엔지니어링 업무에 적용할 수 있는 역량, 기존의 기술을 바탕으로 새로운 기술을 창출할 수 있는 역량 개발 필요</li>
                    <li>이러한 동향과 Needs를 철저히 분석하여 교과과정 및 교육내용 개선에 반영하고, 특히 비교과과정 등을 활용하여 외부환경 변화에 접할 수 있는 기회를 확충하는 한편, High-Tech 융·복합 분야로 진로를 모색하는 학생들을 위해 관련 공학분야의 교과목을 전공과목으로 편입시키는 등(Cross Listing 활용) 교과과정의 다양화 모색</li>
                </ul>
                
                
                <div class="ml20 mt20">
                	<img src="../images/feature/4dia_engineering01.gif" alt="" class="img100">
                </div>
                
                
                <h5 class="titDepth2">
                	<p>교과목 체계 구축의 우수성</p>
                </h5>
                
                <ul class="listType2">
                	<li>건축ㆍ토목공학부 교과과정 모델에 따른 공통-심화 영역의 교과목 편성</li>
                    <li>심화과정 유형에 구분없이 전공과목 선택이 가능한 오픈형ㆍ학생중심의 전공 교과과정 운영 : 건축공화 심화과정 선택ㆍ토목 전공 교과목 수강 / 토목공학 심화과정 선택ㆍ건축 전공 교과목 수강</li>
                    <li>공학인증체계에 의한 철저한 로드맵 관리</li>
                    <li>타 학과 및 학역의 개설과목 전공 인정(Cross Listing)</li>
                    <li>각 심화과정 속에 세부 전공 Track을 설정하여 학생들 진로선택에 기여 : 건축구조, 환경ㆍ설비, 시공ㆍ건설관리, 토목구조ㆍ지반공학, 건설 ITㆍ지리정보, 수ㆍ환경공학 등)</li>
                    <li>산업의 Needs와 High-Tech 융ㆍ복합 기술 관련 교과목 개설(확대 예정)</li>
                    <li>건축통합설계, 사회기반시스템설계, 다학제융합종합설계 등 Capstone Design 교과목의 내실 운영</li>
                    <li>학ㆍ석 통합교과목 운영을 통한 상위 수준의 전공교육 기회 부여</li>
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