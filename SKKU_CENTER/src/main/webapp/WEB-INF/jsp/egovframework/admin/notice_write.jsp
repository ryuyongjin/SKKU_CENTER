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