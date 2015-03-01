<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        $("#timeTable td").hover(function() {
        	var cls = $(this).attr("class");
        	if(!cls) {
        		$(this).addClass("ca_choose");
        	}	
        },function() {
        	$(this).removeClass("ca_choose");
        });
        
        $("#timeTable td").click(function() {
        	
        	var cls = $(this).attr("class");
        	
        	if(cls == "ca_choose") {
	        	$("#timeTable td").each(function() {
	        		$(this).removeClass("ca_choosed");
	        	});
        	
        		// 일자 셋팅
        		var index = $(this).parent().find("td").index($(this));
        		var day = $("#week th").eq(index+1).find("span").eq(0).text();
        		var date = $("#week th").eq(index+1).find("span").eq(1).text();
        		var time = $(this).siblings("th").text();
        		
        		$(this).addClass("ca_choosed");
        		
        		$("#selectedDate").val(date);
        		$("#selectedTime").val(time);
        		
        		window.open('/admin/calendar_edit.do?bbsId=BBSMSTR_000000000021&mode=reg&selectedDate='+date+'&selectedTime='+time,'캘린더수정','width=500,height=590,scrollbars=yes,left=150,top=100');
        	}
        	
        });
    });
    
    function search() {
    	
    	if($("#year").val() == "") {
    		alert("검색년도를 입력해주세요.");
    		$("#year").focus();
    		return;
    	} else {
	    	var frm = document.calendar;
	    	frm.action = "<c:url value='/admin/calendar.do'/>";
	    	frm.submit();
    	}
    }
    
    <%// 선택완료%>
    function done() {
    	
    	var date = $("#selectedDate").val();
    	var time = $("#selectedTime").val();
    	var dateHan = $("#timeArea").text();
    	
    	if(dateHan == "") {
    		alert("상담예약일을 선택해주세요.");
    		return;
    	}
    	
    	opener.setDate(date, time, dateHan);
    	window.close();
    }
    
	<%//이전 주%>    
    function prevWeek() {
    	var frm = document.calendar;
    	$("#prevWeek").val("Y");
    	frm.action = "<c:url value='/admin/calendar.do'/>";
    	frm.submit();
    }
    <%//다음 주%>
    function nextWeek() {
    	var frm = document.calendar;
    	$("#nextWeek").val("Y");
    	frm.action = "<c:url value='/admin/calendar.do'/>";
    	frm.submit();
    }
    
    <% // 상담수정팝업에서, 호출%>
    function changeStatus(mode, id, status, name) {
    	var clsNm = "";
    	var statusNm = "";
    	
    	if(status == "B") {
    		clsNm = "ca_reserveEnd";
    		statusNm = "예약완료";
    	}
    	else if(status == "C") {
	   		clsNm = "ca_counEnd";
    		statusNm = "상담완료";
    	}
    	else if(status == "D") {
    		clsNm = "ca_reserveIng";
    		statusNm = "예약보류";
    	}
    	else {
    		clsNm = "ca_counIng";
    		statusNm = "신청중";
    	}
    	
    	if(mode == "mod") {
	    	$("#"+id).attr("class",clsNm); 
	    	$("#ntcrNm"+id).text(name);
	    	$("#statusArea"+id).text(statusNm);
    	} else if(mode == "del"){
    		$("#"+id).attr("class","");
    		$("#"+id).html("");
    	} else {
    		location.reload();
    		/* var frm = document.calendar;
        	frm.action = "<c:url value='/admin/calendar.do'/>";
        	frm.submit(); */
    	}
    	
    }
