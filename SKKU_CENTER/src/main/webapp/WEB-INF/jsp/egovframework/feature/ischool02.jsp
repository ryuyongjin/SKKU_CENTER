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
                        <li><a href="/feature/ischool02.do" class="on">교과과정</a></li>
                        <li><a href="/feature/ischool03.do">비교과과정</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>연계전공 : 데이터 사이언스 학과</p>
                </h4>
                
                
                
                <h5 class="titDepth2">
                	<p>데이터 사이언스 교과과정 이수방법</p>
                </h5>                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_ischool02.gif" alt="" class="img100">
                </div>
                
                
                
                <h5 class="titDepth2">
                	<p>데이터 사이언스 연계전공 융합교육 과정</p>
                </h5>                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_ischool03.gif" alt="" class="img100">
                </div>
                
                
                
                <h5 class="titDepth2">
                	<p>창의적 융합교육 과정 구축</p>
                </h5>                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_ischool04.gif" alt="" class="img100">
                    
                    <img src="../images/feature/1dia_ischool05.gif" alt="" class="img100 mt20">
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