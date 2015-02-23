<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 3, sn: 5, snThird: 4 });
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
                <li>C-School</li>
                <li>커뮤니티</li>
                <li>FAQ</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_cschool.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            FAQ
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
                

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
                
                
                
                <!-- faq -->
                <div class="faq">
                    <h3 class="blind" id="listTitle">전체 FAQ</h3>
                
                    <ul>
                
                        <li>
                            <dl>                                    
                            <dt class="question"><span class="blind">질문</span><a href="#">왜 Creative Informatics인가?</a></dt>
                            <dd class="answer"><span class="blind">답변</span>
                            최근 영양 개선과 의약의 발전으로 인간의 평균 수명이 연장되어 빠른 속도의 고령화가 진행되면서, 건강에 대한 관심이 전 세계적으로 증대<br>
                            이와 함께 65세 인구 비중은 16%에서 25% 상승하면서 생산 가능 인구 감소와 생산성 증가율 둔화 등에 따라 저성장으로 인한 일자리 위기 심화
                            </dd>
                            </dl>
                        </li>			                           
                        
                        <li>
                            <dl>
                            <dt class="question"><span class="blind">질문</span><a href="#">성균교육의 미래</a></dt>
                            <dd class="answer"><span class="blind">답변</span>
                            창의적ㆍ혁신적 문제해결능력을 바탕으로 글로벌 이슈 해결을 위해 타인과 소통ㆍ협업ㆍ융합하며 빅데이터 속에서 유의미한 가치를 창출하고 공유하는 3차원적 입체형 인재를 양성하는 새로운 형태의 창의 융합 혁신적 교육 시스템 구축 
                            </dd>
                            </dl>
                        </li>			                           
                        
                        <li>
                            <dl>
                            <dt class="question"><span class="blind">질문</span><a href="#">융복합 소재 및 공정 분야 패러다임 변화</a></dt>
                            <dd class="answer"><span class="blind">답변</span>
                            융복합 소재 및 공정기술은 글로벌 경쟁력 확보가 가능한 에너지, 바이오, 정보, 기계, 자동차 등 신산업에 필수적인 핵심기술이며, 무한한 가치창출이 보장되는 제품ㆍ서비스 산업의 구현을 가능하게 하는 미래 산업의 블루오션 영역
                            </dd>
                            </dl>
                        </li>			                           
                        
                        <li>
                            <dl>
                            <dt class="question"><span class="blind">질문</span><a href="#">교과과정 구성 및 운영 </a></dt>			                           
                            <dd class="answer"><span class="blind">답변</span>
                            본 사업단은 융복합화, 글로벌화, 현장중심 교육 목표에 따라 미래 융복합 소재 및 공정 분야에서 글로벌 경쟁력을 갖춘 인재를 육성하고 배출하기 위한 교육과정을 구성하고 운영함. 
                            </dd>
                            </dl>
                        </li>			                           
                        
                        <li>
                            <dl>
                            <dt class="question"><span class="blind">질문</span><a href="#">교과목 체계 구축의 우수성</a></dt>
                            <dd class="answer"><span class="blind">답변</span>
심화과정 유형에 구분없이 전공과목 선택이 가능한 오픈형ㆍ학생중심의 전공 교과과정 운영 : 건축공화 심화과정 선택ㆍ토목 전공 교과목 수강 / 토목공학 심화과정 선택ㆍ건축 전공 교과목 수강
                            </dd>
                            </dl>
                        </li>	
                        
                        <li>
                            <dl>
                            <dt class="question"><span class="blind">질문</span><a href="#">다양한 전공선택과목 및 학제간 융합과목 개설 운영</a></dt>
                            <dd class="answer"><span class="blind">답변</span>
                            전공일반과목을 크게 핵/입자/천체, 응집/통계, 나노/바이오군으로 구분하며 특히 본 학과가 집중적으로 육성하고 있는 천체, 바이오 물리분야의 과목을 개설하여 다양한 분야의 과목 제공
                            </dd> 
                            </dl>
                        </li>			                           

                
                
                    </ul>
                
                </div>
                <!--// faq -->
                
                
                
                
                
                
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