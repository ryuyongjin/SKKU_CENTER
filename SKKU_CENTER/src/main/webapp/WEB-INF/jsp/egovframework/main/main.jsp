<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript" src="./common/js/main.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 0, sn: 0 });
    });
</script>
</head>

<body>

<div id="wrap">

	<!-- header -->
    <%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>
    <!-- //header -->
    

    <!-- main_visual -->
    <div class="mainVisual">
        <!-- images -->
        <div id="rollingBanner">
        <div id="rollingImg_0" style="display:none;"><img src="./images/main/main_visual01.jpg" alt="" /></div>
        <div id="rollingImg_1" style="display:none;"><img src="./images/main/main_visual02.jpg" alt="" /></div>    
        <div id="rollingImg_2" style="display:none;"><img src="./images/main/main_visual03.jpg" alt="" /></div>
        </div>
        <!-- //images --> 
        
        <!-- btn -->
        <div class="btn_text_box">
            <!-- 오른쪽버튼 -->
            <p class="btn_right"><a class="#none"><img src="./images/main/btn_visual_right.gif" alt="다음버튼" /></a></p>
            <!-- //오른쪽버튼 -->
            <!-- 왼쪽버튼 -->
            <p class="btn_left"><a class="#none"><img src="./images/main/btn_visual_left.gif" alt="이전버튼" /></a></p>
            <!-- //왼쪽버튼 -->
            
            <!-- cnt -->
            <div class="cnt">
            <a href="#none"><img id="bannerOpt2" alt="" src="./images/main/ico_curcle_on.gif"></a>
            <a href="#none"><img id="bannerOpt0" alt="" src="./images/main/ico_curcle.gif"></a>
            <a href="#none"><img id="bannerOpt1" alt="" src="./images/main/ico_curcle.gif"></a>     
            </div>
            <!--  //cnt -->
        </div>
        <!-- //btn -->   
    </div>
    <!-- //main_visual -->


    <!-- container -->
    <div id="container"> 
    
        <!-- 메인 내용 -->
        <div class="mainContent">
        
        
        	<!-- C-SCHOOL -->
            <div class="cschoolBox">
            	<h3>C-SCHOOL</h3>
                <div class="colorBox colorBoxbg1">
                	<p>융합기반 지식생태계 구축<br />
					개방형 융합교육 플랫폼 창출</p>
                </div>
                
                <ul class="bannerList">
                	<li>
                    	<a href="/">
                            <div class="ico"><img src="./images/main/ico_cschool01.png" alt="" ></div>
                            <p>교육과정</p>
                            <span>학생중심 창의융합형 교육과정 운영</span>
                        </a>
                    </li>
                    <li>
                    	<a href="/">
                            <div class="ico"><img src="./images/main/ico_cschool02.png" alt="" ></div>
                            <p>C-Office</p>
                            <span>맞춤형 교육정보 제공 및 경력 개발 지원</span>
                        </a>
                    </li>
                </ul>
                <div class="bannerBtn">
                	<a href="/">
	                    <div class="ico"><img src="./images/main/ico_cschool03.png" alt="" ></div>
                        <p>C-advisor 상담 예약<img src="./images/main/btn_squire_arrow1.gif" alt="" ></p>
                        <span>CI인증 / C-School 상담요청</span>                        
                    </a>
                </div>
            
            </div>
            <!-- //C-SCHOOL -->
            
            <!-- ACE -->
            <div class="aceBox">
            	<h3>ACE</h3>
                
                <div class="colorBox colorBoxbg2">
                	<p>학부교육 패러다임 질적 전환<br />
					성대형 학부교육 선도모델 확산</p>
                </div>
                
                <ul class="bannerList">
                	<li>
                    	<a href="/">
                            <div class="ico"><img src="./images/main/ico_ace01.png" alt="" ></div>
                            <p>창의리더 역량개발</p>
                            <span>성균 핵심인재 양성을 위한 비교과 프로그램</span>
                        </a>
                    </li>
                    <li>
                    	<a href="/">
                            <div class="ico"><img src="./images/main/ico_ace02.png" alt="" ></div>
                            <p>효과성 프로그램</p>
                            <span>대학교육의 질적 향상을 위한 연구 및 분석</span>
                        </a>
                    </li>
                    <li>
                    	<a href="/">
                            <div class="ico"><img src="./images/main/ico_ace03.png" alt="" ></div>
                            <p>ACE 모델 공유·확산</p>
                            <span>프로그램 지원 및 타대학과의 공유</span>
                        </a>
                    </li>
                </ul>

            
            </div>
            <!-- //ACE -->
            
            <!-- 공지사항/배너 -->
            <div class="noticeBox">
            	<div class="noticeList">
                    <h3>NOTICE</h3>
                    <span class="more"><a href="/">더보기 &gt;</a></span>
                    
                    <dl>
                        <dt><a href="/">대학교육혁신센터 공지사항 내용</a></dt>
                        <dd>2015/02/31</dd>
                        <dt><a href="/">ACE 사업 소감사례 게시판</a></dt>
                        <dd>2015/02/31</dd>
                        <dt><a href="/">글로벌 창의 리더 인재양성</a></dt>
                        <dd>2015/02/31</dd>
                        <dt><a href="/">글로벌 창의 리더 인재양성</a></dt>
                        <dd>2015/02/31</dd>
                        <dt><a href="/">창조경제를 견인할 인재양성</a></dt>
                        <dd>2015/02/31</dd>
                        <dt><a href="/">공지사항 추가</a></dt>
                        <dd>2015/02/31</dd>
                    </dl>
                </div>
                
                <div class="banner">
                	<img src="./images/main/main_banner.gif" alt="연구보고서 및 자료" >
                </div>
            
            </div>
            <!-- //공지사항/배너 -->            


        
        </div>
        <!-- //메인 내용 -->
    
    </div>
    <!-- //container -->


	<!-- footer -->
    <%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>
    <!-- //footer -->
    
</div>

</body>
</html>