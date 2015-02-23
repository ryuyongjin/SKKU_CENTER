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
                        <li><a href="/feature/confucianism02.do" class="on">교육목표 및 인재상, 교육 역량</a></li>
                        <li><a href="/feature/confucianism03.do">추진전략</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교육목표 및 인재상, 교육 역량</p>
                </h4>
                
                
                
                <!-- 게시판 -->
                <div class="tblType1">
                <table summary="교육 목표 및 인재상, 핵심역량 목록">
                <caption>교육 목표 및 인재상, 핵심역량 내용</caption>
                	<colgroup>
                        <col style="width:8%">                        
                        <col style="width:25%" >
                        <col style="width:10%" >
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col" colspan="2">교육 목표 및 인재상</th>
                            <th scope="col" colspan="2">본 사업단 핵심역량</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="4" class="bright">글로벌<br>유학<br>창의<br>인재</td>
                            <td class="subject">글로벌 이슈에 대한 유학기반 창의적 사고력을 갖춘 “창의” 인재</td>
                            <td>인성역량</td>
                            <td class="subject">지식, 기술의 기초로 도덕 성품을 중시하며, 개인의 성취와 공동체 가치의 구현을 일관하는 세계관 및 인생관을 구비하는 역량</td>
                        </tr>
                        <tr>
                            <td class="subject bright" rowspan="2">글로벌 의사소통 능력과 이해력을 갖춘 “글로벌” 인재</td>
                            <td>기초역량</td>
                            <td class="subject">본 학과의 특성에 맞는 학문적, 인성적 기초역량으로서 유학 고전에 대한 기초적 이해와 이를 현대적 감각으로 해석하는 이해력</td>
                        </tr>
                         <tr>
                            <td>글로벌역량</td>
                            <td class="subject">덕성실천의 인성기초 위에 유학에 대한 전문성을 갖춘 “유학” 인재</td>
                        </tr>
                        <tr>
                            <td class="subject">글로벌 의사소통 능력과 이해력을 갖춘 “글로벌” 인재</td>
                            <td>창의역량</td>
                            <td class="subject">현대 사회의 문제를 해결하기 위해 유학의 고전적 원리와 현대의 다양한 학문 분야를 융합, 응용하고 궁극적으로 실천하는 능력</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                





                
                
                




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