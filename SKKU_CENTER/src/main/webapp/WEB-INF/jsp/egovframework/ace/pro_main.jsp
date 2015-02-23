<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 2 });
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
                <li>ACE</li>
                <li>성균 효과성 프로그램 : 교육의 질 관리</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_ace.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            성균 효과성 프로그램 : 교육의 질 관리
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                <h4 class="titDepth1 mt0">
                	<p>배경</p>
                </h4>
				<p>
                대학교육의 성과 및 효과에 관한 전문적인 연구개발을 통하여 대학교육의 질을 향상시키기 위해 성균핵심역량, 교육과정 및 학습경험, 교수·학습과정, 그리고 교내외 대학교육 프로그램들을 분석·평가합니다.
                </p>
                
                
                
                <h4 class="titDepth1">
                	<p>역할</p>
                </h4>
                
                <ul class="promainBox">
                	<li>
                    	<p class="num">1</p>
                    	<p class="txt">대학교육의 질 향상을 위한 제반 연구</p>
                    </li>
                    <li>
                    	<p class="num">2</p>
                    	<p class="txt">효과적인 대학교육 모델 개발 및 보급</p>
                    </li>
                    <li>
                    	<p class="num">3</p>
                    	<p class="txt">대학교육의 성과에 대한 측정 및 활용</p>
                    </li>
                    <li>
                    	<p class="num">4</p>
                    	<p class="txt">교수학습과정에 대한 분석 및 연구</p>
                    </li>
                    <li>
                    	<p class="num">5</p>
                    	<p class="txt">교내외 대학교육 프로그램에 대한 자문</p>
                    </li>
                </ul>

                
                 <div class="mt20">
                	<img src="../images/ace/0dia_promain.gif" alt="" class="img100">
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