</script>
</head>
<body>
<form:form commandName="calendar" name="calendar" method="get">
<input type="hidden" id="changedDate" name="changedDate" value="${changedDate}" />
<input type="hidden" id="prevWeek" name="prevWeek" value="" />
<input type="hidden" id="nextWeek" name="nextWeek" value="" />
<input type="hidden" id="selectedTime" name="selectedTime" value="" />
<input type="hidden" id="selectedDate" name="selectedDate" value="" />
<input type="hidden" id="selectedId" name="selectedId" value="" />
<div id="wrap">
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_header.jsp" %>
    <div id="admin_container">    
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>C-Advisor 상담예약</h3>
    		    <h2>| C-School</h2>
            </div>
        </div>
    	<div class="admin_content"> 
                <div class="whiteBox">
                	<ul class="btnWrap2">
                    	<li>
							<select name="year" ​ id="year" >
								<option value="2015" <c:if test="${year == '2015'}">selected="selected"</c:if>>2015년</option>
                                <option value="2016" <c:if test="${year == '2016'}">selected="selected"</c:if>>2016년</option>
                            </select>
                            <select name="month" ​ id="month"><% //변경될때마다, 주가 4주인지,5주인지 체크 %>
                                <option value="1" <c:if test="${month eq '1'}">selected="selected"</c:if>>1월</option>
                                <option value="2" <c:if test="${month eq '2'}">selected="selected"</c:if>>2월</option>
                                <option value="3" <c:if test="${month == 3}">selected="selected"</c:if>>3월</option>
                                <option value="4" <c:if test="${month == 4}">selected="selected"</c:if>>4월</option>
                                <option value="5" <c:if test="${month == 5}">selected="selected"</c:if>>5월</option>
                                <option value="6" <c:if test="${month == 6}">selected="selected"</c:if>>6월</option>
                                <option value="7" <c:if test="${month == 7}">selected="selected"</c:if>>7월</option>
                                <option value="8" <c:if test="${month == 8}">selected="selected"</c:if>>8월</option>
                                <option value="9" <c:if test="${month == 9}">selected="selected"</c:if>>9월</option>
                                <option value="10" <c:if test="${month == 10}">selected="selected"</c:if>>10월</option>
                                <option value="11" <c:if test="${month == 11}">selected="selected"</c:if>>11월</option>
                                <option value="12" <c:if test="${month == 12}">selected="selected"</c:if>>12월</option>
                            </select>
                            <select name="weekOfMonth" ​ id="weekOfMonth">
                                <option value="1" <c:if test="${weekOfMonth eq '1'}">selected="selected"</c:if>>1주</option>
                                <option value="2" <c:if test="${weekOfMonth eq '2'}">selected="selected"</c:if>>2주</option>
                                <option value="3" <c:if test="${weekOfMonth eq '3'}">selected="selected"</c:if>>3주</option>
                                <option value="4" <c:if test="${weekOfMonth eq '4'}">selected="selected"</c:if>>4주</option>
                                <option value="5" <c:if test="${weekOfMonth eq '5'}">selected="selected"</c:if>>5주</option>
                            </select>
                            <a href="javascript:search();" class="btnGrays">검색</a> 
                        </li>
                        <li>
                        	<a href="javascript:prevWeek();"><img src="../images/common/btn_prev.gif" alt="이전주"></a> 
	                        <a href="javascript:nextWeek();"><img src="../images/common/btn_next.gif" alt="다음주"></a>
                        </li>
                    </ul>
                </div>
                <!-- 캘린더 -->
                <!--
                .ca_counIng		신청중
                .ca_reserveEnd	예약완료
                .ca_counEnd		상담완료
                .ca_reserveIng	예약보류
                -->
                <div class="calenderList mt30">
                <table summary="상담예약 시간/주 구성" id="timeTable">
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
                    	<tr id="week">
                        	<th scope="col">시간</th>
                            <c:forEach items="${thisWeekHangul}" var="day" varStatus="status">
                        		<th scope="col">
                        			${day}
                        			<span style="display:none;">${thisWeekHan[status.index]}</span>
                        			<span style="display:none;">${thisWeek[status.index]}</span>
                        		</th>
                        	</c:forEach>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${timeTable}" var="time" varStatus="status">
	                    	<tr>
	                        	<th scope="row">${time}</th>
	                        	<c:forEach items="${thisWeek}" var="day" varStatus="dayStatus">
	                        		<c:set var="style" value="" />
	                        		<c:set var="statusNm" value="" />
	                        		<c:set var="ntcrNm" value="" />
	                        		<c:set var="tdId" value="" />
	                        		<c:set var="params" value="" />
	                        		<c:forEach items="${resvList}" var="resvInfo" varStatus="resvStatus">
	                        			<c:if test="${resvInfo.resvDate == day and resvInfo.resvTime == time}">
	                        				<c:choose>
	                        					<c:when test="${resvInfo.status == 'A'}">
	                        						<c:set var="style" value="class='ca_counIng'" />
	                        					</c:when>
	                        					<c:when test="${resvInfo.status == 'B'}">
	                        						<c:set var="style" value="class='ca_reserveEnd'" />
	                        					</c:when>
	                        					<c:when test="${resvInfo.status == 'C'}">
	                        						<c:set var="style" value="class='ca_counEnd'" />
	                        					</c:when>
	                        					<c:when test="${resvInfo.status == 'D'}">
	                        						<c:set var="style" value="class='ca_reserveIng'" />
	                        					</c:when>
	                        				</c:choose>
	                        				<c:set var="statusNm" value="${resvInfo.statusNm}" />
	                        				<c:set var="ntcrNm" value="${resvInfo.ntcrNm}" />
	                        				<c:set var="params" value="?bbsId=BBSMSTR_000000000021&nttId=${resvInfo.nttId}" />
	                        				<c:set var="tdId" value="${resvInfo.nttId}" />
	                        			</c:if>
	                        		</c:forEach>
	                        		<c:if test="${today > day}"><c:set var="style" value="class='ca_grey'" /></c:if>
	                            	<td id="${tdId}" ${style}<c:if test="${(time == '12:00' or time == '12:30') or (dayStatus.index == 5 or dayStatus.index == 6)}">class="ca_gray"</c:if>>
	                            		<c:if test="${params != ''}">
		                            		<a href="#none" onClick="window.open('/admin/calendar_edit.do${params}','캘린더수정','width=500,height=590,scrollbars=yes,left=150,top=100')"><span id="ntcrNm${tdId}">${ntcrNm}</span> <br /><span id="statusArea${tdId}">${statusNm}</span></a>
	                            		</c:if>
	                            	</td>
	                        	</c:forEach>
	                        </tr>
                    	</c:forEach>
                    </tbody>
                </table>
                </div>
                <div class="btnWrap ac">
                	<a href="/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_000000000021" class="btnGray">리스트 보기</a>
                </div>
        </div>
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_footer.jsp" %>
    </div>
</div>
</form:form>
</body>
</html>