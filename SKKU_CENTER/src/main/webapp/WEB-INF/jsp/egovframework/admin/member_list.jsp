<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/admin/include/admin_head.jsp" %>
</head>

<body>


<!-- wrap -->
<div id="wrap">    
    
    
    <!-- header -->
    <%@ include file="/admin/include/admin_header.jsp" %>
    <!-- //header -->
    
    
    <!-- container -->
    <div id="admin_container">
    
    	<!-- 상단 타이틀 -->
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>공지사항</h3>
    		    <h2>| 기본관리</h2>
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

                <!-- 게시판 -->
                <div class="boardList">
                <table summary="게시판 번호, 제목, 작성자, 작성일, 조회수 구성">
                <caption>공지사항 목록</caption>

                	<thead>
                    	<tr>
                        	<th scope="col"><input type="checkbox" name="checkbox" value="1"></th>
                        	<th scope="col" class="num">번호</th>
                            <th scope="col" class="date">등록일</th>
                            <th>아이디(E-mail)</th>
                            <th>이름/직위/직급</th>
                            <th>대학 및 기관</th>
                            <th>학과(부) 및 부서</th>
                            <th>연락처</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>dkdkdkk@skku.edu</td>
                            <td>홍길동 팀장</td>
                            <td>한국대학교 의과대학</td>
                            <td>간호학부 행정실</td>
                            <td>010-2899-8745</td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>dkdkdkk@skku.edu</td>
                            <td>홍길동 팀장</td>
                            <td>한국대학교 의과대학</td>
                            <td>간호학부 행정실</td>
                            <td>010-2899-8745</td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>dkdkdkk@skku.edu</td>
                            <td>홍길동 팀장</td>
                            <td>한국대학교 의과대학</td>
                            <td>간호학부 행정실</td>
                            <td>010-2899-8745</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                
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
    <%@ include file="/admin/include/admin_footer.jsp" %>
    <!-- //footer -->
    
    
    </div>
    <!-- //container -->
    
    
    
    

</div>
<!-- //wrap -->

</body>
</html>