<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                        <!-- 초기에 생성되는 6개의 <li> 태그 -->
                        <% for(int i = 1; i <= 6; i++) { %>
                            <% String page_address = "liquor_list_" + i + ".jsp"; %>
                            <li class="item<%= i %>">
                                <a href="<%= page_address %>">
                                    <div>
                                        <img>
                                    </div>
                                    <div>
                                        <p><%= i %>번째 아이템</p>
                                    </div>
                                </a>
                            </li>
                        <% } %>
                    </ul>
                    <!-- 더보기 버튼 -->
                    <button id="moreButton">더보기</button>
                </div>
            </section>
        </div>
        <%@include file="layout/footer.jsp"%>
    </div>
    <script src="js/function/plus.js"></script>
</body>
</html>
