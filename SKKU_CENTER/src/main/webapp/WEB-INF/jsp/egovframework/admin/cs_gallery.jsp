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
		        <h3>학생소감</h3>
    		    <h2>| C-School</h2>
            </div>
        </div>
        <!-- //상단 타이틀 -->
        
        <!-- 본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    	<div class="admin_content"> 
        
        
           
    	
        
        
        
        
                
                
                <!-- 검색박스 start -->
                <div class="searchBox">
                <form name="frm" action ="" method="get">
                    <fieldset>
                        <legend>게시판 검색</legend>
                        <select id="f" name="f">
                            <option value="1">제목</option>
                            <option value="2">내용</option>
                        </select>
                        <input type="text" title="검색어를 입력해주세요." id="q" name="q" value="" class="inputTxt" />
                        <input type="submit" value="검색" class="btnSearch" >
                    </fieldset>
                </form>
                </div> 
                <!-- //검색박스 end -->

                <!-- 갤러리 게시판 -->
                <div class="galleryList">
                
                <ul>
                	<li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course05.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                    
                    <li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course02.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/">「역량기반 창의융합 학부교육 선도모델」</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                    
                    <li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course03.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                    
                    <li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course01.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                    
                    <li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course04.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/">「역량기반 창의융합 학부교육 선도모델」</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                    
                    <li>
                    	<div class="galleryImg"><img src="/images/cschool/3pic_course03.jpg" width="260"></div>
                    	<p class="galleryTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></p>
                        <p class="galleryDate">2015-01-15  조회 : 250</p>
                    </li>
                </ul>
                
                
                </div>
                <!-- //갤러리 게시판 -->    
                
                
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