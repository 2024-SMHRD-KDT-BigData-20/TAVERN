<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div>
		<header id="header" class="alt">
			<div class="header-content">
				<a href="main.jsp" class="logo">로고</a>
				<nav class="nav-links">
					<a href="lequor.html" class="lequor">소개</a>
					<a href="post.jsp" class="post">소식</a>
					<a href="community.jsp" class="comm">커뮤니티</a>
				</nav>
				<div class="link">
					<c:choose>
						<c:when test="${empty loginMember }">
							<a href="#login" class="login-link">로그인</a>
						</c:when>
						<c:otherwise>
							<a href="LogoutCon" class="logout-link">로그아웃</a>
							<a href="#mypage" class="mypage-link">마이페이지</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</header>
	</div>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>