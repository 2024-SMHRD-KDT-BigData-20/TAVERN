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
				<a href="main.jsp" class="logo">�ΰ�</a>
				<nav class="nav-links">
					<a href="lequor.html" class="lequor">�Ұ�</a>
					<a href="post.jsp" class="post">�ҽ�</a>
					<a href="community.jsp" class="comm">Ŀ�´�Ƽ</a>
				</nav>
				<div class="link">
					<c:choose>
						<c:when test="${empty loginMember }">
							<a href="#login" class="login-link">�α���</a>
						</c:when>
						<c:otherwise>
							<a href="LogoutCon" class="logout-link">�α׾ƿ�</a>
							<a href="#mypage" class="mypage-link">����������</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</header>
	</div>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>