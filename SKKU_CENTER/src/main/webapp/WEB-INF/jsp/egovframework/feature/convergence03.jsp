<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 2 });
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
                <li>창의적 융복합 소재 및 공정 특성화 사업단</li>
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
            창의적 융복합 소재 및 공정 특성화 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/convergence01.do">교육비전</a></li>
                        <li><a href="/feature/convergence02.do">교육목표</a></li>
                        <li><a href="/feature/convergence03.do" class="on">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교과과정 구성 및 운영</p>
                </h4>
                
                <!-- 회색박스 -->
                <div class="grayBox">
                	<ul class="listType1">
    	            	<li>본 사업단은 융복합화, 글로벌화, 현장중심 교육 목표에 따라 미래 융복합 소재 및 공정 분야에서 글로벌 경쟁력을 갖춘 인재를 육성하고 배출하기 위한 교육과정을 구성하고 운영함. </li>
                        <li>공학인증과 연계하여 다음 두 가지 교과과정 이수 시 융복합 소재 분야의 글로벌 인재로 인정하는 Sungkyun CI@Materials 인증을 부여함.</li>
	                </ul>
                    
                    <div class="grayBoxcon">
                        <dl>
                            <dt>현장밀착형 명품인재</dt>
                            <dd>= 공학인증 + 융복합소재실험 (2과목) + 융복합기초교과목 (2과목) + 산업별 복합소재응용 (4과목) + (글로벌) 현장실습</dd>
                        </dl>
                        <dl class="bn">
                            <dt>글로벌 창의인재</dt>
                            <dd>= 공학인증 + 융복합소재실험 (3과목) + 융복합기초교과목 (1과목) + 산업별 복합소재응용 (2과목) + 팀연구학점제 + 융복합소재 (학석연계 1과목)</dd>
                        </dl>
                    </div>

                </div>
                <!-- //회색박스 -->
                
                
                <h5 class="titDepth2">
                	<p>Sungkyun CI@Materials 교과과정 구성</p>
                </h5>

                
                <div class="mt20 mb20">
	                <img src="../images/feature/3dia_convergence01.gif" alt="" class="img100">
                </div>
                
                
                <!-- 게시판 start -->
            	<div class="tblType1 mt20">
                <div class="tblTypebar">Sungkyun CI@Materials 프로그램의 교과과정 및 비교과과정 내용</div>
                <table summary="프로그램의 교과과정 및 비교과과정 내용 게시판">
                <caption>프로그램의 교과과정 및 비교과과정 내용 정보</caption>
                    <colgroup>
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <td rowspan="2" class="bright">Global</td>
                            <td>교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>SKKU Fellow Professor 학석연계 과목 <br>-외국인 석학교수를 활용한 융합윤강강좌 개발</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>비교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>글로벌 문화이해<br> -GCTI 글로벌 캠프</li>
                                    <li>Global 학부생 파견<br> -SKKU Distinguished Faculty Board Member 활용한 글로벌 교육</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bright">Convergence</td>
                            <td>교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>신소재공학부+화학공학부 양학부 융합전공교과목 10과목 신설<br>
                                      - 산업별 융복합 소재: 나노, 바이오, 에너지, 디스플레이, 인쇄공정<br>
                                      - 융복합 교과목: 복합소재개론, 융합공정개론<br>
                                      - 융복합 실험실습: 융복합기초실험, 융복합응용실험, 융복합종합설계</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>비교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>융복합 소재/공정 디자인 캠프<br> -MATLAB/LABVIEW 등 공학기본지식 실습강좌</li>
                                    <li>GCTI 융합비전캠프</li>
                                    <li>GCIT 창의연구 프로젝트 수행 <br>  -지속가능성, 건강증진, 위험감소분야에 12대 과제</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bright">Humanity</td>
                            <td>교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>성균인성 교과목 <br>  -창업, 특허, 기술경영 교육 포함</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>비교과과정</td>
                            <td>
                                <ul class="listType1">
                                    <li>SKKU Engineering Leadership Program<br>  -Career development & Leadership seminar</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 end -->
                
                
                <h5 class="titDepth2">
                	<p>융복합 소재 인력교육을 위한 교육과정 계획</p>
                </h5>
                
                <ul class="listType2">
                	<li>기확립된 공학인증 프로그램을 기반으로 하여 미래 융복합 소재 및 공정 분야에서 글로벌 경쟁력을 갖춘 ‘현장밀착형 명품인재’ 및 ‘글로벌 창의인재’(Sungkyun CI@Materials)를 육성하기 위해 미래 융복합 소재 관련 새로운 교과목과 실험실습 교과목 신규 편성</li>
                    <li>본 사업단이 지향하는 글로벌, 융복합, 인성을 갖춘 인재 양성을 위하여 다양한 비교과과정 편성ㆍ운영</li>
                    <li>융복합소재 분야의 Sungkyun CI인증을 위한 과목으로 2개의 기초과목과 5개의  미래 융복합 소재 핵심 분야에 관한 교과목을 개발하고 양학부의 교수진이 팀으로 강의</li>
                    <li>융복합 기초과목(2) : 복합소재개론, 융합공정개론</li>
                    <li>산업별 융복합 소재 교과목(5) : 디스플레이소재, 에너지소재, 인쇄공정, 바이오소재, 나노신소재</li>
                    <li>융복합소재관련 실험과목 2개(융복합기초실험, 융복합응용실험)를 신설하고 융복합 소재공정 종합설계를 신설하여 두 학부 학생 및 외부학생이 팀을 이루어 수강함으로써 융합적 사고를 통한 새로운 문제 도출과 창의적 문제해결능력 함양</li>
                    <li>비교과과정은 글로벌 창의인재와 현장밀착형 명품인재 양성에 적합한 과정으로 구성 : GCTI 융합비전캠프 및 창의 연구 프로젝트 수행, GCTI 글로벌 캠프, SKKU 공학 리더쉽 프로그램, 글로벌 학부연구생 제도 운영</li>
                </ul>
                
                
                <h4 class="titDepth1">
                	<p>Sungkyun CI@Materials 인증제 도입</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>인증 기준</p>
                </h5>
                
               
                
                
                <!-- 게시판 -->
                <div class="tblType1">
                <div class="tblTypebar">Sungkyun Cl@Materials 인증 기준</div>
                <table summary="명품인재 목록">
                <caption>명품인재 목록</caption>
                	<colgroup>
                        <col style="width:15%">
                        <col style="width:40%">
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">구  분</th>
                            <th scope="col">현장밀착형 명품인재 </th>
                            <th scope="col">글로벌 창의인재 </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>교과내용</td>
                            <td class="subject">공학인증 + 융복합소재실험 (2과목) + 융복합기초교과목 (2과목) + 산업별 복합소재응용 (4과목) + (글로벌) 현장실습</td>
                            <td class="subject">공학인증 + 융복합소재실험 (3과목) + 융복합기초교과목 (1과목) + 산업별 복합소재응용 (2과목) + 팀연구학점제 + 융복합소재 (학석연계 1과</td>
                        </tr>
                        <tr>
                            <td>이수학점</td>
                            <td class="subject">교과과정 24학점 <br>(비교과과정 3학점)</td>
                            <td class="subject">교과과정 24학점 <br>(비교과과정 3학점)</td>
                        </tr>
                        <tr>
                            <td>졸업 후 진로</td>
                            <td class="subject">취업 및 창업</td>
                            <td class="subject">대학원 진학</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                <h5 class="titDepth2">
                	<p>인증 이수 절차</p>
                </h5>
                
                
                <!-- 게시판 -->
            	<div class="tblType1">
                <div class="tblTypebar">Sungkyun Cl@Materials 이수 절차</div>
                <table summary="인증 이수 절차 목록">
                <caption>인증 이수 절차 목록</caption>
                	<colgroup>
                        <col style="width:5%">
                        <col style="width:10%">
                        <col style="width:40%">
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th colspan="2" scope="col">구  분</th>
                            <th scope="col">현장밀착형 명품인재 </th>
                            <th scope="col">글로벌 창의인재 </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="2" class="bright">이수<br>절차</td>
                            <td>2학년</td>
                            <td class="subject" colspan="2">Sungkyun CI@Materials 진입 융복합 기초실습</td>
                        </tr>
                        <tr>
                            <td>3-4학년</td>
                            <td class="subject">
                            	<ul>
                                    <li>융복합소재실험 (1과목)</li>
                                    <li>융복합기초교과목 (2과목)</li>
                                    <li>산업별 복합소재응용 (4과목)</li>
                                    <li>(글로벌) 현장실습 (1과목)</li>
                                </ul>
							</td>
                            <td class="subject">
                            	<ul>
                                    <li>융복합소재실험 (3과목)</li>
                                    <li>융복합기초교과목 (1과목)</li>
                                    <li>산업별 복합소재응용 (2과목)</li>
                                    <li>팀연구학점제 (1과목)</li>
                                    <li>융복합소재 (학석연계 1과목)</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                
                
                <ul class="listType2 mt20">
                	<li>위 이수절차를 따라 Sungkyun CI@Materials 인증을 취득</li>
                    <li>본인이 결정한 전공인 화학공학 혹은 신소재공학 학사학위 증명서와 융복합 소재 및 공정 교과과정 수료에 대한 인증서를 복수로 취득</li>
                    <li>이들 성균 CI는 성대의 대표적인 교육모델로서, 기존의 대표 모델인 삼품제를 넘어서는 글로벌 표준을 제시할 수 있을 것으로 기대</li>
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