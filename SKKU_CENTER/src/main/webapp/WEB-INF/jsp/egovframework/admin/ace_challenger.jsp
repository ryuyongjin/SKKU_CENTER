<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
</head>

<body>


<!-- wrap -->
<div id="wrap">    
    
    
    <!-- header -->
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_header.jsp" %>
    <!-- //header -->
    
    
    <!-- container -->
    <div id="admin_container">
    
    	<!-- 상단 타이틀 -->
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>글로벌 창조적 챌린저 프로그램</h3>
    		    <h2>| ACE</h2>
            </div>
        </div>
        <!-- //상단 타이틀 -->
        
        <!-- 본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    	<div class="admin_content"> 
        
        
           
    	
        
        
        
        
        		<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/" class="on">글로벌 창조적 챌린저들의 도전 이야기</a></li>
                        <li><a href="/">소개</a></li>
                        <li><a href="/">연도추가</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                <!-- 탭메뉴 -->
                <div class="tabWrap mt40">
                    <ul>
                        <li><a href="/" class="on">전체</a></li>
                        <li><a href="/">2014</a></li>
                        <li><a href="/">2015</a></li>
                        <li><a href="/">2016</a></li>
                        <li><a href="/">2017</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                
                
                <!-- 챌린저 게시판 -->
                <div class="challengerList">
                
                <ul>
                
                
                	<li>
                    	<div class="chaImg"><img src="/images/cschool/3pic_course05.jpg" width="270"></div>
                        
                        <dl class="chaTeam">
                        	<dt>팀명</dt>
                            <dd>잔치국수<input type="checkbox" name="checkbox" value="1"></dd>
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
                            <dd>잔치국수 잔치국수<input type="checkbox" name="checkbox" value="1"></dd>
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
                            <dd>잔치국수<input type="checkbox" name="checkbox" value="1"></dd>
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
                            <dd>잔치국수<input type="checkbox" name="checkbox" value="1"></dd>
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
                            <dd>잔치국수<input type="checkbox" name="checkbox" value="1"></dd>
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
                <!-- //챌린저 게시판 -->
                
                
                <!-- 버튼 start -->
                <ul class="btnWrap2">
                	<li><a href="./" class="btnGray">선택삭제</a></li>
                	<li><a href="./" class="btnBlue">글쓰기</a></li>                    
                </ul>
                <!-- //버튼 end -->
                
                <!-- PC용 페이징 start -->
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
                <!-- //PC용 페이징 end -->
                
                <!-- 모바일용 페이징 start -->
                <div class="pagingMb">
                	<a href="#prev" class="prev">이전</a>
                	<a href="/" class="next">다음</a>
                </div> 
                <!-- //모바일용 페이징 end -->
        
        
        
        
        
        

        
        
        </div>
        <!-- //본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
        
    <!-- footer -->
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_footer.jsp" %>
    <!-- //footer -->
    
    
    </div>
    <!-- //container -->
    
    
    
    

</div>
<!-- //wrap -->

</body>
</html>