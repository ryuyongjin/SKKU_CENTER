<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 4 });
    });
</script>
</head>

<body>

<div id="wrap">

	<!-- header -->
	<%@ include file="/include/header.jsp" %>
    <!-- //header -->


	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>센터소개</li>
                <li>공지사항</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/include/lnb_about.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            공지사항
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
				

                
                <!-- 게시판 글쓰기 폼 start -->
            	<div class="writeType1">
                <table summary="글쓰기 폼">
                <caption>게시판 글쓰기 정보</caption>
                    <colgroup>
                        <col style="width:110px">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                    	<tr>
                            <th scope="row">구분</th>
                            <td>
                            <select name="category" ​ id="category" >
                                <option value="">선택하세요.</option>
                                <option value="센터">센터</option>
                                <option value="대학특성화" >대학특성화</option>
                                <option value="C-School" >C-School</option>
                                <option value="ACE" >ACE</option>
                                <option value="대학연구" >대학연구</option>
                            </select>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">행사선택</th>
                            <td>
                            <input type="checkbox" name="notice" value="1">
                            
                            <select name="category" ​ id="category" >
                                <option value="">선택하세요.</option>
                                <option value="센터">센터</option>
                                <option value="대학특성화" >대학특성화</option>
                                <option value="C-School" >C-School</option>
                                <option value="ACE" >ACE</option>
                                <option value="대학연구" >대학연구</option>
                            </select>
                            <a href="/" class="btnBlues">행사신청시작</a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">옵션</th>
                            <td><input type="checkbox" name="notice" value="1">공지</td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="wr_subject">제목</label></th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="wr_content">내용</label></th>
                            <td><textarea name="wr_content" id="wr_content" class="textarea100"></textarea>​</td>
                        </tr>
                        <tr>
                            <th><label for="wr_link">링크</label></th>
                            <td><input type="text" name="wr_link" id="wr_link" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th>첨부파일</th>
                            <td><input type="file" name="bf_file[]" title="파일첨부" class="frm_file frm_input"></td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 글쓰기 폼 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="/" class="btnGray">글쓰기</a> <a href="notice.jsp" class="btnWhite ml10">목록</a>
                </div>
                <!-- //버튼 end -->
                

           

                



            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------->
         


        
        </div>
        <!-- //서브본문 감싸기 -->
    
    </div>
    <!-- //왼쪽메뉴,본문 container -->


	<!-- footer -->
	<%@ include file="/include/footer.jsp" %>
    <!-- //footer -->
    
</div>

</body>
</html>