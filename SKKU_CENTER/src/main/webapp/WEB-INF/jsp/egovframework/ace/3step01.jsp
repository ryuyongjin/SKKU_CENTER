<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 1, snFirst: 3 });
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
                <li>글로벌 창의・리더 역량</li>
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
            글로벌 창의・리더 역량
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            	
                
                
                
                <!-- 탭메뉴 -->
                <div class="tabstepWrap">
                    <ul>
                        <li><a href="/ace/3step01.do" class="on">Level3 리더십 워크숍 ‘세상을 만나다’</a></li>
                        <li><a href="/ace/3step02.do">Level3 창조스쿨프로그램 ‘창의적 문제해결’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->
                <ul class="step3Title">
                	<li class="level"><p>Level 3</p></li>
                	<li class="levelCon"><p class="con1">수기치인 리더십캠프 “세상을 만나다”  </p></li>
                </ul>

                
                <table class="stepCon1">
                	<th><img src="../images/ace/1dia_3step01.gif" alt=""></th>
                    <td>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <ul class="listType1">
                            <li>수기치인 리더십캠프 “세상을 만나다”는 성균관 정신을 직접 몸과 마음으로 체득하고 팀워크와 협동정신 등 글로벌 성균 창의리더의 핵심역량을 종합적으로 개발하기 위한 성균관대학교 대학교육혁신센터의 대표 브랜드 리더십교육 프로그램입니다.</li>
                            <li>참가학생들이 3박 4일 동안 합숙을 하면서 팀 단위로 성균관 정신을 현대적으로 재해석하여 직접 대본을 작성하고 연출하는 등의 무대 위에서 드라마를 공연하는 과정을 통해 리더역량을 자연스럽게 개발할 수 있도록 기획되었습니다.</li>
                            <li>본 프로그램의 참가하고 우수한 성적으로 이수학생들은 차년도 리더십캠프에서 퍼실리테이터로 활동할 수 있는 기회가 주어지게 되고, 이는 성균 리더십 교육의 연속성과 함께 개인의 리더십역량 도모가 가능하게 할 것입니다.</li>
                        </ul>
                    </td>
                </table>
                
                
                <div class="mt20 mb20">
	                <p class="mb10">
                    	[3박 4일간의 “세상을 만나다” 진행 흐름도]
    	            </p>
                	<img src="../images/ace/1dia_3step02.gif" alt="" class="img100">
                </div>
                
                
                <ul class="img3">
                	<li><img src="../images/ace/1pic_3step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/1pic_3step02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/1pic_3step03.jpg" alt="" class="img100"></li>
                </ul>                
                <!-- //step 상단 설명 -->
                
                
                
                <!-- 운영방법 -->
                <h4 class="titDepth1">
                    <p>운영방법</p>
                </h4>
                
                <ul class="listType1">
                    <li>3박 4일 일정, 연1회(동계 또는 하계 방학중 개최)</li>
                    <li>프로그램 이수시 인성품(자기계발영역) 40시간, 비교과 마일리지(리더십 영역) 80점, 이수증명서 발급</li>
                </ul>                
                <!-- //운영방법 -->
                
                
                <!-- 참여후기 -->
                <h4 class="titDepth1">
                    <p>참여후기</p>
                </h4>
                
                <div class="psBox psBoxStep3">
                	<div class="psCon">
                    	<p>
                       	“다양한 사람들을 만나고 협력하여 무언가를 이루어 내고, 팀 리더로 선출되는 등의 경험을 통해 진정한 리더란 무엇인가에 대해 다시 한 번 생각해 볼 수 있었습니다. 캠프 동기들과 넓은 인적 네트워크를 형성하는 등 입학이후 대학생활에 있어서 큰 도움을 받고 있기 때문에 다른 재학생들에게도 추천해주고 싶습니다.”
                        </p>
                        <p class="psname">
                        	<span>- 창의리더십캠프 “세상을 만나다” 참여자,</span> 강동호, 공학계열 14학번
                        </p>
                    </div>
                    <div class="psBottomline"></div>
                    <div class="psLeft"><img src="../images/ace/psBoxpurple_left.gif" alt=""></div>
                    <div class="psRight"><img src="../images/ace/psBoxpurple_right.gif" alt=""></div>
                    <div class="psBottomleft"><img src="../images/ace/psBoxpurple_bleft.gif" alt=""></div>
                    <div class="psBottomRight"><img src="../images/ace/psBoxpurple_bright.gif" alt=""></div>
                </div>
                <!-- //참여후기 -->
            
            
                

                
                
                


                




                
                
                




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