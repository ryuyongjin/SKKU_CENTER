<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 5 });
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
                <li>회원서비스</li>
                <li>이메일무단수집거부</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_etc.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            이메일무단수집거부
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------------------------->
            
            
            
            
            <div class="grayBox">
            		<h5 class="titDepth2">
                        <p>이메일주소무단수집거부</p>
                    </h5>
                    <p class="font18 mb15">
                        본 홈페이지에 게시된 이메일 주소가 전자우편 수집프로 그램이나 그 밖의 기술적인 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 형사처벌됨을 유념하시기 바랍니다.         
                    </p>
                    
                    <p>
                        [게시일 2015년 3월]
                    </p>
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