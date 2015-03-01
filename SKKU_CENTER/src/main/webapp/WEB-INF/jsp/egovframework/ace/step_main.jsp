<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 1 });
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
                <li>성균 글로벌 창의리더 역량개발 프로그램</li>
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
            성균 글로벌 창의리더 역량개발 프로그램
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->           
				<p>
                단계별 글로벌 창의리더(기초-응용-심화) 역량개발 및 인증
                </p>              
                
                
                <!-- 도형 -->
                <div class="stepMain">
                	<div class="top">
                    <img src="../images/ace/0dia_stepmain_top.gif" alt="">
                    </div>
                    
                    <ul class="step2">
                    	<li><a href="./1step01.do"><img src="../images/ace/0dia_stepmain_step1.gif" alt="" class="picOver"></a></li>
                        <li><a href="./2step01.do"><img src="../images/ace/0dia_stepmain_step2.gif" alt="" class="picOver"></a></li>
                        <li><a href="./3step01.do"><img src="../images/ace/0dia_stepmain_step3.gif" alt="" class="picOver"></a></li>
                    </ul>
                    <ul class="step3">
                    	<li><a href="./1step01.do"><img src="../images/ace/0dia_stepmain_step1_1.gif" alt="" class="picOver"></a></li>
                        <li><a href="./1step02.do"><img src="../images/ace/0dia_stepmain_step1_2.gif" alt="" class="picOver"></a></li>
                        <li><a href="./2step01.do"><img src="../images/ace/0dia_stepmain_step2_1.gif" alt="" class="picOver"></a></li>
                        <li><a href="./2step02.do"><img src="../images/ace/0dia_stepmain_step2_2.gif" alt="" class="picOver"></a></li>
                        <li><a href="./3step01.do"><img src="../images/ace/0dia_stepmain_step3_1.gif" alt="" class="picOver"></a></li>
                        <li><a href="./3step02.do"><img src="../images/ace/0dia_stepmain_step3_2.gif" alt="" class="picOver"></a></li>
                    </ul>
                    
                    <div class="bottom">
                    <img src="../images/ace/0dia_stepmain_bottom.gif" alt="" >
                    </div>                    
                </div>
                <!-- //도형 -->                
                
                <p>
                대학교육혁신센터에서는 재학생들의 진로설계와 취업, 사회진출에 있어서 실질적인 도움을 주고자 단계별(기초-응용-심화) 인증시스템을 구축하였습니다. 개별 프로그램 이수시 인증서를 발급하고 총 단계별 프로그램을 선택적으로 이수했을 경우 총장명의 수료증을 발급함으로써 재학생들의 역량개발과 진로에 도움이 될 것입니다. 
                </p>
                
                
                
                <h4 class="titDepth1">
                	<p>연간 단계별 프로그램의 이수 혜택</p>
                </h4> 
                <ul class="listType15">
                	<li>수료증 발급</li>
                    <li>인성품 인정</li>
                    <li>마일리지 제공</li>
                    <li>성균핵심역량평가(SCCA)를 통한 개인의 역량진단 및 피드백 제공 </li>
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