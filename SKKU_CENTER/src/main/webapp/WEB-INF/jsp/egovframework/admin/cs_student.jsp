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
		        <h3>학생소감</h3>
    		    <h2>| C-School</h2>
            </div>
        </div>
        <!-- //상단 타이틀 -->
        
        <!-- 본문내용 ---------------------------------------------------------------------------------------------------------------------------------------------------->
    	<div class="admin_content"> 
        
        
           
    	
        
        
        
        
                
                
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

                <!-- 썸네일 게시판 -->
                <div class="thumbList">
                
                
                
                <dl>
                	<dt><img src="/images/cschool/3pic_course05.jpg" width="210"></dt>
                    <dd>
                    	<ul>
                        	<li class="thumbTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></li>
                            <li class="thumbCon">1주기 ACE사업에 대한 종합적 성찰과 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 심화 및 외적 확산 지속 추진 - 구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질  구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 ….</li>
                            <li class="thumbDate">2015-01-15  조회 : 250</li>
                        </ul>
                    </dd>
                </dl>
                
                
                 <dl>
                	<dt><img src="/images/cschool/3pic_course04.jpg" width="210"></dt>
                    <dd>
                    	<ul>
                        	<li class="thumbTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></li>
                            <li class="thumbCon">1주기 ACE사업에 대한 종합적 성찰과 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 심화 및 외적 확산 지속 추진 - 구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질  구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 ….</li>
                            <li class="thumbDate">2015-01-15  조회 : 250</li>
                        </ul>
                    </dd>
                </dl>
                
                
                <dl>
                	<dt><img src="/images/cschool/3pic_course02.jpg" width="210"></dt>
                    <dd>
                    	<ul>
                        	<li class="thumbTitle"><input type="checkbox" name="checkbox" value="1"> <a href="/"><행사> SKKU ACE 모델의 창조적 진화</a></li>
                            <li class="thumbCon">1주기 ACE사업에 대한 종합적 성찰과 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 심화 및 외적 확산 지속 추진 - 구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질  구성원의 공감대 형성과 감동 부여를 통해 학부교육의 총체적인 혁신과 체질 창조적 혁신을 통해 성대형 학부교육 선도모델의 내적 ….</li>
                            <li class="thumbDate">2015-01-15  조회 : 250</li>
                        </ul>
                    </dd>
                </dl>
                
                
                
                
                </div>
                <!-- //썸네일 게시판 -->
                
                
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