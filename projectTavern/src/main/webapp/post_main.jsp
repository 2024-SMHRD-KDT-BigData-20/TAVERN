<%@page import="com.smhrd.model.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/post.css" rel="stylesheet">
</head>
<body>
    <div>
        <%@include file="../layout/header.jsp"%>
    </div>
    <!-- main -->
    <div class="main">
        <!-- left nav -->
        <div>
            <%@include file="layout/left_nav.jsp"%>
        </div>
        <!-- 카드 -->
        <% 
        String[] categories = { "위스키", "럼", "보드카", "리큐르", "꼬냑", "데킬라" }; // 매개변수 값으로 지정한 카테고리들
        for (String category : categories) {
        %>
        <div class="card">
            <div class="title">
                <div>
                    <h3><%=category%></h3>
                </div>
                <!-- 게시글 정보 표시 -->
                <%
                List<PostVO> postList = (List<PostVO>) request.getAttribute("postList"); // 서블릿에서 받아온 게시글 목록
                int count = 0; // 표시된 게시글 수를 카운트하기 위한 변수
                for (PostVO post : postList) {
                    if (post.getPOST_CATEGORY().equals(category) && count < 3) { // 해당 카테고리의 게시글 중 최대 3개까지만 표시
                %>
                <div>
                    <a href="post_review.jsp">
                        <div>
                            <p><%=post.getPOST_TITLE()%></p>
                            <!-- 제목 표시 -->
                        </div>
                    </a>
                    <div>
                        <p><%=post.getCREATED_AT()%></p>
                        <!-- 작성날짜 표시 -->
                    </div>
                    <div>
                        <p><%=post.getID()%></p>
                        <!-- 작성자 표시 -->
                    </div>
                    <div>
                        <p><%=post.getPOST_CATEGORY()%></p>
                        <!-- 카테고리 표시 -->
                    </div>
                </div>
                <%
                    count++; // 게시글이 표시될 때마다 카운트 증가
                    } // end if
                    if (count >= 3) { // 최대 3개의 게시글이 표시되면 반복 종료
                        break;
                    }
                } // end for
                %>
            </div>
        </div>
        <% } // end for %>
    </div>
    <!-- footer -->
    <%@include file="layout/footer.jsp"%>
</body>
</html>