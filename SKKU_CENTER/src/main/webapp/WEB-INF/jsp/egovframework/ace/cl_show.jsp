<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 3, snThird: 2 });
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
                <li>ACE</li>
                <li>성대형 ACE 모델 확산</li>
                <li>창의리더 공모전</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_ace.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            창의리더 공모전
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	

                
                
                <!-- 회색박스 -->
                <div class="grayBox">
                	<ul class="listType1">
    	            	<li>공동체 시민의식과 협동역량을 갖춘 글로벌 창의리더를 양성하기 위해 일상의 작은변화, 그렇지만 일생을 큰 변화를 이끌 수 있는 치인(治人) 리더십의 원형을 찾아 이를 실행에 옮긴 사례를 발굴하고 장려하기 위해 기획된 프로그램입니다.</li>
                        <li>성균인의 정신을 담은 창의리더십을 주제로 하여 매년 1회 개최 되고 있으며 수상자에게는 총장 및 센터장 명의의 상장을 제공하고, 소정의 상금이 주어집니다.</li>
	                </ul>
                    
                    <div class="grayBoxcon">
                        <dl>
                            <dt>응모주제</dt>
                            <dd><span class="colorBlue">글로벌 시대의 창의적 리더</span></dd>
                        </dl>
                        <dl class="bn">
                            <dt>지원부문</dt>
                            <dd>
                            	<ul>
                                	<li><span class="colorBlue">1) 실천사례 활동보고서</span></li>
                                    <li class="ml20">재학기간 중 경험하고 실천하고 있는(노력중인) 창의력 또는 리더십과 관련된 나만의 사례 소개</li>
                                    <li class="mt10"><span class="colorBlue">2) UCC</span></li>
                                    <li class="ml20">성균관 정신과 청년 리더십, 창의력 등을 발휘 및 실천할 수 있는 영상물</li>
                                    <li class="mt10"><span class="colorBlue">3) 아이디어제안서</span></li>
                                    <li class="ml20">창의성과 리더십을 함께 배양할 수 있는 프로그램을 자유롭게 구성하여 사업계획서 형식으로 제출 </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>

                </div>
                <!-- //회색박스 -->
                
                
                
                
               
				<ul class="img3 mt20">
                	<li><img src="../images/ace/pic_show01.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_show02.jpg" alt="" class="img100"></li>
                    <li><img src="../images/ace/pic_show03.jpg" alt="" class="img100"></li>
                </ul> 
                
                
                
                
                <!-- 검색박스 start -->
                <div class="searchBox mt30">
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
                            <th scope="col" class="date">작성일</th>
                            <th scope="col" class="hit">조회</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="num"><span class="notice">공지</span></td>
                            <td class="subject"><a href="./notice_view.jsp">나만의 효율적인 학습을 위한 Learning Aid‘ 공모전</a></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                        <tr>
                            <td class="num">1</td>
                            <td class="subject"><a href="./notice_view.jsp">Creative Design Studio CI Office(인사캠)</a></td>
                            <td class="date">2015-03-31</td>
                            <td class="hit">20</td>
                        </tr>
                        <tr>
                            <td class="num">1</td>
                            <td class="subject"><a href="./notice_view.jsp">나만의 효율적인 학습을 위한 Learning Aid'프로그램</a></td>
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