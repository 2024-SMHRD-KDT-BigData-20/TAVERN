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
				for (int j = 0; j < 3; j++) {
				%>
				<div>
					<a href="post_review.jsp">
						<div>
							<p>카테고리(타입)</p>
						</div>
						<div>
							<p>제목</p>
						</div>
					</a>
					<div>
						<p>작성날짜</p>
					</div>
					<div>
						<p>작성자</p>
					</div>
				</div>
				<%
				}
				%>
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