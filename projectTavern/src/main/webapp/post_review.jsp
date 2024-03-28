<%@page import="com.smhrd.model.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link href="css/lequor.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/post.css" rel="stylesheet">
</head>
<body>
	<div>
		<%@include file="../layout/header.jsp"%>
	</div>
	<div class="main" style="height: 600px">
		<div>
			<%@include file="layout/left_nav.jsp"%>
		</div>
		<div class="cate">
			<h4>
				<%-- 여기에 위스키나 제목 입력 DB로 가져오기 --%>
				<%
					String postCategory = request.getParameter("post_category");
					if (postCategory != null) {
						out.println(postCategory);
					} else {
						out.println("카테고리명");
					}
				%>
			</h4>
		</div>
		<div>
			<div class="card">

				<a href="writing.jsp">
					<div class="writing">글쓰기</div>
				</a>
				<%-- 이 부분을 데베의 길이만큼 출력 --%>
				<%
					List<PostVO> postList = (List<PostVO>) request.getAttribute("postList");
					if (postList != null) {
						for (PostVO post : postList) {
				%>
				<div class="title">
					<a href="#">
						<h4>
							<%= post.getPOST_TITLE() %>
						</h4>
					</a>
				</div>
				<%
						}
					} else {
				%>
				<div class="title">
					<h4>게시글이 없습니다.</h4>
				</div>
				<%
					}
				%>
				<%-- 글 내용 div --%>
			</div>
		</div>
	</div>
	<%@include file="layout/footer.jsp"%>
</body>
</html>