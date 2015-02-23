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
                        <li><a href="/feature/engineering01.do" class="on">교육비전</a></li>
                        <li><a href="/feature/engineering02.do">교육목표</a></li>
                        <li><a href="/feature/engineering03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
				
                <h4 class="titDepth1 mt0">
                	<p>추진배경</p>
                </h4>
                
                <ul class="listType1 mt20">
                	<li>본 사업단은 국내 최고 수준의 교수진과 연구역량을 갖추고 있음은 물론이고 기존 교육프로그램의 질적 수준 확보, 글로벌 스탠다드에 부합하는 건축공학분야와 토목공학분야의 융합, 공학인증을 통한 교육의 질적 관리, BK21 등을 통한 연구역량의 강화, 지속적인 산학연계 과정의 추진 등을 통해 ‘글로벌 건설엔지니어링 인력양성 사업’의 기본틀 마련</li>
                </ul>
                
                <div class="mt20">
                	<img src="../images/feature/1dia_engineering02.gif" alt="" class="img100">
                </div>
                
                
				<h4 class="titDepth1">
                	<p>교육비전</p>
                </h4>
                
                <ul class="listType1">
                	<li>최고의 글로벌 건설 엔지니어링 리더 아카데미 구축</li>
                    <li>글로벌 건설 엔지니어링 인력양성 사업의 기본 방향은 국내 건설 및 엔지니어링 업계가 확보하고 있는 강점과 기회요소를 살리는 한편, 반드시 해결하여야 할 약점 및 위협요소에 초점을 맞춘 신개념 교육프로그램 구축</li>
                </ul>
                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_engineering01.gif" alt="" class="img100">
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