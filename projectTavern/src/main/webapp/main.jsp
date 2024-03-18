<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/">
</head>
<body>
	<div id="container">
		<!-- header -->
		<header id="header" class="alt">
			<a href="main.jsp" class="logo">로고</a>
			<nav>
				<c:choose>
					<c:when test="${empty loginMember }">
						<a href="login.jsp">로그인</a>
					</c:when>
					<c:otherwise>
						<a href="mypage.jsp">마이페이지</a>
						<a href="LogoutCon">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</nav>
		</header>
		<!-- Banner -->
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<c:choose>
						<c:when test="${empty loginMember }">
							<h1></h1>
						</c:when>


						<c:otherwise>
							<h1><%=request.getAttribute("joinnick")%>님 환영합니다
								<h1>
						</c:otherwise>
					</c:choose>
				</header>
			</div>
		</section>

	</div>
</body>
</html>