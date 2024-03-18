<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<div id="container">
		<!-- header -->
		<header id="header" class="alt">
			<a href="main.jsp" class="logo">로고</a>
			<nav>
				<c:choose>
					<c:when test="${empty loginMember }">
						<a href="login.jsp" class="login-link">로그인</a>
					</c:when>
					<c:otherwise>
						<h1 class="welcome-message">${loginMember.nick}님환영합니다</h1>
						<a href="mypage.jsp" class="my-page">마이페이지</a>
						<a href="LogoutCon" class="logout">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</nav>
		</header>
	</div>
</body>
</html>