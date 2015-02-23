<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 4, sn: 3, snThird: 7 });
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
                <li>ACE Help Desk</li>
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
            ACE Help Desk
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            	

                
                <h4 class="titDepth1 mt0">
                	<p>목적</p>
                </h4>
                
                <h5 class="titDepth2 mt0">
                	<p>학부교육 선도모델 공유ㆍ확산을 통한 대학 간 동반발전</p>
                </h5>
                <h5 class="titDepth2 mt0">
                	<p>ACE사업 핵심성과지표인 ‘학부교육 선도모델 확산 지수’ 연계</p>
                </h5>

                
                
                
                
                <h4 class="titDepth1">
                	<p>운영</p>
                </h4>
                
                <h5 class="titDepth2 mt0">
                	<p>ACE 아카데미 클래스 단위 프로그램 지원</p>
                </h5>
                
                <ul>
                	<li>- 동료대학 요청사항에 맞추어 프로그램 설계</li>
                    <li>- 패키지 프로그램 가능(예시: 클래스 A + B)</li>
                    <li>- 최소 인원 기준: 클래스당 5명 이상 참여</li>
                </ul>
                
                
                <h5 class="titDepth2">
                	<p>찾아가는 ACE 아카데미 클래스 지원</p>
                </h5>
                
                <ul>
                	<li>- 동료대학의 참가인원이 많은 경우</li>
                    <li>- 연간 4~5회 내외</li>
                </ul>
                
                <h5 class="titDepth2">
                	<p>운영기간</p>
                </h5>
                
                <ul>
                	<li>- 신청대학과 협의하여 조정</li>
                </ul>
                
                
                
                
                <h5 class="titDepth2">
                	<p>ACE Help Desk 구성 </p>
                </h5>
                
                
                <!-- 게시판 -->
                <div class="tblType1">
                <table summary="클래스,프로그램,담당조직,대표전화 목록">
                <caption>클래스프로그램,담당조직,대표전화 내용</caption>
                	<colgroup>
                        <col style="width:10%">                        
                        <col style="width:35%" >                        
                        <col style="width:auto" >
                        <col style="width:20%" >
                    </colgroup>
                	<thead>
                    	<tr>
                        	<th scope="col">클래스</th>
                            <th scope="col">프로그램</th>
                            <th scope="col">담당조직</th>
                            <th scope="col">대표전화</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>A</td>
                            <td>인성교육</td>
                            <td>성균인성교육센터</td>
                            <td>02-760-0166</td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>교양교육</td>
                            <td>학부대학</td>
                            <td>02-760-0996</td>
                        </tr>
                        <tr>
                            <td>C</td>
                            <td>역량기반 교육과정<br>(핵심역량 선정, 구축, 운영, 진단)</td>
                            <td>교무팀(ACE), <br>대학교육혁신센터</td>
                            <td>02-760-1053</td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="bright">D</td>
                            <td>창의성 프로그램</td>
                            <td>대학교육혁신센터</td>
                            <td>02-740-1673</td>
                        </tr>
                        <tr>
                            <td>리더십 프로그램</td>
                            <td>대학교육혁신센터</td>
                            <td>02-740-1677</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- //게시판 -->
                
                

                
                
                <div class="btnWrap ar">
                	<a href="./" class="btnViewblue">ACE Help Desk 신청서 다운로드</a>
                </div>
                
                

                
                
                
                
            


                
                 
                




                
                
                




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