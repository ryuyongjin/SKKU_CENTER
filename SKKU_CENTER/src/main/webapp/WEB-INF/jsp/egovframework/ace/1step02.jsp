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
                        <li><a href="/ace/1step01.do">Level1 리더십 워크숍 ‘나를 만나다’</a></li>
                        <li><a href="/ace/1step02.do" class="on">Level1 창조스쿨프로그램 ‘창의성 발견’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->
                <ul class="step1Title">
                	<li class="level"><p>Level 1</p></li>
                	<li class="levelCon"><p class="con2">창조스쿨프로그램(Ⅰ) : <br><span>창의성 발견 프로그램(Awakening your creativity)</span></p></li>
                </ul>
                
                <table class="stepCon2">                	
                    <th>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <p class="txt">
                        	창의성은 누구에게나 잠재되어 있지만, 모두가 그것을 이끌어 낼 수 있는 것은 아닙니다. 창의성 발견 프로그램은 막연했던 창의성이란 개념을 이해하고, 이를 토대로 여러분 스스로가 자신의 창의성을 깨닫고 이를 발현할 수 있도록 구성되어 있습니다.
                        </p>
                    </th>
                    <td><img src="../images/ace/2dia_1step01.gif" alt=""></td>
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
                    	<tr class="trBlue">
                        	<th scope="col">차시</th>
                            <th scope="col">주제</th>
                            <th scope="col">내용</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1차시<br>(3시간)</td>
                            <td><strong>Colorful creativity</strong><br>창의성의 다양한 색깔 알아가기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>Team-building</li>
                                    <li>창의성 본질의 이해</li>
                                    <li>창의성은 어디에서 오는가?</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>2차시<br>(3시간)</td>
                            <td><strong>Finding creative personality</strong><br>나도 모르는 <br>나의 창의적 성향 발견하기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>심리검사를 통한 자기성향 인식</li>
                                    <li>창의적 성향에 대한 이해 및 자신의 창의적 성향 발견</li>
                                    <li>Complex personality</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>3차시<br>(3시간)</td>
                            <td><strong>Creative thinking antenna</strong><br>창의적 문제해결, 파헤치기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>창의적 문제해결단계의 이해</li>
                                    <li>심리검사를 통한 자신의 창의적 문제해결 프로파일 진단</li>
                                    <li>창의적 사고기법 실습</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>4차시<br>(3시간)</td>
                            <td><strong>Flow: self-evolving</strong><br>나는 나에게 한 번이라도<br>뜨거운 적이 있던가? 몰입하기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>창의적 삶과 몰입, 몰입의 조건</li>
                                    <li>자신의 몰입경험 공유</li>
                                    <li>심리검사를 통한 강점재능영역 탐색</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>                
                <!-- //프로그램의 구성 및 내용 -->
                
                
                
                <ul class="img3 mt20">
                	<li><img src="../images/ace/2pic_1step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/2pic_1step02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/2pic_1step03.jpg" alt="" class="img100"></li>
                </ul>
                
                
                <!-- 운영방법 -->
                <h4 class="titDepth1">
                    <p>운영방법</p>
                </h4>
                
                <ul class="listType1">
                    <li>1회 총 4차시(12시간) / 30~35명 선착순 모집 / 연간 4~6회 운영</li>
                    <li>프로그램을 이수할 경우 인성품(자기계발영역) 6시간 인정, 비교과영역 마일리지 24점 적립 및 이수증명서가 발급됩니다(1회 기준).</li>
                </ul>                          
                <!-- //운영방법 -->
                
                
                
                <!-- 참여후기 -->
                <h4 class="titDepth1">
                    <p>참여후기</p>
                </h4>
                
                <div class="psBox psBoxStep1">
                	<div class="psCon">
                    	<p>
                       	창의성에 대한 환상이 걷혔습니다. 누구에게나 창의성은 발현될 수 있을 것 같아요. 그 첫 단추는 나 자신을 아는 것에서 시작하는 것 같습니다. 많은 사람들이 자기 자신에 대하여 잘 모르면서 일을 하고, 삶을 살아가는 걸 보면 안타까운 생각이 듭니다. 나도 이 프로그램에 참여하지 않았다면 막연하게만 나 자신을 알았을 것입니다. 창의적인 사람들은 하늘에서 뚝 떨어지는 특별한 존재가 아니라, 자신을 찾고 노력에서 만들어지는 것이라는 것을 배웠습니다.
                        </p>
                        <p class="psname">
                        	<span>- 신문방송학과,</span> 3학년, 여, 000
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