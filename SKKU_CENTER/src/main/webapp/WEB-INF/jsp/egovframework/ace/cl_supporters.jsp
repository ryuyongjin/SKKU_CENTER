<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 3, snThird: 1 });
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
                <li>성대형 ACE 모델 확산</li>
                <li>창의리더 서포터즈</li>
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
            창의리더 서포터즈
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	

                
                
                <div>
                	<img src="../images/ace/pic_supporters01.jpg" alt="" class="img100">
                </div>
                
                
                
                
               
				<ul class="listType1 mt20">
                	<li>창의리더 서포터즈는 매년 상반기 모집하고, 현재 10명의 서포터즈 학생들이 참여하여 활동중에 있습니다. 서포터즈의 임기는 약 일 년 동안이며, 성균 리더십의 확산을 위한 다양한 활동들을 하게 됩니다.</li>
                    <li>창의리더 서포터즈는 성균관대학교 재학생들의 리더십에 대한 수요와 아이디어에 대한 의견을 제시하는 등 대학과 재학생들 간의 가교역할을 하고 리더십 가치에 대한 지속적인 논의를 통해 현실적이고 필요에 부합하는 리더십 프로그램으로의 성장하는데 있어서 다양한 아이디어를 제시하고 있습니다.<br><br>
                    - 창의력 및 리더십 역량개발과 관련된 아이디어 회의<br>
                    - 수기치인 리더십 역량개발 프로그램에 대한 SNS 홍보 및 확산활동 <br>
                    - 수기치인 리더십 역량개발 프로그램의 교내외 홍보<br> 
                    - 수기치인 리더십 역량개발 프로그램 참여 및 퍼실리테이터 역할 
                    </li>
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