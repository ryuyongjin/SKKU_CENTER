<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 4 });
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
                <li>글로벌 유학 창의인재 양성 사업단</li>
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
            글로벌 유학 창의인재 양성 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/confucianism01.do">교육비전 및 목표</a></li>
                        <li><a href="/feature/confucianism02.do">교육목표 및 인재상, 교육 역량</a></li>
                        <li><a href="/feature/confucianism03.do" class="on">추진전략</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>추진전략</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>교육과정 구성</p>
                </h5>
                
                <div class="mt20">
                	<img src="../images/feature/3dia_confucianism01.gif" alt="" class="img100">
                </div>
                
                
                <h5 class="titDepth2">
                	<p>세부 추진 계획</p>
                </h5>
                
                <div class="mt20">
                	<img src="../images/feature/3dia_confucianism02.gif" alt="" class="img100">
                </div>
                
				<p class="titDepth3 ml20">1) ‘응용유학(Applied Confucianism)’ 교육과정 신설</p>
                <ul class="listType2">
                	<li>유학과 인간 본성론<br> - 유학의 인간 본성에 대한 이론들을 서양의 인간본성론과의 비교를 통해 검토하고, 그것이 가지는 사회ㆍ정치적 의미 탐색</li>
                    <li>동서양의 생명윤리<br> - 생명윤리에 대한 현대 서양의 관점이 동아시아 문화권에 얼마나 적용될 수 있는지 탐색</li>
                    <li>『논어』와 창의인성교육<br> - 창의인성과 관련된 풍부한 이론과 현실적 사례를 담고 있는 『논어』를 기본 텍스트로 삼아, 창의인성 교육의 모델 탐색</li>
                    <li>유학과 경영<br> - 현대의 경영학이 기술적인 면으로만 흘러 인간에 대한 배려나 사회에 대한 의식이 옅어지는 문제점에 대해 유학을 통해 바른 방향 모색</li>
                </ul>
                
                <p class="titDepth3 ml20">2) 글로벌 역량 육성을 위한 교육과정</p>
                
                
                
                
                
                
                <!-- 게시판 -->
                <div class="tblType1 ml20">
                <table summary="글로벌 역량 교육과정 구성 목록">
                <caption>글로벌 역량 교육과정 구성 내용</caption>
                	<colgroup>
                        <col style="width:12%" >
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">단계</th>
                            <th scope="col">글로벌 역량 교육과정 구성</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1단계</td>
                            <td class="subject">
                                <p class="titDepth3 mt0">2학년 진입생 대상. 준비 단계</p>
                                <ul class="listType1">                                
                                    <li>영어 및 중국어 트랙 중 택 1하여 이에 대한 집중적인 훈련을 유도</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>2단계</td>
                            <td class="subject">
                                <p class="titDepth3 mt0">2학년 1학기. 예비 국제어 수업</p>
                                <ul class="listType1">                                
                                    <li>유교 경전과 유교 철학에 대한 기초 교육을 통한 국제어 수업 준비</li>
                                    <li>선택한 외국어 트랙에 따라 유교 경전 및 유교 철학 원전을 한국어 번역본과 함께 영어 중국어 번역본을 비교 분석하면서 강독</li>
                                    <li>유학의 기초 개념을 영어 및 중국어로 이해하는 기회를 가짐으로써 외국어 독해 능력 향상뿐만 아니라 한국어 번역을 통해서는 이해할 수 없었던 텍스트와 개념의 의미에 대해 보편적 시각에서 접근하는 기회를 가짐</li>
                                    <li>이를 기초로 수업 중 절반은 토론 수업으로 진행함으로써 유학 원전에 대한 창의적 해석 능력을 배양 </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>3단계</td>
                            <td class="subject">
                                <p class="titDepth3 mt0">2학년 2학기 및 3학년 1학기. 본격적 국제어 수업</p>
                                <ul class="listType1">                                
                                    <li>각 학기 당 영어 및 중국어로 진행되는 국제어 수업을 각 3과목 총 6과목을 개설 계획</li>
                                    <li>각 과목은 해당 국제어로 진행되는 강의식 수업과 학생들 간의 국제어로 발표와 토론을 진행하는 토론식 수업으로 구성</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                
                
                <p class="titDepth3 ml20">3) 기초 역량 육성을 위한 교육과정</p>
                <ul class="listType2">
                	<li>예비 신입생을 위한 전공 캠프</li>
                </ul>
                
                
                <!-- 게시판 start -->
            	<div class="writeType2 ml20">
                <table summary="기초 역량 육성을 위한 교육과정 목록">
                <caption>기초 역량 육성을 위한 교육과정 정보</caption>
                    <colgroup>
                        <col style="width:12%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">교육대상</th>
                            <td>
                            	<ul class="listType1">
                                    <li>전공예약제 신입생 전원 및 2, 3학년 재학생 중 일부, 그리고 소속 교수 전원</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육기간</th>
                            <td>
                            	<ul class="listType1">
                                    <li>2월 중순 2박 3일</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육장소</th>
                            <td>
                            	<ul class="listType1">
                                    <li>성균관대학교 자연과학캠퍼스</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육내용</th>
                            <td>
                            	<ul class="listType1">
                                    <li>전공 예약제 신입생 및 2, 3학년을 대상으로 매년 겨울방학기간 동안 예비 신입생과 재학생들을 대상으로 겨울 방학 기간에 수원 소재 본교 자연과학캠퍼스에서 전공 캠프</li>
                                    <li>신입생들에게 강연과 토론회를 통해 앞으로 대학생활의 전체적 로드맵을 제시하고, 선배 및 교수와의 소통의 시간을 통해 개별적인 관심과 학교 및 학과 제도 간의 조화를 도모</li>
                                    <li>점차적으로 신입생의 학교 소속감 증대, 신입생과 재학생간의 유대감 강화, 그리고 학생과 교수 간의 소통의 증대라는 효과확인</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 end -->
                
                
                
                <ul class="listType2 mt20">
                	<li>유학 기반 교육 강화 <br>- 유학 기초 입문</li>
                </ul>               
                
                <!-- 게시판 start -->
            	<div class="writeType2 ml20">
                <table summary="유학 기반 교육 목록">
                <caption>유학 기반 교육 정보</caption>
                    <colgroup>
                        <col style="width:12%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">교육대상</th>
                            <td>
                            	<ul class="listType1">
                                    <li>1학년 신입생</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육목적</th>
                            <td>
                            	<ul class="listType1">
                                    <li>본 학과의 신입생 정원은 입학당시 전공예약제로 본 학과를 선택한 30명과 2학년 진입시 본 학과를 선택한 30명으로 구성, 본 사업단 출범을 계기로 학부대학과의 합의하에 본 학과가 전공예약제 학생들에게 유학 기초 교육을 실행할 수 있는 방안을 다음과 같이 마련</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">대상교과목</th>
                            <td>
                            	<ul class="listType1">
                                    <li>성균 프레시맨 세미나 : 1학점짜리 수업으로 학생들에 교과목을 수업하는 대신 폭넓은 경험의 기회를 제공하기 위해 학부대학에서 마련한 제도, 본 사업단은 이 프로그램을 1학년 신입생들에 대한 전반적인 상담 및 관리의 창으로 활용할 것임.</li>
                                    <li>동양학 고전읽기 : 현재 학부대학에서 관리하는 교양과목으로 이를 활용해 유가의 기초 경전인 사서(四書)에 대한 기초적인 교육을 시행.</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 end -->
                
                
                <p class="mt20 ml20">- 예비 국제어 수업</p>
                
                <!-- 게시판 start -->
            	<div class="writeType2 ml20">
                <table summary="예비 국제어 수업 목록">
                <caption>예비 국제어 수업 정보</caption>
                    <colgroup>
                        <col style="width:12%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">교육대상</th>
                            <td>
                            	<ul class="listType1">
                                    <li>2학기 1학기 재학생</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육목적</th>
                            <td>
                            	<ul class="listType1">
                                    <li>2학년 2학기부터 시행되는 본격적인 국제어수업에 대비하여, 유학 경전 및 유교 철학 기초 문헌에 대한 교육을 한국어 번역과 영어 및 중국어 번역과의 대조하여 독해하게 함으로써 학생들로 하여금 글로벌 교육에 입문하기 위한 발판을 마련하도록 함. 아울러 이 과정은 학생들은 2학년 2학기부터 진행되는국제어 수업에서 영어 및 중국어 트랙을 선정하는 기준이 될 것임.</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">대상교과목</th>
                            <td>
                            	<ul class="listType1">
                                    <li>경전 독해 과목 : 동아시아철학원전강독기초, 논어, 맹자</li>
                                    <li>한국철학 및 동양철학 기초 과목 : 중국철학상사, 한국철학사상사, 주자학의세계, 논쟁으로보는 한국성리학</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 end -->
                
                
                <p class="mt20 ml20">- 유학 경전 및 유교 철학 심화 과정</p>
                
                <!-- 게시판 start -->
            	<div class="writeType2 ml20">
                <table summary="유학 경전 및 유교 철학 심화 과정 목록">
                <caption>유학 경전 및 유교 철학 심화 과정 정보</caption>
                    <colgroup>
                        <col style="width:12%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">교육대상</th>
                            <td>
                            	<ul class="listType1">
                                    <li>3학기 2학기 ~ 4학년 2학기</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">교육목적</th>
                            <td>
                            	<ul class="listType1">
                                    <li>유학 및 동양철학 대학원 진학을 목표로 하는 학생들을 중심으로 유학의 경전 및 철학에 대한 심화과정을 개설함으로써 3학년 1학기까지 사서(四書)와 유학 철학 기초 및 응용유교학 기초로 이루어진 강의 교과목을 기반으로 3학년 2학기부터는 유교의 시경(詩經), 서경(書經), 역경(易經)과 중국 성리학 및 한국 성리학, 기타 동양 철학에 대한 깊이 있는 교육과정을 제공</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">대상교과목</th>
                            <td>
                            	<ul class="listType1">
                                    <li>경전 독해 과목 : 시경ㆍ서경, 주역, 예기ㆍ춘추</li>
                                    <li>한국철학 심화 과목 : 한국유학사, 한국윤리사상, 한국실학과근대사상</li>
                                    <li>동양철학 심화 과목 : 중국유학사, 선진유학의이해, 조장철학과선진제자담론, 양명학의세계, 청대실학과근대사상</li>
                                    <li>기타 심화 과목 : 동서비교윤리학, 중국미학사, 한국미학사, 한류와유교문화, 동아시아예술과대중문화</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 end -->
                
                
                
                
                <p class="titDepth3 ml20">4) 인성 함양 체험 교육과정</p>
                <ul class="listType2">
                	<li>유학 인성 체험 프로그램<br>
	                    <p>- ‘도덕 감성 자각과 확충’의 교육 방법을 통한 ‘실천 역량 배양’</p>
                        <p>- 교육 단계</p>
                        <p class="ml20">: 몸과 마음의 정화 단계 → 도덕 감정의 자각에 의한 도덕 원리의 체득 단계 → 도덕 감정의 확충 단계(교감empathy, 공감sympathy, 인(仁)과 서(恕)의 실천</p>
                        <p>- 교육 방법</p>
                        <p class="ml20">: 정좌(靜坐), 관찰(觀察), 독서(讀書), 예(禮)의 실천</p>
                    </li>
                </ul>
                
                
                <ul class="img2">
                	<li><img src="../images/feature/3pic_confucianism01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/feature/3pic_confucianism02.jpg" alt="" class="img100"></li>
                </ul>
                
                
                <ul class="listType2 mt20">
                	<li>한국 유교문화 Field Trip<br>
	                    <p>- 성균관 및 향교ㆍ서원 등 유교기관과의 교류 및 MOU를 통해 학생들의 전통문화 체험, 전통사상 학습의 기회를 제공하며, 재학생을 대상 매학기 방학 때 진행</p>
                    </li>
                </ul>
                
                
                <ul class="img2">
                	<li><img src="../images/feature/3pic_confucianism03.jpg" alt="" class="img100"></li>
                    <li><img src="../images/feature/3pic_confucianism04.jpg" alt="" class="img100"></li>
                </ul>
                
                <ul class="listType2 mt20">
                	<li>글로벌 캠프<br>
	                    <p>- 1학년에서 2학년으로 진입하는 전공진입생 전원을 대상으로 유학의 원류를 몸소 체험하게 하기 위해 겨울방학 기간 동안 중국을 방문</p>
                        <p>- 유학 전공에 따르는 사명감과 역사의식을 환기시키고 앞으로의 진로에 대해 한걸음 더 진지하게 고민하는 중요한 인생의 전환점을 경험하게 하는 기회 제공</p>
                    </li>
                </ul>
                
                <ul class="img2">
                	<li><img src="../images/feature/3pic_confucianism05.jpg" alt="" class="img100"></li>
                    <li><img src="../images/feature/3pic_confucianism06.jpg" alt="" class="img100"></li>
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