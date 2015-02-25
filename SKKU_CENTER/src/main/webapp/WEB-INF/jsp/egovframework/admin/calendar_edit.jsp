<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
</head>

<body>


<!-- wrap -->
<div id="wrap">    
    

<div class="popWrap">
<h2>캘린더수정</h2>

				<!-- 캘린더수정 폼 start -->
            	<div class="writeType2">
                <table summary="캘린더수정 폼">
                <caption>캘린더수정 정보</caption>
                    <colgroup>
                        <col style="width:110px">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">학과</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">학년</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">학번</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">이름</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td><input type="text" name="wr_subject" size="6"> - <input type="text" name="wr_subject" size="6"> - <input type="text" name="wr_subject" size="6"></td>
                        </tr>
                        <tr>
                            <th scope="row">예약일</th>
                            <td><input type="text" name="wr_subject" size="50" class="input100"></td>
                        </tr>
                        <tr>
                            <th scope="row">예약현황</th>
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
                <!-- //캘린더수정 폼 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ac">
                	<a href="./" class="btnGray">수정</a>
                    <a href="./" class="btnGray">삭제</a>
                </div>
                <!-- //버튼 end -->


    
</div>   
    

</div>
<!-- //wrap -->

</body>
</html>