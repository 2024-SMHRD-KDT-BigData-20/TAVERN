<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위스키 목록</title>
<link href="css/nav.css" rel="stylesheet">
<link href="css/leqour.css" rel="stylesheet">
</head>
<body>
<div>
    <%@include file="layout/header.jsp"%>
    <!-- 메인 -->
    <div id="main">
        <!-- 주제 -->
        <section>위스키</section>
        <!-- 내용 -->
        <section>
            <div>
                <ul id="linkList">
                    <!-- 세션에서 술 이름 목록을 가져와서 출력 -->
                    <% 
                        List<LiquorVO> whiskeyList = (List<LiquorVO>) session.getAttribute("whiskeyList");
                        System.out.println("Whiskey List from session: " + whiskeyList); // 추가된 로그
                        if (whiskeyList != null) {
                            for (LiquorVO liquor : whiskeyList) {
                    %>
                    <li class="item"><%= liquor.getLiq_name() %></li>
                    <% 
                            }
                        } else {
                            System.out.println("Whiskey List is null."); // 추가된 로그
                        }
                    %>
                </ul>
                <!-- 더보기 버튼 -->
                <button id="moreButton">더보기</button>
            </div>
        </section>
    </div>
    <%@include file="layout/footer.jsp"%>
</div>
<script src="js/function_js/plus.js"></script>
</body>
</html>