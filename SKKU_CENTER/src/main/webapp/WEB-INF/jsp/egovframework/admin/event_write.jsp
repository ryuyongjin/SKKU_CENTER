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
		        <h3>행사등록관리</h3>
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
                            <th scope="row">행사추가</th>
                            <td><input type="text" name="wr_subject" size="50" class="input50"><a href="./" class="btnGrays">등록</a></td>
                        </tr>
                        <tr>
                            <th scope="row">행사명</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">행사체크</th>
                            <td>
                            	<!-- 행사 체크 -->
                            	<table class="nonTable">
                                	<tr>
                                    	<td>
                                        	<input type="checkbox" name="checkbox" value="1"> * 이름<br>
                                            <input type="checkbox" name="checkbox" value="1"> * 연락처<br>
                                            <input type="checkbox" name="checkbox" value="1"> * 이메일<br>
                                            <input type="checkbox" name="checkbox" value="1"> * 기타<br>
                                        </td>
                                        <td>
                                        	<input type="radio" name="radio" value="1"> 소속기관 - 부서명 - 직위/직함 <br>
                                            <input type="radio" name="radio" value="1"> 학과(부) - 학년 - 학번
                                        </td>
                                    </tr>
                                </table>
                                <!-- //행사 체크 -->
                            
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 글쓰기 폼 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="/" class="btnGray">수정</a> <a href="notice.jsp" class="btnWhite ml10">삭제</a>
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