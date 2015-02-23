<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 1, snFirst: 1 });
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
                <li>개인역량</li>
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
            개인역량
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            	
                
                
                
                <!-- 탭메뉴 -->
                <div class="tabstepWrap">
                    <ul>
                        <li><a href="/ace/1step01.do" class="on">Level1 리더십 워크숍 ‘나를 만나다’</a></li>
                        <li><a href="/ace/1step02.do">Level1 창조스쿨프로그램 ‘창의성 발견’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->
                <ul class="step1Title">
                	<li class="level"><p>Level 1</p></li>
                	<li class="levelCon"><p class="con1">수기치인 리더십워크숍(Ⅰ) "나를 만나다“ </p></li>
                </ul>

                
                <table class="stepCon1">
                	<th><img src="../images/ace/1dia_1step01.gif" alt=""></th>
                    <td>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <ul class="listType1">
                            <li>수기치인 리더십 워크숍(Ⅰ) “나를 만나다”는 자기발견과 자기수양을 위한 프로그램으로 에니어그램 성격유형에 대한 개론적 지식을 제공하고 개인의 성격유형별 리더십 개발을 위한 프로그램입니다. </li>
                            <li>차세대 잠재적 리더인 성균인의 수기치인(修己治人) 리더십 역량개발을 위한 주요 프로그램이며, 수기(修己)의 측면에서 ‘자기’를 올바로 이해하고, 치인(治人)측면에서 대인관계를 성공적으로 만들어가는 리더십을 개발하는 것을 목표로 합니다. </li>
                            <li>에니어그램 성격유형의 진단을 통해 도전형, 화합추구평온형, 원리원칙형, 도우미형, 낭만적 개성주의형, 성취형, 지적탐구형, 안전지향충직형, 낙천적열정형 등 9가지로 유형구분을 하여 자신의 타고난 성격을 발견하고, 리더십 역량개발을 위한 코칭의 시간을 갖게 됩니다. </li>
                        </ul>
                    </td>
                </table>
                
                <ul class="img3 mt20">
                	<li><img src="../images/ace/1pic_1step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/1pic_1step02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/1pic_1step03.jpg" alt="" class="img100"></li>
                </ul>                
                <!-- //step 상단 설명 -->
                
                
                
                <!-- 운영방법 -->
                <h4 class="titDepth1">
                    <p>운영방법</p>
                </h4>
                
                <ul class="listType1">
                    <li>총 8시간 Module로 구성/ 연간 3~4회 운영 </li>
                    <li>프로그램 이수시 인성품(자기계발영역) 4시간, 비교과 마일리지(리더십영역) 16점, 이수증명서 발급</li>
                </ul>                
                <!-- //운영방법 -->
                
                
                <!-- 참여후기 -->
                <h4 class="titDepth1">
                    <p>참여후기</p>
                </h4>
                
                <div class="psBox psBoxStep1">
                	<div class="psCon">
                    	<p>
                       	“<나를 만나다> 워크숍을 통해 무려 6가지의 성격특성을 발견하였고, 강사와의 상담과 액티비티를 통해 자신의 성격을 조금씩 명료하게 파악할 수 있었습니다. 이를 통해 ‘나’를 알아간다는 것은 정말 어려운 일인 것을 느끼고, 더욱이 ‘나’와 차이를 가지고 있는 ‘남’을 이해한다는 것은 더 어려운 일이라는 것을 깨달았습니다. 하지만 어려운 일을 내가 먼저 다가가 이해하고, 타인에 대한 공감이 시작될 때 비로소 ‘우리’가 될 수 있다고 생각합니다. <나를 만나다>프로그램을 통해 막연하게만 생각하였던 ‘나’에 대해 깊이 알 수 있었고 ‘나’와 다른 타인의 가치관이나 성향을 알게 되었습니다.”
                        </p>
                        <p class="psname">
                        	<span>- 수기치인 리더십워크숍 “나를 만나다” 참여자,</span> 정아람, 사회과학계열 13학번
                        </p>
                    </div>
                    <div class="psBottomline"></div>
                    <div class="psLeft"><img src="../images/ace/psBoxblue_left.gif" alt=""></div>
                    <div class="psRight"><img src="../images/ace/psBoxblue_right.gif" alt=""></div>
                    <div class="psBottomleft"><img src="../images/ace/psBoxblue_bleft.gif" alt=""></div>
                    <div class="psBottomRight"><img src="../images/ace/psBoxblue_bright.gif" alt=""></div>
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