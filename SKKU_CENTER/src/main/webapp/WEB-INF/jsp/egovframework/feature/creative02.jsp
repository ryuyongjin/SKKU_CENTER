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
                        <li><a href="/feature/creative02.do" class="on">비전/목표/전략</a></li>
                        <li><a href="/feature/creative03.do">성균교육 3.0</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>추진체계</p>
                </h4>
                
                <div class="ml20">
                	<img src="../images/feature/2dia_creative01.gif" alt="" class="img100">
                </div>
                
                
                <h4 class="titDepth1">
                	<p>비전</p>
                    <span>: 창조경제를 견인할 Sungkyun Creative Informatics 인재 양성</span>
                </h4>
                
               
                <ul class="listType1">
                	<li>Sungkyun CI는 3가지 글로벌 이슈(일, 학습, 건강)에 대한 이해와 문제해결 능력을 겸비한 인재로서 자신의 전공분야에 대한 탁월한 전문성(Domain Expertise)을 바탕으로, 인포매틱스 분야를 포함한 다학제 분야를 횡단하는 창의ㆍ융합 경험을 통해 함양한 창의 역량, 융합 역량, 혁신 역량을 겸비한 글로벌 창조혁신 리더</li>
                    <li>Sungkyun CI는 학생중심 융합교육 플랫폼인 C-School의 창의융합 교육과정을 통해서 육성되며, 요구되는 역량을 갖출 경우 『Sungkyun CI 인증』수여</li>
                </ul>
                
                
                <h4 class="titDepth1">
                	<p>목표</p>
                    <span>: 융합 기반 지식생태계 구축과 개방형 융합교육 플랫폼(C-School) 창출</span>
                </h4>
                
                <ul class="listType1">
                	<li>융합 기반 지식 생태계 구축 : 학과 중심의 전공 몰입형 교육을 해결하기 위하여, 단일 혹은 다수의 학과가 공통의 교육목표와 인재상을 가지고 Sungkyun Creative Innovator를 양성하는 개방형 융합교육 플랫폼 구축</li>
                    <li>개방형 융합교육 플랫폼(C-School) :  『교내외 지식 공동체 구성원 모두가 지식의 생산과 소비에 참여하는 지식생태계ㆍ학습공간』으로 학생간, 학생-교수간 원활한 상호작용이 이루어지고, 학과간 칸막이가 없는, 지식의 중개소이자 발전소</li>
                </ul>
                
                
                <h4 class="titDepth1">
                	<p>전략</p>
                </h4>
                
                <p>
                Creative Informatics 인재 양성을 위한 학생중심 융합교육 플랫폼을 구현하기 위하여 ①학생중심 특성화 교육과정, ②교수학습방법 선진화, ③특성화교육 지원 인프라 구축, ④공유가치 창출과 사회기여를 4대 전략으로 설정
                </p>

                
                <dl class="creativeBox mt20">
                	<dt>01</dt>
                    <dd>
                    	<p>학생중심 교육과정 (꿈, 진로, 학습 연계)</p>
                    	<ul>
                        	<li>ㆍ특성화 요구에 부응하는 교육과정 개발 및 운영</li>
                            <li>ㆍ전공 전문성을 위한 교육의 질 제고</li>
                        </ul>
                    </dd>
                    
                    <dt>02</dt>
                    <dd>
                    	<p>교수학습방법 선진화 (특성화 역량 맞춤형 교육)</p>
                    	<ul>
                        	<li>ㆍ혁신적 교수학습 방법 개발</li>
                            <li>ㆍ효과적 학습과 전주기 진로 개발 연계</li>
                        </ul>
                    </dd>
                    
                    <dt>03</dt>
                    <dd>
                    	<p>특성화교육 지원 인프라 첨단화</p>
                    	<ul>
                        	<li>ㆍCI 인증 체제 구축ㆍ운영</li>
                            <li>ㆍ특성화 교육 지원 센터 운영</li>
                        </ul>
                    </dd>
                    <dt>04</dt>
                    <dd>
                    	<p>공유가치 창출과 사회기여</p>
                    	<ul>
                        	<li>ㆍ나눔ㆍ사회기여를 통한 교육의 책무성 강화</li>
                            <li>ㆍ융합교육의 新 모델 창출</li>
                        </ul>
                    </dd>
                </dl>
                
                
                

                
                
                




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