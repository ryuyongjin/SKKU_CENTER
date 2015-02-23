<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 5, snThird: 1 });
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
                <li>C-School</li>
                <li>커뮤니티</li>
                <li>NEWS</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_cschool.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            NEWS
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                

                
                
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
                        	<th scope="col" class="num">번호</th>
                            <th scope="col" class="subject">제목</th>
                            <th scope="col" class="file">파일</th>
                            <th scope="col" class="date">작성일</th>
                            <th scope="col" class="hit">조회</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="num"><span class="notice">공지</span></td>
                            <td class="subject"><a href="./notice_view.jsp">대학교육혁신센터(CIHE)</a></td>
                            <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                        <tr>
                            <td class="num">1</td>
                            <td class="subject"><a href="./notice_view.jsp">Creative Design Studio CI Office(인사캠)</a></td>
                            <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                        <tr>
                            <td class="num">1</td>
                            <td class="subject"><a href="./notice_view.jsp">나만의 효율적인 학습을 위한 Learning Aid'프로그램</a> <a href="/" class="btnBlues">행사중</a></td>
                            <td class="file"><img src="/images/bbs/ico_file.gif" alt="file"></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                

                
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