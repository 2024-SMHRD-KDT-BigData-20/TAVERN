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
			<a href="main.jsp" class="logo">�ΰ�</a>
			<nav>
				<c:choose>
					<c:when test="${empty loginMember }">
						<a href="login.jsp">�α���</a>
					</c:when>
					<c:otherwise>
						<a href="mypage.jsp">����������</a>
						<a href="LogoutCon">�α׾ƿ�</a>
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
							<h1><%=request.getAttribute("joinnick")%>�� ȯ���մϴ�
								<h1>
						</c:otherwise>
					</c:choose>
				</header>
			</div>
		</section>

	</div>
</body>
</html>