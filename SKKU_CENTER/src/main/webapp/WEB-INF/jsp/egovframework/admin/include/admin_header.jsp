<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> 

<header id="admin_header">
    <h1 class="logo"><a href="/admin/" title="메인페이지로 이동"><img src="/images/common/admin_logo.gif" alt="성균관대학교 대학교육혁신센터"></a></h1>  
    
    <!-- gnb -->
    <div class="admin_gnb">
    	<h2><p>기본관리</p></h2>
        <ul>
            <li><a href="./notice.jsp">공지사항</a></li>
            <li><a href="./event_applicate.jsp">행사신청관리</a></li>
            <li><a href="./event_write.jsp">행사등록관리</a></li>
            <li><a href="./private.jsp">개인정보보호정책</a></li>
        </ul>
        
        <h2><p>C-School</p></h2>
        <ul>
            <li><a href="./cs_student.jsp">학생소감</a></li>
            <li><a href="./cs_gallery.jsp">갤러리</a></li>
            <li><a href="./cs_faq.jsp">FAQ</a></li>
            <li><a href="./cs_qa.jsp">Q&amp;A</a></li>
            <li><a href="./cs_cadvisor.jsp">C-Advisor 상담예약</a></li>
            <li><a href="./cs_course.jsp">교육과정 - 교과목</a></li>
        </ul>
        
        <h2><p>ACE</p></h2>
        <ul>
            <li><a href="#none">학생소감</a></li>
            <li><a href="#none">갤러리</a></li>
            <li><a href="#none">FAQ</a></li>
            <li><a href="#none">Q&amp;A</a></li>
            <li><a href="./ace_challenger.jsp">글로벌 창조적 챌린저 프로그램</a></li>
            <li><a href="./ace_show.jsp">창의리더 공모전</a></li>
            <li><a href="./ace_special.jsp">창의리더 특강</a></li>
        </ul>
        
        <h2><p>대학연구</p></h2>
        <ul>
            <li><a href="./data.jsp">연구보고서 및 자료</a></li>
        </ul>
        
        <h2><p>회원관리</p></h2>
        <ul>
            <li><a href="./member_list.jsp">회원관리리스트</a></li>

        </ul>
    </div>   
    <!-- //gnb -->	

</header>


<div class="admin_util">
    <a href="./admin.jsp" class="btnGray">관리자메인</a>
    <a href="./login.jps" class="btnGray">로그아웃</a>
    <a href="/" class="btnGray" target="_blank">홈페이지</a>
</div>