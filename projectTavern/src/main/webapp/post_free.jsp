<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/post.css" rel="stylesheet">
</head>
<body>
	<!-- 헤더 -->
	<div><%@include file="layout/header.jsp"%></div>
	<div class="main">
		<div>
			<%@include file="layout/left_nav.jsp"%>
		</div>
		<div class="cate">
			<h4>자유</h4>
		</div>
		<div class="card">

			<a href="writing.jsp">
				<div class="writing">글쓰기</div>
			</a>
			<div class="title">
				<a href="#">
					<h4>
						<!-- 여기에 DB에서 제목 가져와서 보여주기 -->
						아무 제목
					</h4>
				</a>
			</div>
		</div>
	</div>
	<div><%@include file="layout/footer.jsp"%></div>
</body>
</html>