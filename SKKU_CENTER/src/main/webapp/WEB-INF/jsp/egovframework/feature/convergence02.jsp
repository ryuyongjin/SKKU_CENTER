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
                        <li><a href="/feature/convergence02.do" class="on">교육목표</a></li>
                        <li><a href="/feature/convergence03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교육목표</p>
                </h4>
                
                <!-- 게시판 -->
                <div class="tblType1">
                <table summary="교육목표, 인재상, 타당성 목록">
                <caption>교육목표 목록</caption>
                	<colgroup>
                        <col style="width:15%">
                        <col style="width:30%">
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">교육목표</th>
                            <th scope="col">인재상</th>
                            <th scope="col">타당성</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>글로벌 교육</td>
                            <td class="subject">국제화 감각과 지식 가치의 창출, 활용 및 소통 능력을 보유한 글로벌 인재</td>
                            <td>
                            	<ul class="listType1">
                                    <li>대학의 위상변화：기존 상아탑에서 글로벌 인재 배출기관으로의 위상변화</li>
                                    <li>세계 최고 대학들의 글로벌화 경쟁 가속(싱가폴국립대학의 예：국제화를 통하여 아시아 대학순위 2위로 도약)</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>창의 교육</td>
                            <td class="subject">새로운 지식 체계를 창출할 수 있는 능력을 지닌 창의인재</td>
                            <td>
                            	<ul class="listType1">
                                    <li>창의인재에 대한 요구：새로운 융복합적 창의기술을 개발할 수 있는 인재양성</li>
                                    <li>인력수요 측면에서의 요구：향후 2020년까지 융복합 신소재 분야의 창의적 인재가 1,200명 부족할 것으로 예상</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>현장밀착형 교육</td>
                            <td class="subject">융복합 분야의 연결 및 통합 능력을 보유한 현장밀착형 명품인재</td>
                            <td>
                            	<ul class="listType1">
                                    <li>산업체 응용기술을 주도할 수 있는 현장밀착형 인재의 지속적인 요구</li>
                                    <li>성균관대 지정학적 위치：경기도는 융복합 기반 부품 소재분야와 연관된 산업체가 밀집되어 있음 </li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->


                
                
                <h5 class="titDepth2">
                	<p>세부 추진계획</p>
                </h5>
                
                
                <!-- 게시판 -->
                <div class="tblType1">
                <table summary="세부 추진계획 목록">
                <caption>세부 추진계획 목록</caption>
                	<colgroup>
                        <col style="width:15%">
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">특성화전략</th>
                            <th scope="col">추진계획</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>글로벌 교육</td>
                            <td><img src="../images/feature/2dia_convergence01.gif" alt="" class="img100"></td>
                        </tr>
                        <tr>
                            <td>융복합 교육</td>
                            <td><img src="../images/feature/2dia_convergence02.gif" alt="" class="img100"></td>
                        </tr>
                        <tr>
                            <td>현장밀착형 교육</td>
                            <td><img src="../images/feature/2dia_convergence03.gif" alt="" class="img100"></td>
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