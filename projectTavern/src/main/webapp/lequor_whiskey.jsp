<%@page import="com.smhrd.model.LiquorDAO"%>
<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/nav.css" rel="stylesheet">
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
        <%@include file="footer.jsp"%>
    </div>
    <script>
        function showMore() {
            var moreList = document.getElementById("moreList");
            moreList.classList.remove("hidden");
            var hiddenItems = moreList.querySelectorAll(".hidden");
            for (var i = 0; i < 3; i++) {
                if (hiddenItems[i]) {
                    hiddenItems[i].classList.remove("hidden");
                }
            }
        }
    </script>
</body>
</html>