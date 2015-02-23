<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<!doctype html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/jsp/egovframework/include/head.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        setPage({ hn: 1, sn: 5 });
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
                <li>오시는길</li>
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
            오시는길
            </h3>
            <!-- //타이틀 -->
        
        
        	<!-- 본문내용 시작 ---------------------------------------------------------------------------------------------->
            
                <img src="../images/about/map_location.gif" alt="대학교육혁신센터 지도 맵 하단 참고" class="img100">
				

                <div class="whiteBox">
                	<dl>
                    	<dt>주소</dt>
                        <dd>(110-745) 서울특별시 종로구 성균관로 25-2 성균관대학교 인문사회과학캠퍼스 대학교육혁신센터(600주년기념관 10202호)</dd>
                        <dt>Tel</dt>
                        <dd>02)740-1670~1681</dd>
                        <dt>Fax</dt>
                        <dd>02)740-1668</dd>
                    </dl>
                </div>
                
                <h4 class="titDepth1">
                	<p>장소 및 위치</p>
                </h4>
                
                <div class="tblType1">
                <table>
                <caption>장소 및 위치</caption>
                	<thead>
                    	<tr>
                        	<th scope="col">건물명</th>
                            <th scope="col">공간번호</th>
                            <th scope="col">연락처</th>
                            <th scope="col">명칭</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>600주년기념관</td>
                            <td>10202</td>
                            <td>02)740-1670~1681</td>
                            <td class="subject">대학교육혁신센터(CIHE)</td>
                        </tr>
                        <tr>
                            <td>경영관</td>
                            <td>33B102</td>
                            <td>02)740-1830~1831,1175	</td>
                            <td class="subject">Creative Design Studio C-Office(인사캠)</td>
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