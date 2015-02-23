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
                        <li><a href="/feature/ischool01.do">목표와 교육비전</a></li>
                        <li><a href="/feature/ischool02.do">교과과정</a></li>
                        <li><a href="/feature/ischool03.do" class="on">비교과과정</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>비교과 캠프</p>
                </h4>
                <p>
                데이터전문가 양성을 위한 초석으로 방학 중 이슈캠프, 통계/코딩캠프, 글로벌캠프를 실시 운영중
                </p>
                
                
                <!-- 이슈캠프(전공 강화 세미나)  -->
                <dl class="imgtxtBox2">
                	<dt><img src="../images/feature/3pic_ischool01.jpg" alt="" class="img100"></dt>
                    <dd>
                    	<h5 class="titDepth2 mt0">
                            <p>이슈캠프(전공 강화 세미나)</p>
                        </h5>
                    	<ul class="listType1">
                            <li>문헌정보학 및 데이터사이언스 전공관련 주제를 선정하여 학생들이 주체가 되어 세미나와 토론을 진행함으로써 보다 현실적이고 경험적인 교육을 실현하고자 함</li>
                            <li>학기 중 진행되던 학술적 교류를 방학 중에도 이어나갈 수 있는 시간을 마련해 줌으로써 학생들간의 학술교류의 단절을 방지하고 단순한 지식을 전달하는 자리를 넘어 서로의 의견을 공유하기 위한 목적</li>
                            <li>학생들의 일반적인 강의실 내 학술교류에서 탈피하여 학습 분위기 환기 및 학생들 간의 친목 도모 </li>
                            <li>2015년 제1회 이슈캠프 주제: Open Access, Internet of things</li>
                        </ul>
                    </dd>
                </dl>
                <!-- //이슈캠프(전공 강화 세미나)  -->
                
                <!-- 코딩캠프 / 통계캠프  -->
                <dl class="imgtxtBox">
                	<dt><img src="../images/feature/3pic_ischool02.jpg" alt="" class="img100"></dt>
                    <dd>
                    	<h5 class="titDepth2 mt0">
                            <p>코딩캠프 / 통계캠프</p>
                        </h5>
                    	<ul class="listType1">
                            <li>학생들의 요구에 따른 캠프 과목 설정과 전공 전문성 강화를 위한 체계적인 수업진행 </li>
                            <li>학기 중 다루지 못했던 전공 관련 영역 학습을 통한 기초역량강화 및 전공 이해도 증진 목적</li>
                            <li>해당 분야 전문가의 심도 있는 강의 진행을 통한 학생들의 수업 이해도 및 활용 능력 배양</li>
                            <li>2015 캠프 과목: 기초통계 / R-Programming</li>
                        </ul>
                    </dd>
                </dl>
                <!-- //코딩캠프 / 통계캠프  -->
                
                <!-- 글로벌 캠프  -->
                <dl class="imgtxtBox2">
                	<dt><img src="../images/feature/3pic_ischool03.jpg" alt="" class="img100"></dt>
                    <dd>
                    	<h5 class="titDepth2 mt0">
                            <p>글로벌 캠프</p>
                        </h5>
                    	<ul class="listType1">
                            <li>미국에 소재되어 있는 명문 대학의 iSchool 과정을 학생들이 직접 경험해볼 수 있는 기회 및 학술적 교류 제공</li>
                            <li>Microsoft 와 Tableau 등 유명 해외 기업의 본사 견학을 통해 학생들의 시야 확대 및 글로벌마인드 형성에 도움</li>
                            <li>관광명소 방문 및 체험을 통한 다양한 예술 및 문화활동을 경험</li>
                        </ul>
                    </dd>
                </dl>
                <!-- //글로벌 캠프  -->
                
                
                
                
                
                
                
                <h4 class="titDepth1">
                	<p>2015 동계 글로벌 데이터사이언스 캠프 참가학생 인터뷰 동영상 </p>
                </h4>
                
                <div class="ischoolMovie">
                <iframe width="800" height="450" src="https://www.youtube.com/embed/AkRCsKp5-mg" frameborder="0" allowfullscreen></iframe>
                </div>
                
                <div class="mt20">
                	<img src="../images/feature/3pic_ischool05.jpg" alt="" class="img100">
                </div>
                
                
                
                
                <h4 class="titDepth1">
                	<p>iSchool Distinguished Lecture Series</p>
                </h4>
                <p>
                문헌정보학과 데이터 사이언스 분야의 세계적인 연구자, 현장 및 실무 전문가의 강연을 통해 학생들에게 동기부여를 하기 위해 연 6회 이상의 특강을 진행
                </p>
                
                <p class="font18black mt20">
                - 2014년 하반기 iSchool Distinguished Lecture 
                </p>
                
                <!-- iSchool Distinguished Lecture  start -->
            	<div class="writeType2 mt10">
                <table summary="iSchool Distinguished Lecture  내용">
                <caption>iSchool Distinguished Lecture  내용</caption>
                    <colgroup>
                        <col style="width:20%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">9월 19일(금)</th>
                            <td>
                            	<ul class="listType1">
                                	<li>Il-Yeol Song, Ph.D. Professor, College of Computing & Informatics, Drexel University <br>Big Data Technologies, Use Cases, and Research Issues</li>
                                </ul>
							</td>
                        </tr>
                        <tr>
                            <th scope="row">10월 28일(화)</th>
                            <td>
                            	<ul class="listType1">
                                	<li>Dr. Kathleen Burnett. Director, iSchool, Florida State University<br>The Role of U.S. Public Libraries in Early Literacy Development</li>
                                    <li>Dr. Gary Burnett. Professor, iSchool, Florida State University<br>Information Worlds: Theory to Practice</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">11월 27일(목)</th>
                            <td>
                            	<ul class="listType1">
                                	<li>구방본 이사 (SAS Korea).<br>Big Data 분석의 성공 사례와 Data Sientist 전망</li>
                                </ul>
							</td>
                        </tr>
                        <tr>
                            <th scope="row">12월 8일(월)</th>
                            <td>
                            	<ul class="listType1">
                                	<li>이창한 (현) 국회전문위원, 전 국가과학위원회 사무처장, 전 미래부 기획실장<br>ICT와 Big Data 관련 정부 정책 방향</li>
                                </ul>
							</td>
                        </tr>
                        <tr>
                            <th scope="row">11월 27일(목)</th>
                            <td>
                            	<ul class="listType1">
                                	<li>노규성 교수. 선문대학교. 한국디지털정책학회 회장.<br>빅데이터 분석사 자격검정제도와 인력 양성</li>
                                </ul>
							</td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //iSchool Distinguished Lecture  end -->
                
                
                
                <ul class="img2 mt20">
                	<li><img src="../images/feature/3pic_ischool06.jpg" alt="" class="img100"></li>
                    <li><img src="../images/feature/3pic_ischool07.jpg" alt="" class="img100"></li>
                </ul>
                
                <h4 class="titDepth1">
                	<p>특성화 사업 성공적 수행을 위한 지원방안</p>
                </h4>
                <p>
                성균관대 문헌정보학과는 이번 특성화 사업을 충실하고 또 성공적으로 추진함으로써 무엇보다 학생들이 보다 전문적이고 융합적인 교육을 경험하고 졸업 후 본인이 원하는 커리어를 갖는데 도움을 주고자 함.
                </p>
                
                <ul class="listType1 mt20">
                    <li>인력 부분에 대해서 문헌정보학과는 2018년까지 3명의 전임교원을 신규 채용 예정이며 현재 전임교원 강의비율 53.8%를 2/3 (67%) 수준으로 높일 계획</li>
                    <li>특성화 분야 영어강의 비율이 현재 약 44%인데 데이터 사이언스 분야 영어강의 비율을 약 60% 수준으로 확대하고자 함</li>
                    <li>데이터 사이언스 전공 및 비교과과정의 지원 및 학생 중심 상담과 취업 지원을 하기 위해 박사급 전문인력을 채용하여 대학 본부 차원의 대학교육혁신센터의 Creative Office에서 iSchool의 데이터 사이언스 프로그램을 전담하여 대학 내의 다양한 융합교육 프로그램 및 행정 지원 부서와의 협력을 통해 학생 중심의 교육 및 진로지도가 수행될 수 있도록 할 것. </li>
                    <li>현재 문헌정보학과 컴퓨터 실습실의 기기를 2015년 초까지 전면 교체하고 보다 고도화되고 이용자 친화적인 환경을 갖출 계획</li>
                    <li>학부 학생들이 다양한 실험 및 연구 프로젝트에 참여할 수 있는 학과내 소규모 Lab을 만들고, 취업 지원을 위한 문헌정보학과만의 프로그램(멘토링 및 특화 인턴십 프로그램)을 시작할 예정</li>
                </ul>
                
                
                <div class="mt20">
                	<img src="../images/feature/3dia_ischool01.gif" alt="" class="img100">
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