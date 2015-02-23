<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 1, snFirst: 2 });
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
                <li>창의・리더 역량</li>
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
            창의・리더 역량
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            	
                
                
                
                <!-- 탭메뉴 -->
                <div class="tabstepWrap">
                    <ul>
                        <li><a href="/ace/2step01.do" class="on">Level2 리더십 워크숍 ‘우리를 만나다’</a></li>
                        <li><a href="/ace/2step02.do">Level2 창조스쿨프로그램 ‘창조적 생각도구’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->
                <ul class="step2Title">
                	<li class="level"><p>Level 2</p></li>
                	<li class="levelCon"><p class="con1">수기치인 리더십워크숍(Ⅱ) “우리를 만나다”</p></li>
                </ul>

                
                <table class="stepCon1">
                	<th><img src="../images/ace/1dia_2step01.gif" alt=""></th>
                    <td>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <ul class="listType1">
                            <li>두 번째 응용단계인 수기치인 리더십워크숍(Ⅱ) “우리를 만나다”는 자기발견과 자기수양을 통해 글로벌 성균 창의리더를 양성하기 위한 프로그램으로써 “나를 만나다”의 심화 프로그램입니다. </li>
                            <li>“우리를 만나다” 프로그램은 에니어그램의 9가지 성격유형별 집단토의를 바탕으로 전문 강사의 팀티칭 형태로 진행되어 집니다. 각 성격유형에 해당하는 참여자들은 본인의 성격에 대해 자유롭게 이야기하고 참여함으로써 개개인 성격에 대한 심도 있는 접근과 논의를 가능하게 합니다. </li>
                            <li>9가지의 에니어그램 성격유형 진단을 토대로 하여 비전개발을 위한 훈련을 실시하고 스스로 삶의 주인이 되어 인생의 목표와 비전을 세우는 기회를 경험할 수 있게 합니다.</li>
                        </ul>
                    </td>
                </table>
                
                <div class="mt20 mb20">
                	<img src="../images/ace/1dia_2step02.gif" alt="" class="img100">
                </div>
                
                <ul class="img2">
                	<li><img src="../images/ace/1pic_2step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/1pic_2step02.jpg" alt="" class="img100"></li>
                </ul>                
                <!-- //step 상단 설명 -->
                
                
                
                <!-- 운영방법 -->
                <h4 class="titDepth1">
                    <p>운영방법</p>
                </h4>
                
                <ul class="listType1">
                    <li>총 6시간 Module로 구성/ 연간 3~4회 운영 </li>
                    <li>프로그램 이수시 인성품(자기계발영역) 3시간, 비교과 마일리지(리더십영역) 12점, 이수증명서 발급</li>
                </ul>                
                <!-- //운영방법 -->
                
                
                <!-- 참여후기 -->
                <h4 class="titDepth1">
                    <p>참여후기</p>
                </h4>
                
                <div class="psBox psBoxStep2">
                	<div class="psCon">
                    	<p>
                       	“개인이 어떠한 형상이더라도 그 자체를 유지하면서 특정 능력을 더 갖추면 좀 더 발전적인 리더로 바뀔수 있음을 알려주는 활동이었습니다. 자기정체성을 제대로 인지하여 본인역할에 충실할 때 남을 이끌 수 있는 지도자로서 거듭날 수 있는 첫 단추가 되었습니다” 
                        </p>
                        <p class="psname">
                        	<span>- 수기치인 리더십워크숍 “우리를 만나다” 참여자,</span> 조현형, 행정학과 12학번
                        </p>
                    </div>
                    <div class="psBottomline"></div>
                    <div class="psLeft"><img src="../images/ace/psBoxgreen_left.gif" alt=""></div>
                    <div class="psRight"><img src="../images/ace/psBoxgreen_right.gif" alt=""></div>
                    <div class="psBottomleft"><img src="../images/ace/psBoxgreen_bleft.gif" alt=""></div>
                    <div class="psBottomRight"><img src="../images/ace/psBoxgreen_bright.gif" alt=""></div>
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