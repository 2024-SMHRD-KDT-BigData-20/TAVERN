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
		for (int i = 0; i < 6; i++) {
		%>
		<div class="card">
			<div class="title">
				<div>
					<h3>카테고리</h3>
				</div>
				<%
						    List<PostVO> postList = (List<PostVO>)request.getAttribute("postList"); // 서블릿에서 받아온 게시글 목록
						    for (PostVO post : postList) { 
						%>
						<div>
						    <a href="post_review.jsp">
						        <div>
						            <p><%= post.getPOST_TITLE() %></p> <!-- 제목 표시 -->
						        </div>
						    </a>
						    <div>
						        <p><%= post.getCREATED_AT() %></p> <!-- 작성날짜 표시 -->
						    </div>
						    <div>
						        <p><%= post.getID() %></p> <!-- 작성자 표시 -->
						    </div>
						    <div>
						            <p><%= post.getPOST_CATEGORY() %></p> <!-- 카테고리 표시 -->
						        </div>
						</div>
						<% } %>
			</div>
		</div>
		<%
		}
		%>
	</div>
	<!-- footer -->
	<%@include file="layout/footer.jsp"%>
</body>
</html>