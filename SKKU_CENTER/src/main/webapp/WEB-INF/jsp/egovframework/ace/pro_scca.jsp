<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 2, snSecond: 2 });
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
                <li>성균핵심역량진단도구(SCCA)</li>
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
            성균핵심역량진단도구(SCCA)
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	
                <p>
                	『성균핵심역량진단도구(SCCA)』는 성균관대학교 재학생들의 성균핵심역량인 인문역량, 소통역량, 학문역량, 창의역랑, 리더역량, 글로벌역량을 진단·평가할 수 있는 검사도구입니다.
                </p>
                
                
                <div class="mt20">
                	<img src="../images/ace/dia_proscca01.gif" alt="" class="img100">
                </div>
                
                
                
                
                <h4 class="titDepth1">
                	<p>연구결과</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>2011년</p>
                </h5>                
				<ul class="listType2">
                	<li>성균 핵심역량 분석 연구_2011년 2월</li>
                    <li>제1회 역량기반 학부교육 심포지엄_2011년 11월</li>
                </ul>  
                
                
                <h5 class="titDepth2">
                	<p>2012년</p>
                </h5>                
				<ul class="listType2">
                	<li>성균 핵심역량 진단도구 개발2_2012년 8월</li>
                    <li>성균 핵심역량 분석 연구 : 인문역량, 소통역량, 글로벌역량_2012년 8월</li>
                    <li>제2회 역량기반 학부교육 심포지엄_2012년 11월</li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>2013년</p>
                </h5>                
				<ul class="listType2">
                	<li>성균 핵심역량 진단도구 개발3_2013년 2월 </li>
                    <li>제3회 역량기반 학부교육 심포지엄_2013년 11월 </li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>2014년</p>
                </h5>                
				<ul class="listType2">
                	<li>제1회 역량기반 선진화를 위한 심포지엄_2015년 1월</li>
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