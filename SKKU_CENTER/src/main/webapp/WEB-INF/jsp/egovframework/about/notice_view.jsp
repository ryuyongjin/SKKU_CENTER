<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 4 });
    });
</script>
</head>

<body>

<div id="wrap">

	<!-- header -->
	<%@ include file="/include/header.jsp" %>
    <!-- //header -->


	<!-- 상단 네비 path -->
    <div class="pathWrap">
    	<div class="path">
            <ul>
                <li class="home">HOME</li>
                <li>센터소개</li>
                <li>공지사항</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/include/lnb_about.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            공지사항
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
				
                <!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/" class="on">전체</a></li>
                        <li><a href="/">센터</a></li>
                        <li><a href="/">대학특성화</a></li>
                        <li><a href="/">C-School</a></li>
                        <li><a href="/">ACE</a></li>
                        <li><a href="/">대학연구</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                
                <!-- 게시판 뷰화면 start -->
                <div class="boardView">
                
                	<!-- 뷰타이틀 -->
					<div class="viewTitle">
						<h2>나만의 효율적인 학습을 위한 Learning Aid‘ 공모전</h2>						
					</div>
                    <!-- //뷰타이틀 -->
                    
                    <!-- 작성자,작성일,조회 -->
                    <div class="viewData">
                    	<span>작성자</span>하지원<span>작성일</span>2015-10-06<span>조회</span>52
                    </div>
                    <!-- //작성자,작성일,조회 -->
                    
                    <!-- 파일첨부 -->
                    <div class="viewFile"><img src="/images/bbs/ico_file.gif" alt="file"> 나만의 효율적인 학습을 위한 Learning Aid‘ 공모전.pdf</div>
                    <!-- //파일첨부 -->
                    
                    
                    <!-- 뷰상세내용 -->
					<div class="viewContent">
						안녕하세요.<br />
                        대학교육혁신센터입니다.<br /><br />
                        
                        성균관대학교 대학교육혁신센터는 대학교육의 비전ㆍ전략ㆍ목표를 수립하고 대학교육 혁신모델의 연구개발을 통해 글로벌 리딩 대학으로 비상하고자 하는 우리 대학의 장기 비전 실현을 목적으로 2014년 8월에 설립되었습니다.<br />
대학교육혁신센터는 글로벌 창의인재 양성을 목표로 학생중심 개방형 융합교육 플랫폼 구축, 학부교육 패러다임 질적 내실화를 통해 성균관대형 대학교육 혁신모델 확산을 위한 지속적인 노력을 기울여 나갈 것입니다.

                    <div class="btnWrap ar">
                        <a href="/" class="btnBlueb">행사신청하기</a>
                    </div>
                   
                    
					</div>
                    <!-- //뷰상세내용 -->
                    
				</div>
                <!-- //게시판 뷰화면 end -->
                
                
                <!-- 버튼 start -->
                <div class="btnWrap ar">
                	<a href="/" class="btnGray">목록</a>
                </div>
                <!-- //버튼 end -->               
                
                <!-- 이전글/다음글 start -->
				<div class="viewPrenext">
					<div class="preNext">
						<strong>다음 글</strong>
						<a href="/">[합격공지] 제117차 기업… </a><span class='data'>2015-12-24</span>
					</div>
					<div class="preNext">
						<strong>이전 글</strong>
						<a href="/">[행사] 2014년 제 6차 기술…</a><span class='data'>2015-12-24</span>
					</div>
                </div>
                <!-- //이전글/다음글 end -->
                

           

                



            <!-- 본문내용 끝 ---------------------------------------------------------------------------------------------->
         


        
        </div>
        <!-- //서브본문 감싸기 -->
    
    </div>
    <!-- //왼쪽메뉴,본문 container -->


	<!-- footer -->
	<%@ include file="/include/footer.jsp" %>
    <!-- //footer -->
    
</div>

</body>
</html>