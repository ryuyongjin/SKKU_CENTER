<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script>
	$(document).ready(function(){
		<c:if test="${msg != '' and fn:length(msg) > 0}">
			alert("${msg}");
			if('${params.mode}' == 'mod') {
				opener.changeStatus("${params.mode}", "${resvInfo.nttId}", $("#status").val(), $("#ntcrNm").val());
			} else if('${params.mode}' == 'del'){
				opener.changeStatus("${params.mode}", "${deletedNttId}", $("#status").val(), $("#ntcrNm").val());
			} else {
				opener.changeStatus("${params.mode}", "", "${params.status}", "${params.ntcrNm}");
			}
			window.close();
		</c:if>
	});
	
	function modify() {
		
		var major = $("#major").val();
		var schoolNo = $("#schoolNo").val();
		var nttSj = $("#nttSj").val();
		var ntcrNm = $("#ntcrNm").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var resvDateHan = $("#resvDateHan").val();
		var nttCn = $("#nttCn").val();
		
		if(major == "") {
			alert("학과를 입력해주세요.");
			$("#major").focus();
			return;
		}
		
		if(nttSj == "") {
			alert("학년을 입력해주세요.");
			$("#nttSj").focus();
			return;
		}
		
		if(ntcrNm == "") {
			alert("이름을 입력해주세요.");
			$("#ntcrNm").focus();
			return;
		}
		
		if(schoolNo == "") {
			alert("학번을 입력해주세요.");
			$("#schoolNo").focus();
			return;
		}
		
		if(phone == "") {
			alert("연락처를 입력해주세요.");
			$("#phone").focus();
			return;
		}
		
		if(email == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(!validateEmail(email)) {
			alert("정상적인 이메일주소를 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(resvDateHan == "") {
			alert("상담일을 입력해주세요.");
			$("#resvDateHan").focus();
			return;
		}
		
		if(nttCn == "") {
			alert("상담내용을 입력해주세요.");
			$("#nttCn").focus();
			return;
		}
		
		$("#mode").val("mod");
		document.frm.submit(); 
	}
	
	function doDelete() {
		$("#mode").val("del");
		document.frm.submit();
	}
	
	function doRegist() {
		
		var major = $("#major").val();
		var schoolNo = $("#schoolNo").val();
		var nttSj = $("#nttSj").val();
		var ntcrNm = $("#ntcrNm").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var resvDateHan = $("#resvDateHan").val();
		var nttCn = $("#nttCn").val();
		
		if(major == "") {
			alert("학과를 입력해주세요.");
			$("#major").focus();
			return;
		}
		
		if(nttSj == "") {
			alert("학년을 입력해주세요.");
			$("#nttSj").focus();
			return;
		}
		
		if(ntcrNm == "") {
			alert("이름을 입력해주세요.");
			$("#ntcrNm").focus();
			return;
		}
		
		if(schoolNo == "") {
			alert("학번을 입력해주세요.");
			$("#schoolNo").focus();
			return;
		}
		
		if(phone == "") {
			alert("연락처를 입력해주세요.");
			$("#phone").focus();
			return;
		}
		
		if(email == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(!validateEmail(email)) {
			alert("정상적인 이메일주소를 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(resvDateHan == "") {
			alert("상담일을 입력해주세요.");
			$("#resvDateHan").focus();
			return;
		}
		
		if(nttCn == "") {
			alert("상담내용을 입력해주세요.");
			$("#nttCn").focus();
			return;
		}
		
		$("#mode").val("regTran");
		document.frm.submit();
	}
	
	function validateEmail(email) { 
	    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    return re.test(email);
	} 
</script>
</head>
<body>
<form name="frm" action ="<c:url value='/admin/calendar_edit.do'/>" method="post" enctype="multipart/form-data">
<c:choose>
	<c:when test="${params.mode == 'reg'}">
		<input type="hidden" id="bbsId" name="bbsId" value="<c:out value='${params.bbsId}'/>" />
	</c:when>
	<c:otherwise>
		<input type="hidden" id="bbsId" name="bbsId" value="<c:out value='${resvInfo.bbsId}'/>" />
		<input type="hidden" id="nttId" name="nttId"  value="${resvInfo.nttId}" />
	</c:otherwise>
</c:choose>
<input type="hidden" id="mode" name="mode"  value="" />
<input type="hidden" id="adminYn" name="adminYn"  value="Y" />
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
<input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">

	<div id="wrap">    
	<div class="popWrap">
		<h2>캘린더수정</h2>
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
                            <td><input type="text" id="major" name="major" size="50" class="input100" value="${resvInfo.major}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">학년</th>
                            <td><input type="text" id="nttSj" name="nttSj" size="50" class="input100" value="${resvInfo.nttSj}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">학번</th>
                            <td><input type="text" id="schoolNo" name="schoolNo" size="50" class="input100" value="${resvInfo.schoolNo}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">이름</th>
                            <td><input type="text" id="ntcrNm" name="ntcrNm" size="50" class="input100" value="${resvInfo.ntcrNm}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td><input type="text" id="phone" name="phone" size="50" class="input100" value="${resvInfo.phone}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">이메일</th>
                            <td><input type="text" id="email" name="email" size="50" class="input100" value="${resvInfo.email}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">예약일</th>
                            <td>
                            	<c:choose>
                            		<c:when test="${params.mode == 'reg'}">
                            			<input type="hidden" name="resvDate" id="resvDate" value="${params.selectedDate}">
                            			<input type="hidden" name="resvTime" id="resvTime" value="${params.selectedTime}">
                            			${fn:substring(params.selectedDate,0,4)}-${fn:substring(params.selectedDate,4,6)}-${fn:substring(params.selectedDate,6,8)} ${params.selectedTime}분
                            		</c:when>
                            		<c:otherwise>
                            			${fn:substring(resvInfo.resvDate,0,4)}-${fn:substring(resvInfo.resvDate,4,6)}-${fn:substring(resvInfo.resvDate,6,8)} ${resvInfo.resvTime}분
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                        </tr>
                        <tr>
                        	<th scope="row">상담내용</th>
                            <td><textarea id="nttCn" name="nttCn" class="textarea100">${resvInfo.nttCn}</textarea></td>
                        </tr>
                        <c:if test="${params.mode != 'reg'}">
                        <tr>
                            <th scope="row">예약현황</th>
                            <td>
                            <select name="status" ​ id="status" >
                                <option value="A" <c:if test="${resvInfo.status == 'A'}">selected="selected"</c:if>>신청중</option>
                                <option value="B" <c:if test="${resvInfo.status == 'B'}">selected="selected"</c:if>>예약완료</option>
                                <option value="C" <c:if test="${resvInfo.status == 'C'}">selected="selected"</c:if>>상담완료</option>
                                <option value="D" <c:if test="${resvInfo.status == 'D'}">selected="selected"</c:if>>예약보류</option>
                            </select>
                            </td>
                        </tr>
                        </c:if>
                    </tbody>
                </table>                    
              </div>
              <div class="btnWrap ac">
              <c:choose>
	              <c:when test="${params.mode == 'reg'}">
	              	<a href="javascript:doRegist();" class="btnGray">등록</a>
	              </c:when>
	              <c:otherwise>
              		<a href="javascript:modify();" class="btnGray">수정</a>
              		<a href="javascript:doDelete();" class="btnGray">삭제</a>
	              </c:otherwise>
              </c:choose>
                <a href="javascript:window.close();" class="btnGray">닫기</a>
              </div>
		</div>   
	</div>
</form>
</body>
</html>