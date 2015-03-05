<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_head.jsp" %>
<script type="text/javascript">
_editor_area = "nttCn";
_editor_url = "<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/'/>";
</script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cop/bbs/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/html/egovframework/com/cmm/utl/htmlarea3.0/htmlarea.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/fms/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/sym/cal/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript">
	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		
		if($("#bbsId") == "") {
			alert("구분을 선택해 주세요.");
			$("#bbsId").focus();
			return;
		}
		
		document.board.onsubmit();
		

		var ntceBgnde = eval(document.getElementById("ntceBgnde").value);
		var ntceEndde = eval(document.getElementById("ntceEndde").value);


		if(ntceBgnde > ntceEndde){
			alert("게시기간 종료일이 시작일보다 빠릅니다.");
			return;
		}

		if (!validateBoard(document.board)){
			return;
		}

		if (confirm('<spring:message code="common.regist.msg" />')) {
			//document.board.onsubmit();
			document.board.action = "<c:url value='/admin/insertNotice.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/admin/notice.do'/>";
		document.board.submit();
	}
	function makeFileAttachment(){
		 var maxFileNum = document.board.posblAtchFileNumber.value;
	     if(maxFileNum==null || maxFileNum==""){
	    	 maxFileNum = 3;
	     }
		 var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
		 multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );
	}
</script>
</head>
<body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttSj.focus(); makeFileAttachment();">
<form:form commandName="board" name="board" method="post" enctype="multipart/form-data">
<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
<input type="hidden" name="bbsAttrbCode" value="" />
<input type="hidden" name="bbsTyCode" value="" />
<input type="hidden" name="replyPosblAt" value="" />
<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
<input type="hidden" name="posblAtchFileNumber" value="3" />
<input type="hidden" name="posblAtchFileSize" value="" />
<input type="hidden" name="tmplatId" value="" />
<input type="hidden" name="cal_url" value="<c:url value='/sym/cal/EgovNormalCalPopup.do'/>" />
<input type="hidden" name="authFlag" value="" />
<input type="hidden" name="ntcrNm" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input type="hidden" name="password" value="dummy">	<!-- validator 처리를 위해 지정 -->
<input id="ntceBgnde" name="ntceBgnde" type="hidden" value="10000101">
<input id="ntceEndde" name="ntceEndde" type="hidden" value="99991231">
<div id="wrap">
    <%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_header.jsp" %>
    <div id="admin_container">
    	<!-- 상단 타이틀 -->
    	<div class="admin_title">
            <div class="admin_path">
		        <h3>공지사항</h3>
    		    <h2>| 기본관리</h2>
            </div>
        </div>
    	<div class="admin_content"> 
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
                            <select name="bbsId" ​ id="bbsId">
                                <option value="">선택하세요.</option>
                                <option value="BBSMSTR_000000000031" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000031'}">selected="selected"</c:if>>센터</option>
                                <option value="BBSMSTR_000000000032" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000032'}">selected="selected"</c:if>>대학특성화</option>
                                <option value="BBSMSTR_000000000033" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000033'}">selected="selected"</c:if>>C-School</option>
                                <option value="BBSMSTR_000000000034" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000034'}">selected="selected"</c:if>>ACE</option>
                                <option value="BBSMSTR_000000000035" <c:if test="${searchVO.bbsId == 'BBSMSTR_000000000035'}">selected="selected"</c:if>>대학연구</option>
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
                            <!-- <a href="/" class="btnBlues">행사신청시작</a> -->
                            </td>
                        </tr>
                        <!-- <tr>
                            <th scope="row">옵션</th>
                            <td><input type="checkbox" name="notice" value="1">공지</td>
                        </tr> -->
                        <tr>
                            <th scope="row"><label for="nttSj">제목</label></th>
                            <td>
                            	<input id="nttSj" name="nttSj" type="text" size="60" value="" class="input100" maxlength="60" title="제목입력">
	      						<br/><form:errors path="nttSj" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="nttCn">내용</label></th>
                            <td>
                            	<textarea id="nttCn" name="nttCn" cols="75" rows="28" style="width:550px;" title="내용입력" class="textarea100"></textarea>
	      						<form:errors path="nttCn" />
                            </td>
                        </tr>
                        <!-- <tr>
                            <th><label for="wr_link">링크</label></th>
                            <td><input type="text" name="wr_link" id="wr_link" size="50" class="input100"></td>
                        </tr> -->
                        <tr>
                            <th>첨부파일</th>
                            <td>
                            	<input name="file_1" id="egovComFileUploader" type="file" title="첨부파일입력" class="frm_file frm_input" /><br /><br />
                            	<div id="egovComFileList"></div>
                            	
                            	<!-- <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" >
								    <tr>
								        <td><input name="file_1" id="egovComFileUploader" type="file" title="첨부파일입력" class="frm_file frm_input" /></td>
								    </tr>
								    <tr>
								        <td>
								        	<div id="egovComFileList"></div>
								        </td>
								    </tr>
					   	        </table> -->
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <div class="btnWrap ac">
                	<a href="#Link" onclick="javascript:fn_egov_regist_notice();return false;" class="btnGray">글쓰기</a> 
                	<a href="javascript:fn_egov_select_noticeList();" class="btnWhite ml10">목록</a>
                </div>
        	</div>
    		<%@ include file="/WEB-INF/jsp/egovframework/admin/include/admin_footer.jsp" %>
    </div>
</div>
<!-- //wrap -->
</form:form>
</body>
</html>