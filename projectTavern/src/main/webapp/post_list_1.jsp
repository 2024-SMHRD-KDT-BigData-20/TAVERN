<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link href="css/lequor.css" rel="stylesheet">
</head>
<body>
	<div>
		<%@include file="../layout/header.jsp"%>
	</div>
	<div class="main">
		<h4>
			<!-- 여기에 위스키나 제목 입력 DB로 가져오기 -->
		</h4>
		<a href="writing.jsp">글쓰기</a>
		<a href="#">
			<%

			%>
			<!-- 제목 div -->
			<div>
				<h4>
					<!-- 여기에 DB에서 제목 가져와서 보여주기 -->
				</h4>
			</div>
			<!-- 글 내용 div -->
			<div>
				<p>
					<!-- 여기에 글 내용 보여주기 -->
				</p>
			</div>
		</a>
	</div>
</body>
</html>