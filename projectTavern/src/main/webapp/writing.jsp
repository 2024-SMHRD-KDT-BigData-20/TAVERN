<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="writing container">
		<a href="main.jsp" class="logo">로고</a>
		<div>${loginMember.jsp }</div>
		<form action="WriteCon" method="post">
			<div>글쓰기</div>
		</form>
	</div>
</body>
</html>