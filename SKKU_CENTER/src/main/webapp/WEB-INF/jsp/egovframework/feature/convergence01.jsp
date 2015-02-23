<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 2, sn: 2 });
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
                <li>대학특성화</li>
                <li>창의적 융복합 소재 및 공정 특성화 사업단</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_feature.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            창의적 융복합 소재 및 공정 특성화 사업단
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
            
            
            	<!-- 탭메뉴 -->
                <div class="tabWrap">
                    <ul>
                        <li><a href="/feature/convergence01.do" class="on">교육비전</a></li>
                        <li><a href="/feature/convergence02.do">교육목표</a></li>
                        <li><a href="/feature/convergence03.do">교과과정 구성 및 운영</a></li>
                    </ul>
                </div>
                <!-- //탭메뉴 -->
                

				<h4 class="titDepth1 mt0">
                	<p>교육비전</p>
                </h4>
                
                <h5 class="titDepth2">
                	<p>융복합 소재 및 공정 분야 패러다임 변화</p>
                </h5>
                
                <ul class="listType2 mb20">
                	<li>융복합 소재 및 공정기술은 글로벌 경쟁력 확보가 가능한 에너지, 바이오, 정보, 기계, 자동차 등 신산업에 필수적인 핵심기술이며, 무한한 가치창출이 보장되는 제품ㆍ서비스 산업의 구현을 가능하게 하는 미래 산업의 블루오션 영역</li>
                    <li>소재 전반에 대한 기초과학과 소재 분야별 전공기초 및 심화지식을 바탕으로 9대 유망 산업 분야에서 요구되는 융복합 소재에 대한 이해와 응응력을 갖춘 융복합 소재인력 양성 필요</li>
                    <li>현재의 교과과정으로는 미래 산업에서 요구하는 소재 및 공정에 부응하는 우수인력의 양성에 한계를 보여 화학공학과 신소재공학 등 양 학과의 전문성과 장점을 융복합한 교과과정의 운영 필요</li>
                </ul>
                
                
                
                
                <!-- 게시판 글쓰기 폼 start -->
            	<div class="writeType2 ml20">
                <table summary="융복합기술, 융복합 소재기술 내용">
                <caption>융복합기술, 융복합 소재기술 내용</caption>
                    <colgroup>
                        <col style="width:20%">
                        <col style="width:auto" >
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">융복합 기술</th>
                            <td>
                            	융복합 기술은 미래 경제ㆍ사회적 이슈 해결을 위해 다양한 학제 및 이종기술 간의 결합을 통해 확보되는 혁신기술을 말함 <br>                        
                                [출처: 산자부 (디지털 융합신산업 육성전략)]<br>
                                예) Google glass: 안경 형태 컴퓨터, IT기계가 안경 형태로 융합
							</td>
                        </tr>
                        <tr>
                            <th scope="row">융복합 소재기술</th>
                            <td>
                            	융복합 소재기술은 다양한 분야 (예를 들면, IT, BT, ET, NT 등)의 소재기술 간의 결합을 통해 기존에 없었던 기능을 갖는 새로운 소재를 창출하는 혁신기술임<br>  
                                [출처: 차세대융합기술원 (신소재 분야의 기술 동향과 융합기술)]<br>  
                                예) 염료감응태양전지 소재: TiO2 (광촉매소재) + 염료 (염색소재)
                            </td>
                        </tr>
                    </tbody>
                </table>
                    
                </div>
                <!-- //게시판 글쓰기 폼 end -->
                
                
                <div class="mt20">
                	<img src="../images/feature/1dia_convergence01.gif" alt="" class="img100">
                </div>

                
                
                <h5 class="titDepth2">
                	<p>교육비전</p>
                </h5>
                
                <ul class="listType2">
                	<li>융복합 소재분야의 글로벌 Top Class 창의인재 및 현장밀착형 명품인재 양성</li>
                    <li>인류 삶의 질 향상을 주도하는 Top 글로벌 리더 배출을 위한 혁신적인 공학 교육시스템을 구축하여 글로벌(Global), 융복합(Convergence), 인성(Humanity)의 전략가치 구현</li>
                </ul>
                
                <div class="mt10">
                	<img src="../images/feature/1dia_convergence02.gif" alt="" class="img100">
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