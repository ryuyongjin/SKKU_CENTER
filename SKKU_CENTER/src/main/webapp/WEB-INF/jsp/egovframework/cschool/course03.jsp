<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 2, snSecond: 3 });
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
                <li>C-School</li>
                <li>교육과정</li>
                <li>비교과 프로그램</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_cschool.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            비교과 프로그램
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                <div>
                	<img src="../images/cschool/3dia_course01.gif" alt="" class="img100">
                </div>
				<p class="mt10">
                성균 C-School에서는 학생들의 창의적 체험활동, Creative Innovator로서의 비전 수립, Global 마인드 셋 등을 위한 다양한 비교과과정을 운영하고 있습니다.
                </p>
                
                
				<h4 class="titDepth1">
                	<p>Vision Camp</p>
                </h4>
                
                <p>
                인포매틱스 능력을 단기간에 업그레이드 할 수 있도록 도와주는 캠프입니다. 현장 전문가를 초청하여 심화된 인포매틱스 지식과 기술에 대한 강의를 제공하며, 캠프에 참여한 학생 개인의 비전을 수립하고 실천방안을 탐색해보는 자아탐색 시간이 마련되어 있습니다.
                </p>                
                
                <ul class="img2">
                	<li><img src="../images/cschool/3pic_course01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/cschool/3pic_course02.jpg" alt="" class="img100"></li>
                </ul>
                
                
                
                
                <h4 class="titDepth1">
                	<p>융합기초프로젝트</p>
                </h4>
                
                <p>
                C-School 인증 및 연계전공 필수 이수 비교과 과목으로, 다학제-다학년의 융합팀을 결성하여 다양한 글로벌 이슈를 탐색하고 지역사회의 문제를 해결할 수 있는 역량을 기르기 위한 프로그램입니다. 집중탐구 기간 및 해카톤에 참여하면서 창의적인 협업, 아이디어 공유, 프로토타입 제작의 과정을 체험할 수 있습니다.
                </p>
                
                <ul class="img2">
                	<li><img src="../images/cschool/3pic_course03.jpg" alt="" class="img100"></li>
                    <li><img src="../images/cschool/3pic_course04.jpg" alt="" class="img100"></li>
                </ul>
                <ul class="img2">
                	<li><img src="../images/cschool/3pic_course05.jpg" alt="" class="img100"></li>
                    <li><img src="../images/cschool/3pic_course06.jpg" alt="" class="img100"></li>
                </ul>
                
                
                
                
                
                <h4 class="titDepth1">
                	<p>Global Intensive Workshop</p>
                </h4>
                
                <p>
                C-School에 참여하고 있는 우수 학생을 대상으로 진행되는 Global Intensive Workshop은 글로벌 신성장 동력 및 유망산업과 관련된 글로벌 마켓의 주요 산업체를 방문하고, 현지 청년 사업가 등과의 만남을 통해 글로벌 마인드를 형성할 수 있는 기회를 제공합니다.
                </p>


                
                
                




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