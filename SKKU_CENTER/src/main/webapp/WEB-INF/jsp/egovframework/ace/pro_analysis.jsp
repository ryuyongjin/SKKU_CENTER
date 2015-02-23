<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 2, snSecond: 3 });
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
                <li>대학생 학습경험분석 연구</li>
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
            대학생 학습경험분석 연구
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	
                <p>
                	대학생의 학습과정과 경험에 대한 분석을 진행하여, 학습경험 지표와 효과적인 학습경험을 위한 지원 방안을 도출, 대학교육의 질적 향상을 위해 노력 하고 있습니다.
                </p>
                
                
                <div class="mt20">
                	<img src="../images/ace/dia_analysis01.gif" alt="" class="img100">
                </div>
                
                
                
                
                <h4 class="titDepth1">
                	<p>연구결과</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>2010년</p>
                </h5>                
				<ul class="listType2">
                	<li>대학교육의 효과성 탐색(세미나)_2010년 12월 </li>
                </ul> 
                
                <h5 class="titDepth2">
                	<p>2011년</p>
                </h5>                
				<ul class="listType2">
                	<li>대학생의 학습경험 분석1_2011년 2월</li>
                </ul>  
                
                
                <h5 class="titDepth2">
                	<p>2012년</p>
                </h5>                
				<ul class="listType2">
                	<li>대학생의 학습경험 분석2_2012년 2월</li>
                    <li>성균관대학교 학생 상호작용에 대한 설문조사 결과 : 교수[강사], Academic Advisor, 성균멘토와의 상호작용 _2012년 6월</li>
                    <li>재학생의 교수와의 상호작용과 학습참여 분석에 대한 콜로키움_2012년 12월</li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>2013년</p>
                </h5>                
				<ul class="listType2">
                	<li>대학생의 학습경험 분석3_2013년 2월 </li>
                    <li>대학교육효과성센터 소식지 창간호_2013년 5월 </li>
                    <li>대학생의 학습경험 경향 분석에 대한 콜로키움 : 2011년~2013년_2013년 12월</li>
                    <li>대학교육효과성센터 소식지 제2호_2014년 2월 </li>
                    <li>"효과적인 교수학생상호작용" '톡(talk)'하다_2014년 2월</li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>2015년</p>
                </h5>                
				<ul class="listType2">
                	<li>제1회 학부선진화를 위한 심포지엄</li>
                	<li>“잘가르치는 대학의 방향을 제시하다!: 2014 학부교육의 실태조사 결과</li>
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