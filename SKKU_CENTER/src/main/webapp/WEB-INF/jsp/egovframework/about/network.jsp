<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 3 });
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
                <li>센터소개</li>
                <li>연구 영역 네트워크</li>
            </ul>
        </div>
    </div>
    <!-- //상단 네비 path -->

    <!-- 왼쪽메뉴,본문 container -->
    <div id="container">
    
    
    	<!-- 왼쪽메뉴 -->
        <%@ include file="/WEB-INF/jsp/egovframework/include/lnb_about.jsp" %>
	    <!-- //왼쪽메뉴 -->
    
        <!-- 서브본문 감싸기 -->
        <div class="content">
        
        
        	<!-- 타이틀 -->
            <h3 class="title">
            연구 영역 네트워크
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            

            	<div class="network_pic">
	            <img src="../images/about/chart_network.gif" alt="" class="img100">
                </div>
                
				
                <h4 class="titDepth1 mt0">
                	<p>센터장(Director, Center for Innovative Higher Education)</p>
                </h4>                
                
                <div class="tblType2">
                <table>
                <caption>센터장 담당자</caption>
                <colgroup>
                <col style="width:15%;"/>
                <col style="width:*"/>
                <col style="width:20%;"/>
                <col style="width:20%;"/>
                </colgroup>
                    <tbody>
                        <tr>
                            <td>배상훈</td>
                            <td>센터 업무 총괄</td>
                            <td>02-740-1670</td>
                            <td>sbae@</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                
                <h4 class="titDepth1">
                	<p>선임연구원(Research Fellow)</p>
                </h4>                
                
                <div class="tblType2">
                <table>
                <caption>선임연구원 담당자</caption>
                <colgroup>
                <col style="width:15%;"/>
                <col style="width:*"/>
                <col style="width:20%;"/>
                <col style="width:20%;"/>
                </colgroup>
                    <tbody>
                        <tr>
                            <td>강민수</td>
                            <td>고등교육정책 연구</td>
                            <td>02-740-1671</td>
                            <td>kang74@</td>
                        </tr>
                        <tr>
                            <td>윤수경</td>
                            <td>고등교육정책 연구</td>
                            <td>02-740-1672</td>
                            <td>ysue@</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                
                <h4 class="titDepth1">
                	<p>연구원(Researcher)</p>
                </h4>                
                
                <div class="tblType2">
                <table>
                <caption>연구원 담당자</caption>
                <colgroup>
                <col style="width:15%;"/>
                <col style="width:*"/>
                <col style="width:20%;"/>
                <col style="width:20%;"/>
                </colgroup>
                    <tbody>
                        <tr>
                            <td>김선진</td>
                            <td>창의성 프로그램 개발 및 운영</td>
                            <td>02-740-1673</td>
                            <td>createjin@</td>
                        </tr>
                        <tr>
                            <td>전혜림</td>
                            <td>효과성 프로그램 개발 및 운영</td>
                            <td>02-740-1676</td>
                            <td>hlchun@</td>
                        </tr>
                        <tr>
                            <td>홍혜승</td>
                            <td>리더십 프로그램 개발 및 운영</td>
                            <td>02-740-1677</td>
                            <td>blossomday@</td>
                        </tr>
                        <tr>
                            <td>박민서</td>
                            <td>창의성 프로그램 개발 및 운영</td>
                            <td>02-740-1679</td>
                            <td>fb30415@</td>
                        </tr>
                        <tr>
                            <td>유아림</td>
                            <td>효과성 프로그램 개발 및 운영</td>
                            <td>02-740-1681</td>
                            <td>yooarim@</td>
                        </tr>
                        <tr>
                            <td>박성혜</td>
                            <td>특성화사업단(국가지원) 지원</td>
                            <td>02-760-1175</td>
                            <td>shpark29@</td>
                        </tr>
                        <tr>
                            <td>장창성</td>
                            <td>특성화사업단(국가지원) 지원</td>
                            <td>02-740-1675</td>
                            <td>sunlight85@</td>
                        </tr>
                        <tr>
                            <td>홍지인</td>
                            <td>특성화사업단(대형) 지원</td>
                            <td>02-740-1678</td>
                            <td>h28exe@</td>
                        </tr>
                        <tr>
                            <td>조성범</td>
                            <td>특성화사업단(대형) 지원</td>
                            <td>02-740-1669</td>
                            <td>csb0720@</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                
                <h4 class="titDepth1">
                	<p>C-Office C-Advisor</p>
                </h4>                
                
                <div class="tblType2">
                <table>
                <caption>C-Office C-Advisor 담당자</caption>
                <colgroup>
                <col style="width:15%;"/>
                <col style="width:*"/>
                <col style="width:20%;"/>
                <col style="width:20%;"/>
                </colgroup>
                    <tbody>
                        <tr>
                            <td>김호진</td>
                            <td>C-Office 관리 및 학생 어드바이저</td>
                            <td>02-740-1831</td>
                            <td>sallong@</td>
                        </tr>
                        <tr>
                            <td>박선화</td>
                            <td>C-Office 관리 및 학생 어드바이저</td>
                            <td>02-740-1830</td>
                            <td>ahalfmoon@</td>
                        </tr>
                        <tr>
                            <td>한송이</td>
                            <td>C-Office 관리 및 학생 어드바이저</td>
                            <td>02-740-1831</td>
                            <td>to2smile@</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                
                <h4 class="titDepth1">
                	<p>행정직원(Administrative Staff)</p>
                </h4>                
                
                <div class="tblType2">
                <table>
                <caption>행정직원 담당자</caption>
                <colgroup>
                <col style="width:15%;"/>
                <col style="width:*"/>
                <col style="width:20%;"/>
                <col style="width:20%;"/>
                </colgroup>
                    <tbody>
                        <tr>
                            <td>지은미</td>
                            <td>특성화사업단 회계 관리</td>
                            <td>02-740-1680</td>
                            <td>jwm0321@</td>
                        </tr>
                    </tbody>
                </table>
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