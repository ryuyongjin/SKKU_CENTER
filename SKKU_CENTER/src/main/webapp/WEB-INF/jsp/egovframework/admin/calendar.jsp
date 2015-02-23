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
                
                	<ul class="btnWrap2">
                    	<li>
                        	<input type="text" name="year" id="year" > 년
							<!--<select name="year" ​ id="year" >
                                <option value="2015년">2015년</option>
                                <option value="2014년" >2014년</option>
                                <option value="2013년" >2013년</option>
                                <option value="2012년" >2012년</option>
                            </select>-->
                            
                            <select name="month" ​ id="month" >
                                <option value="1월">1월</option>
                                <option value="2월" >2월</option>
                                <option value="3월" >3월</option>
                                <option value="4월" >4월</option>
                                <option value="5월" >5월</option>
                                <option value="6월" >6월</option>
                                <option value="7월" >7월</option>
                                <option value="8월" >8월</option>
                                <option value="9월" >9월</option>
                                <option value="10월" >10월</option>
                                <option value="11월" >11월</option>
                                <option value="12월" >12월</option>
                            </select>
                            
                            <select name="week" ​ id="week" >
                                <option value="1주">1주</option>
                                <option value="2주" >2주</option>
                                <option value="3주" >3주</option>
                                <option value="4주" >4주</option>
                                <option value="5주" >5주</option>
                            </select>
                            
                            <a href="./" class="btnGrays">검색</a> 
                            
                        </li>
                        <li>
                        	<a href="./"><img src="../images/common/btn_prev.gif" alt="이전주"></a> 
	                        <a href="./"><img src="../images/common/btn_next.gif" alt="다음주"></a>
                        </li>
                    </ul>

                    
                </div>
                <!-- //상세검색 start -->
                
                
                
                


                <!-- 캘린더 -->
                <!--
                .ca_counIng		신청중
                .ca_reserveEnd	예약완료
                .ca_counEnd		상담완료
                .ca_reserveIng	예약보류
                -->
                <div class="boardList mt30">
                <table summary="상담예약 시간/주 구성">
                <caption>상담예약 시간/주 목록</caption>
					<colgroup>
                    	<col style="width:auto;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                        <col style="width:12%;"/>
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">시간</th>
                            <th scope="col">1.3(월)</th>
                            <th scope="col">1.4(화)</th>
                            <th scope="col">1.5(수)</th>
                            <th scope="col">1.6(목)</th>                            
                            <th scope="col">1.7(금)</th>
                            <th scope="col">1.8(토)</th>
                            <th scope="col">1.9(일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        	<th scope="row">10:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">10:30</th>
                            <td> </td>
                            <td class="ca_reserveEnd"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">홍길동 <br>예약완료</a></td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td class="ca_counIng"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">강미화 <br>신청중</a></td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">11:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td class="ca_reserveEnd"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">김기상 <br>예약완료</a></td>
                            <td class="ca_counEnd"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">하지원 <br>상담완료</a></td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">11:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">12:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td class="ca_reserveIng"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">현빈 <br>예약보류</a></td>
                            <td> </td>
                            <td class="ca_reserveIng"><a href="#none" onClick="window.open('./calendar_edit.jsp','캘린더수정','width=500,height=550,scrollbars=yes,left=150,top=100')">지성 <br>예약보류</a></td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">12:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">13:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">13:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">14:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">14:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">15:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">15:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">16:00</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>
                        
                        <tr>
                        	<th scope="row">16:30</th>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                            <td> </td>
                        </tr>

                    </tbody>
                </table>
                </div>
                <!-- //캘린더 -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap">
                	<a href="./" class="btnGray">리스트 보기</a>
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