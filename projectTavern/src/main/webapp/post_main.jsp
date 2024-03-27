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
		<div class="card">
			<h3>
				<a href="#">위스키</a>
			</h3>
			<a class="list">
				<p></p>
			</a>
			<a class="list">
				<p></p>
			</a>
			<a class="list">
				<p></p>
			</a>
		</div>

		<%@include file="layout/footer.jsp"%>
		<!-- footer -->
	</div>
</body>
</html>