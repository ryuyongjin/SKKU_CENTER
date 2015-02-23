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
                        <li><a href="/ace/3step01.do">Level3 리더십 워크숍 ‘세상을 만나다’</a></li>
                        <li><a href="/ace/3step02.do" class="on">Level3 창조스쿨프로그램 ‘창의적 문제해결’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->               
                <ul class="step3Title">
                	<li class="level"><p>Level 3</p></li>
                	<li class="levelCon"><p class="con2">창조스쿨프로그램(Ⅲ) : <br><span>창의적 문제해결 프로그램(Creative Problem Solving)</span></p></li>
                </ul>
                
                 <table class="stepCon2">                	
                    <th>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <p class="txt">
                        	창의적 문제해결 프로그램은 일상생활에서 발생하는 문제를 명확히 파악하고 해결해보는 일련의 과정을 실습해봄으로써 창의적 문제해결 방법을 쉽게 이해할 수 있도록 구성되어 있습니다. 더불어 각 단계에서 다양한 창의적 사고 기법을 익힐 수 있습니다.
                        </p>
                    </th>
                    <td><img src="../images/ace/2dia_3step01.gif" alt=""></td>
                </table>             
                <!-- //step 상단 설명 -->
                
                
                
                <!-- 프로그램의 구성 및 내용 -->
                <h4 class="titDepth1">
                    <p>프로그램의 구성 및 내용</p>
                </h4>
                
                
                <div class="tblType1">
                <table summary="차시,주제,내용 목록">
                <caption>프로그램의 구성 및 내용</caption>
                	<colgroup>
                        <col style="width:12%">                        
                        <col style="width:35%" >
                        <col style="width:auto" >
                    </colgroup>
                	<thead>
                    	<tr class="trPurple">
                        	<th scope="col">차시</th>
                            <th scope="col">주제</th>
                            <th scope="col">내용</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1차시<br>(4시간)</td>
                            <td><strong>Do Dream</strong><br>문제 발견하기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>문제에 대해 이해하기</li>
                                    <li>문제발견하기</li>
                                    <li>The 3Whys와 Drawing the Problem</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>2차시<br>(2시간)</td>
                            <td><strong>Do Idea</strong><br>아이디어 생성하기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>Hot Potato Brainstorming</li>
                                    <li>확산적 사고와 수렴적 사고를 장려하는 질문들</li>
                                    <li>Brainwriting을 통한 아이디어 개발</li>
                                    <li>PCA와 ALoU</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>3차시<br>(2시간)</td>
                            <td><strong>Do!Do!Do!</strong><br>아이디어 실행하기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>실행계획의 방법</li>
                                    <li>창의적인 성향의 중요성</li>
                                    <li>CPS의 단계 정리활동</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>                
                <!-- //프로그램의 구성 및 내용 -->
                
                
                
                
                <ul class="img2 mt20">
                	<li><img src="../images/ace/2pic_3step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/2pic_3step02.jpg" alt="" class="img100"></li>
                </ul>
                
                
                
                <!-- 운영방법 -->
                <h4 class="titDepth1">
                    <p>운영방법</p>
                </h4>
                
                <ul class="listType1">
                    <li>1회 일일 또는 양일 진행(8시간) / 20~25명 선착순 모집 / 연간 2회 운영</li>
                    <li>프로그램을 이수할 경우 인성품(자기계발영역) 4시간 인정, 비교과영역 마일리지 16점 적립 및 이수증명서가 발급됩니다(1회 기준).</li>
                </ul>
                <!-- //운영방법 -->
                
                
                <!-- 참여후기 -->
                <h4 class="titDepth1">
                    <p>참여후기</p>
                </h4>
                
                <div class="psBox psBoxStep3">
                	<div class="psCon">
                    	<p>
                       	창의적 문제해결 프로그램을 통해서 삶에서 어려운 일이 닥쳤을 때, 무조건 뛰어들기보단 진짜 문제가 무엇인지 분석하고 파악하는 것이 중요하다는 것을 알게 되었습니다. 체계적으로 문제를 발견하고 해결해나가는 과정을 익히고 체험해봄으로써, 앞으로 제 인생의 의사결정이 보다 윤택해질 것이라는 확신이 들었습니다.
                        </p>
                        <p class="psname">
                        	<span>- 경영학과,</span> 3학년, 남, 000
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