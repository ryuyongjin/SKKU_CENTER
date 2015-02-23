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
		        <h3>C-Advisor 상담예약</h3>
    		    <h2>| C-School</h2>
            </div>
        </div>
        <!-- //상단 타이틀 -->
        
        <!-- 본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    	<div class="admin_content"> 
        
        
           
    	
        
        
        		<!-- 상세검색 start -->
                <div class="whiteBox">
                
                    <label for="searchStartDate">기간</label> 
                    <input type="text" id="createDtView" onfocusX="goReset();" title="기간검색시작일" /> - <input type="text" id="createDtView2" onfocusX="goReset();" title="기간검색종료일" /> 
                    
                    <div class="grayBox mt5">
                        <input type="radio" name="all" value="전체"> <label for="all">전체</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="request1" value="신청중"> <label for="request1">신청중</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="request2" value="예약완료"> <label for="request2">예약완료</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="request3" value="상담완료"> <label for="request3">상담완료</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="request4" value="예약보류"> <label for="request4">예약보류</label> 
                    </div>
                    
                    
                    <div class="mt10">
                    <a href="./" class="btnGray">검색</a>&nbsp;&nbsp;&nbsp;<a href="./" class="btnWhite">엑셀파일 다운로드</a>
                    </div>
                    
                </div>
                <!-- //상세검색 start -->
                
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ar">
                	<a href="./calendar.jsp" class="btnGreen">캘린더보기</a>
                </div>
                <!-- //버튼 end -->
                
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
                            <th scope="col" class="date">신청일</th>
                            <th scope="col">학과</th>
                            <th scope="col">학년</th>
                            <th scope="col" class="name">성명</th>                            
                            <th scope="col">상담예약일</th>
                            <th scope="col">현황</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>글로벌경영학과</td>
                            <td>4학년</td>
                            <td class="name">하지원</td>
                            <td>2015-01-20(수)  13:30</td>
                            <td>
                            <select name="category" ​ id="category" >
                                <option value="신청중">신청중</option>
                                <option value="예약완료" >예약완료</option>
                                <option value="상담완료" >상담완료</option>
                                <option value="예약보류" >예약보류</option>
                            </select>
                            </td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>글로벌경영학과</td>
                            <td>4학년</td>
                            <td class="name">하지원</td>
                            <td>2015-01-20(수)  13:30</td>
                            <td>
                            <select name="category" ​ id="category" >
                                <option value="신청중">신청중</option>
                                <option value="예약완료" >예약완료</option>
                                <option value="상담완료" >상담완료</option>
                                <option value="예약보류" >예약보류</option>
                            </select>
                            </td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="checkbox" value="1"></td>
                            <td class="num">123</td>
                            <td class="date">2015-03-31</td>
                            <td>글로벌경영학과</td>
                            <td>4학년</td>
                            <td class="name">하지원</td>
                            <td>2015-01-20(수)  13:30</td>
                            <td>
                            <select name="category" ​ id="category" >
                                <option value="신청중">신청중</option>
                                <option value="예약완료" >예약완료</option>
                                <option value="상담완료" >상담완료</option>
                                <option value="예약보류" >예약보류</option>
                            </select>
                            </td>
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