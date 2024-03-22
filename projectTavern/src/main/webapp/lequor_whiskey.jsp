<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.LiquorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>위스키 목록</title>
<link href="css/nav.css" rel="stylesheet">
<link href="css/leqour.css" rel="stylesheet">

<title>Insert title here</title>
<link href="css/nav.css" rel="stylesheet">
<link href="css/leqour.css" rel ="stylesheet">

<style>
    .hidden {
        display: none;
    }
</style>

</head>
<body>

<div>
    <%@include file="main.jsp"%>
    <!-- 메인 -->
    <div id="main">
        <!-- 주제 -->
        <section>위스키</section>
        <!-- 내용 -->
        <section>
            <div>
                <ul id="linkList">
                    <!-- DAO를 통해 가져온 술 이름 목록을 출력 -->
                    <% 
                        LiquorDAO liquorDAO = new LiquorDAO();
                        List<LiquorVO> whiskeyList = liquorDAO.liqName("위스키");
                        // 처음 6개의 술 이름만 보여줍니다.
                        for (int i = 0; i < Math.min(6, whiskeyList.size()); i++) {
                            LiquorVO liquor = whiskeyList.get(i);
                    %>
                    <li class="item<%=i+1%>">
                        <a href="#">
                            <div>
<%--                                 <img src="<%=liquor.getImageUrl()%>" alt="<%=liquor.getLiq_name()%>"> --%>
                            </div>
                            <div>
                                <p><%=liquor.getLiq_name()%></p>
                            </div>
                        </a>
                    </li>
                    <% } %>
                </ul>
                <!-- 더보기 버튼 -->
                <button id="moreButton">더보기</button>
            </div>
        </section>

   <div>
        <%@include file="layout/header.jsp"%>
       <%@include file="left_nav.jsp" %>
        <!-- 메인 -->
        <div id="main">
            <!-- 주제 -->
            <section>위스키</section>
            <!-- 내용 -->
            <section>
                <div>
                    <ul id="linkList">
                        <%
                            LiquorDAO liquorDAO = new LiquorDAO(); // LiquorDAO 클래스의 인스턴스 생성
                            // 위스키 이름 목록 받아오기
                            List<LiquorVO> whiskeyList = liquorDAO.liqName("위스키");
                            // 위스키 이름 목록 출력하기
                            int count = 0;
                            for (LiquorVO liquor : whiskeyList) {
                                count++;
                                if (count <= 6) { // 처음 6개만 보이도록 함
                        %>
                        <li class="item<%=liquor.getLiq_idx()%>"><%=liquor.getLiq_name()%></li>
                        <%
                                }
                            }
                        %>
                    </ul>
                    <!-- 더보기 버튼 -->
                    <button id="moreButton" onclick="showMore()">더보기</button>
                    <ul id="moreList" class="hidden">
                        <%
                            for (int i = 6; i < whiskeyList.size(); i++) {
                        %>
                        <li class="item<%=whiskeyList.get(i).getLiq_idx()%> hidden"><%=whiskeyList.get(i).getLiq_name()%></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </section>
        </div>
        <%@include file="layout/footer.jsp"%>

    </div>
    <%@include file="footer.jsp"%>
</div>
<script src="js/function_js/plus.js"></script>
</body>
</html>