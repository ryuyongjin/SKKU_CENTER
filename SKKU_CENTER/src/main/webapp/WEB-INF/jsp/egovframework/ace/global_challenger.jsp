<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 3, snThird: 5 });
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
                <li>글로벌 창조적 챌린저 프로그램</li>
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
            글로벌 창조적 챌린저 프로그램
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                <!-- 프로그램 개요 설명 -->
                <table class="stepCon2 mt0">                	
                    <th>
                    	<h4 class="titDepth1 mt0">
                            <p>프로그램 개요</p>
                        </h4>
                        <p class="txt">
                        	도전과 열정은 창의성을 발현하는데 마중물의 역할을 합니다. 
글로벌 창조적 챌린저 프로그램은 다양한 전공 학생들로 이루어져 학문 간의 경계를 넘나들 수 있는 융합의 기회를 제공합니다. 또한 챌린저들의 무한한 도전을 실현화시키고, 무궁무진한 창의적 잠재력을 펼칠 수 있도록 구성되어 있습니다.
                        </p>
                    </th>
                    <td><img src="../images/ace/dia_challenger01.gif" alt=""></td>
                </table>
                <!-- //프로그램 개요 설명 -->
                
                
                
                <h4 class="titDepth1">
                    <p>프로그램의 구성 및 내용</p>
                </h4>
                
                <div class="mt20">
                	<img src="../images/ace/dia_challenger02.gif" alt="" class="img100">
                </div>
                
                
                
                
                
                
                <!-- 20150226 준비중 
                <h4 class="titDepth1">
                    <p>글로벌 창조적 챌린저의 도전 이야기</p>
                </h4>
                
                <ul class="listType1">
                    <li>6~8팀(35~40명) 선발 / 연간 1회 운영</li>
                    <li>프로그램을 이수할 경우 창의품 또는 창의심화탐구(3학점)가 인정됩니다.</li>
                </ul>
                

                <div class="tabWrap mt40">
                    <ul>
                        <li><a href="/" class="on">전체</a></li>
                        <li><a href="/">2014</a></li>
                        <li><a href="/">2015</a></li>
                        <li><a href="/">2016</a></li>
                        <li><a href="/">2017</a></li>
                    </ul>
                </div>
             
                

                <div class="challengerList">
                
                <ul>
                
                
                	<li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course05.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd>막거리의 세계화를 위한 글로벌 전략</dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    
                    
                    <li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course02.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd>막거리의 세계화를 위한</dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    
                    
                    <li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course06.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd><a href="/">막거리의 세계화를 위한 글로벌 전략 글로벌 전략</a></dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    
                    
                    <li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course01.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd>막거리의 세계화를 위한 글로벌 전략</dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    
                    
                    <li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course05.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd>막거리의 세계화를 위한</dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    
                    
                    <li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course03.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수</dd>
                        </dl>                        
                        <dl class="chaCon">
                        	<dt>주제</dt>
                            <dd><a href="/">막거리의 세계화를 위한 글로벌 전략 글로벌 전략</a></dd>
                        </dl>
                     
                        <div class="chaDown">
                        	<a href="/">보고서 다운로드</a>
                        </div>
                    </li>
                    
                    

                </ul>
                </div>
                
                

                <div class="paging">
                    <a href="/" class="first"><img src="../images/common/btn_first.gif" alt="처음" /></a>
                    <a href="/" class="prev"><img src="../images/common/btn_prev.gif" alt="이전" /></a>
                    <strong>1</strong>
                    <a href="/" >2</a>
                    <a href="/" >3</a>
                    <a href="/" >4</a>
                    <a href="/" >5</a>
                    <a href="/" >6</a>
                    <a href="/" >7</a>
                    <a href="/" >8</a>
                    <a href="/" >9</a>
                    <a href="/" >10</a>
                    <a href="/" class="next"><img src="../images/common/btn_next.gif" alt="다음" /></a>
                    <a href="/" class="end"><img src="../images/common/btn_end.gif" alt="끝" /></a>
		        </div>

                <div class="pagingMb">
                	<a href="#prev" class="prev">이전</a>
                	<a href="/" class="next">다음</a>
                </div> 
                
                
                -->

                
                
                
                

                




                
                
                




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