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
                        <li><a href="/feature/engineering02.do" class="on">교육목표</a></li>
                        <li><a href="/feature/engineering03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교육목표</p>
                </h4>
                
                
                
                <!-- 교육목표 start -->
            	<div class="writeType2">
                <table summary="교육목표 폼">
                <caption>교육목표 정보</caption>
                    <colgroup>
                        <col style="width:30%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">글로벌 경쟁력 확보를 위한 교육환경 및 교육과정 혁신</th>
                            <td>경쟁력 우위의 미래 엔지니어를 양성하기 위해 하드웨어, 소프트웨어를 포함한 교육환경을 고도화하고 비전 실현을 위한 교육과정의 다양화와 질적 혁신</td>
                        </tr>
                        <tr>
                            <th scope="row">글로벌 건설시장 진출의 진로 다양화 및 기회 확대</th>
                            <td>사업단의 교육프로그램을 통해 배출된 인재들에게 설계 및 시공 외에 다양한 진로와 비전을 제시하고 최고의 역량을 갖춘 엔지니어로서 취업 및 사회진출의 기회 확대</td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //교육목표 end -->
                
                
                
                <h4 class="titDepth1">
                	<p>추진전략</p>
                </h4>
                
                <ul class="listType1">
                	<li>해외 건설시장 진출을 꾀하고 있는 건설ㆍ엔지니어링 산업계의 동향과 다양한 엔니지어링 역량에 대한 수요증대, 그리고 글로벌 역량을 갖춘 엔지니어의 공급부족 등 산업계 환경변화에 기반하여,</li>
                    <li>이미 완료된 「건축공학과」와 「토목공학과」의 자체적 통합을 기반으로 통합 교육과정을 지속적으로 발전시켜가며 특성화 계획을 실현 추구</li>
                </ul>
                
                
                <div class="mt20">
                	<img src="../images/feature/3dia_engineering01.gif" alt="" class="img100">
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