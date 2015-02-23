<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 1 });
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
                <li>센터소개</li>
                <li>센터장 인사말</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_about.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            센터장 인사말
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            <div class="greeting">

	            <img src="../images/about/pic_greeting.jpg" alt="‘오래된 새로움의 가치’를 가지고 ‘정상을 향해 새롭게 도전’하며 ‘성장’하는 대학 창의적인 스마트 혁신을 선도" class="img100">
                
                <p class="gre_hi">
                안녕하세요.<br />
                성균관대학교 대학교육혁신센터장 배상훈입니다.
                </p>
                
                <p>
                성균관대학교는 617년의 역사와 전통을 가진 대학입니다. 성균관대학교가 고등교육기관으로서 가지고 있는 ‘긍지’와 자부심은 이러한 유구한 역사와 전통에서 비롯됩니다.<br />
                변화와 혁신을 두려워하지 않는 대학입니다. 때문에 ‘오래된 새로움의 가치’를 가지고 ‘정상을 향해 새롭게 도전’하며 ‘성장’하는 대학입니다.<br />
                또한 혁신과 성장을 통해 나타난 성과를 함께 공유하고 확산시키는 ‘나눔’을 실천하는 대학입니다.<br />
                대학교육혁신센터는 성균관대학교가 지향하는 바를 실행시키는 동력입니다.
                </p>
                
                <p>
                대학교육혁신센터는 성균관대학교의 교육이 지향할 가치와 목표를 정립하고, 추진 전략을 수립하여 이를 구현해 나가는데 도움을 주는 정보를 과학적으로 생산하는 역할을 수행하고 있습니다. 또한 성균관대학교의 교육이 성균인으로서 지향한 가치와 목표를 향해 바르게 나아가고 있는지 끊임없이 확인하여 모니터링 하는 역할도 담당하고 있습니다.<br />
                대학교육혁신센터는 ‘학부교육 선도대학 지원 사업(ACE 사업)’과 ‘대학 특성화 사업’의 주요 프로그램을 직접 수행함으로서 성균관대학의 교육적 가치와 목표를 교육현장에서 선도적으로 구현하는 데에도 앞장서고 있습니다.
                </p>
                
                <p>
                대학교육혁신센터는 앞으로 성균관대학교가 창의적인 스마트 혁신을 선도적으로 이룩하고, 이를 동료 대학과 사회에 확산하여 우리나라 고등교육의 혁신과 발전을 선도할 수 있도록 초석을 마련하겠습니다. 성균관대학교 대학교육혁신센터의 노력에 많은 관심과 참여를 부탁드립니다.
                </p>
                
                <p>
                감사합니다.
                </p>
                
                <div class="gre_sign">
                	<p>성균관대학교 대학교육혁신센터장</p>
                    <img src="../images/about/greeting_sign.gif" alt="배상훈">
                </div>

            </div>
            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------------------------->
         


        
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