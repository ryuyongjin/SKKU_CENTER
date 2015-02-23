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
                        <li><a href="/ace/2step01.do">Level2 리더십 워크숍 ‘우리를 만나다’</a></li>
                        <li><a href="/ace/2step02.do" class="on">Level2 창조스쿨프로그램 ‘창조적 생각도구’</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- step 상단 설명 -->                
                <ul class="step2Title">
                	<li class="level"><p>Level 2</p></li>
                	<li class="levelCon"><p class="con2">창조스쿨프로그램(Ⅱ) : <br><span>창조적 생각도구 프로그램(Developing creative thinking skills)</span></p></li>
                </ul>
                
                <table class="stepCon2">                	
                    <th>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <p class="txt">
                        	모든 일에는 도구가 필요하듯, 창의성 발현을 위해서도 생각의 도구들이 필요합니다. 창조적 생각도구 프로그램은 창조인들이 활용하는 창의적인 생각도구 중 대표적인 4가지 도구(관찰, 시각화, 추상화, 유추)를 알아보고 실습해보도록 구성되어 있습니다.
                        </p>
                    </th>
                    <td><img src="../images/ace/2dia_2step01.gif" alt=""></td>
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
                    	<tr class="trGreen">
                        	<th scope="col">차시</th>
                            <th scope="col">주제</th>
                            <th scope="col">내용</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1차시<br>(3시간)</td>
                            <td><strong>Observing</strong><br>내 안의 더듬이 깨우기</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>창조과정에서 관찰의 중요성</li>
                                    <li>예민한 감각: 오감탐구하기</li>
                                    <li>일상의 재발견: 친숙한 사물 낯설게 하기</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>2차시<br>(3시간)</td>
                            <td><strong>Visualizing</strong><br>생각을 그리는 기술</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>시각화에 대해 알기</li>
                                    <li>시각화의 방법: 이미지로 표현하기</li>
                                    <li>상상을 통한 명화의 재구성</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>3차시<br>(3시간)</td>
                            <td><strong>Abstracting</strong><br>껍데기는 가라, 알맹이는 남고</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>추상에 대해 알기</li>
                                    <li>추상의 방법: 본질과 제거</li>
                                    <li>Poetry-writing, 광고제작하기</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>4차시<br>(3시간)</td>
                            <td><strong>Analogizing</strong><br>내 창의성의 나비효과</td>
                            <td class="subject">
                            	<ul class="listType1">
                                    <li>유추에 대해 알기</li>
                                    <li>유추의 방법: 연상, 연결, 모방</li>
                                    <li>연상과 은유를 통한 스토리텔링</li>
                                    <li>강제연결법을 통한 신제품 개발</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>                
                <!-- //프로그램의 구성 및 내용 -->
                
                
                
                <ul class="img3 mt20">
                	<li><img src="../images/ace/2pic_2step01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/2pic_2step02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/2pic_2step03.jpg" alt="" class="img100"></li>
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
                
                <div class="psBox psBoxStep2">
                	<div class="psCon">
                    	<p>
                       	창조적 생각도구 프로그램의 강의내용, 자료집, 가외활동, 팀 활동들은 이후 일반적인 과제 수행이나 학교생활에 있어서도 다양한 해결책과 사고방식을 선물해주었고, 스스로 생각하고 타인과 교류하며 더 좋은 아이디어가 무엇일까 항상 골똘히 고민하게 만들어주었습니다.
                        </p>
                        <p class="psname">
                        	<span>- 글로벌리더학부,</span> 남, 000
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