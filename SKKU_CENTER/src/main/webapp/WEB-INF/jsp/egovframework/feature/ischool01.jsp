<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 5 });
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
                <li>I-School 기반의 세계 최고 수준 데이터 전문가 양성 사업단</li>
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
            I-School 기반의 세계 최고 수준 데이터 전문가 양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/ischool01.do" class="on">목표와 교육비전</a></li>
                        <li><a href="/feature/ischool02.do">교과과정</a></li>
                        <li><a href="/feature/ischool03.do">비교과과정</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>특성화 3대 목표와 교육비전</p>
                </h4>
                
                <!-- 3대특성 박스 -->
                <dl class="objectBox mt20">
                    <dt>01</dt>
                    <dd>
                        <p>데이터 전문가(Sungkyun Data Scientist) 양성을 위한 학생중심 개방형 교육 플랫폼 구축</p>
                    </dd>
                    
                    <dt>02</dt>
                    <dd>
                        <p>데이터 전문가 양성을 위한 창의적 융합형 교육 플랫폼 구축 : Sungkyun CI@iSchool</p>
                    </dd>
                    
                    <dt>03</dt>
                    <dd>
                        <p>I-School 기반의 글로벌 표준 교육 프로그램 구현</p>
                    </dd>
                </dl>
                 <!-- //3대특성 박스 -->
                
                <div class="mt20">
                	<img src="../images/feature/1dia_ischool01.gif" alt="" class="img100">
                </div>
                
                
                
                
                
                <h5 class="titDepth2">
                	<p>학생중심 개방형 교육실시</p>
                </h5>
                
                <ul class="listType2">
                	<li>본 사업단은 데이터 전문가 양성을 위해 새로운 학과를 설립하는 대신, 성균관대학교 문헌정보학과를 중심으로 대학 내의 여러 학문분야와의 협력을 통해 개방형 융합교육플랫폼을 구축하여 연계전공으로 “데이터 사이언스” 트랙을 설치하고, 복수전공 학위 및 자격증(CI Certificate)을 수여하는 교육을 실현하고자 함</li>
                </ul>               
                
                
                
                <h5 class="titDepth2">
                	<p>창의적 융합형 교육실시</p>
                </h5>
                
                <ul class="listType2">
                	<li>연계전공 “데이터 사이언스” 트랙은 성균관대학교 문헌정보학과의 학과목뿐만 아니라 인접학문분야(통계학, 컴퓨터교육학, 소비자가족학, 독문학 등)의 학과목을 교과과정에 포함하는 학문융합형 플랫폼을 제공함으로써 다양한 사회적 적용 분야를 창조함</li>
                </ul>
                
                <h5 class="titDepth2">
                	<p>I-School 기반의 글로벌 표준교육 </p>
                </h5>
                
                <ul class="listType2">
                	<li>본 사업단의 iSchool 컨소시엄 가입을 토대로 회원교 간의 축적된 교육 연구 경험 및 인적자원의 공유를 지향하는 iSchool 컨소시엄 대학과의 교류를 극대화함</li>
                    <li>해외 iSchool 대학에서 IT의 사회적 응용 분야를 확산시키기 위하여 운영 중인 글로벌 표준의 “데이터 사이언스” 커리큘럼을 대폭 수용하는 교육 프로그램을 제공함</li>
                </ul>
                
                

                
                
                
                
                
                
                
                <!-- 데이터 사이언스 & 데이터 사이언티스트 설명 -->
                <table class="stepCon2">                	
                    <th>
                    	<h4 class="titDepth1 mt0">
                            <p>데이터 사이언스 & 데이터 사이언티스트</p>
                        </h4>
                        <p>
                        	데이터 사이언스란 공공, 산업, 민간분야에서 생산되는 데이터의 양이 폭발적으로 증가함에 따라 데이터 생태계 전반(생성•수집•분석 •활용•유통•저장)에 걸쳐 제기되는 문제를 해결하기 위한 과학적이고 체계적인 접근법을 연구하는 학문 분야이다. 
                        </p>
                        <p class="mt10">
                        	좁은 의미로는 데이터로부터 일반화된 지식을 추출해 의미 있는 정보를 발견하고 새로운 가치를 만들어 내기 위한 과학적인 접근법을 연구하는 학문 분야라고 할 수 있다. Syracuse 대학의 데이터 사이언스 교육 프로그램의 정의에 따르면 데이터 전문가란 데이터의 공유를 위해 데이터를 수집, 분석, 설계, 보존하는 전문적인 지식과 기술을 보유한 사람을 의미한다. 데이터 분석과 관리는 법/정책, 보건의료, 생명/환경, 산업/경제, 사회/복지, 방송, 문화/스포츠, 연구개발 등 사회의 모든 분야에서 필요로 하는 기술이다. 
                        </p>
                        <p class="mt10">
                        	구체적으로는 소셜데이터, 학술연구 데이터, 의료•건강 데이터, 빅데이터, 데이터 큐레이션(data curation) 분야 등에 관한 전문인력을 통칭하는 것으로 이해할 수 있다.
                        </p>
                    </th>
                    <td><img src="../images/feature/1dia_ischool06.gif" alt="" class="mt20"></td>
                </table>
                <!-- //데이터 사이언스 & 데이터 사이언티스트 설명 -->
                
                
                
                
                <h4 class="titDepth1">
                	<p>“데이터 사이언스”의 필요성</p>
                </h4>
                
                <p>
                공공, 산업, 민간분야에서 생산되는 데이터의 양이 폭발적으로 증가함에 따라 데이터 생태계 전반(생성, 분석, 활용)에 걸쳐 제기되는 문제를 해결하기 위한 과학적이고 체계적인 접근법이 요구되고 있으며, 이러한 문제를 해결할 수 있는 전문가의 수요가 급증하고 있다.(Harvard Business Review (Oct. 2012) - Data Scientist: The Sexiest Job of the 21st Century / Meet the people who can coax treasure out of messy, unstructured data (by Thomas H. Davenport and D.J. Patil)
                </p>
                
                <p class="mt20">
                전세계적으로 데이터(분석) 전문인력 수급은 현재 극심한 불균형 상태를 보이고 있으나, 국내 대학의 경우 데이터를 수집, 분석, 관리, 저장하는 데이터 전문가를 양성하는 학과가 없으며, 해외에서도 일부 대학에서 학사 및 석사과정을 신설해가고 있는 상황이다. 이러한 현재에서 우리 대학에서 오늘날의 기술, 산업, 직업 환경 변화에 초점을 맞춰 새롭게 포지셔닝(new branding)한 데이터 전문인력 교육과정 모형을 제공할 경우 국내에서의 데이터 전문가 교육 및 연구의 아젠다를 선도할 수 있을 것이다.
                </p>
                
                <p class="mt20">
                우리 대학의 경우 관련 학과의 신설보다는 대학 내의 가용 자원을 최대한 활용하여 새롭게 브랜딩(new branding)하는 연계전공이 효율적일 것이며, 특히 수도권특성화 사업의 국가지원 분야로 선정된 문과대학 문헌정보학과를 중심으로 개설할 경우 인문사회 캠퍼스 학생들의 취업 기회 확대와 진로의 다양성 확보에 많은 효과가 있을 것으로 기대하고 있다. 급증하고 있는 데이터 전문가 수요에 부응하고 새로운 글로벌 시장 기회를 선점하는데 기여할 수 있는 교육 과정의 개설 필요성은 매우 크다고 할 수 있다.
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