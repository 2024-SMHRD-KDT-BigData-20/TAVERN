<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="css/main.css" rel="stylesheet">
</head>

<body>
	<div id="container">
		<!-- header -->
		<header id="header" class="alt">
			<a href="main.html" class="logo">로고</a>
			<nav>
				<a href="#login" class="login-link">로그인</a>
			</nav>
		</header>

		<!-- login -->
		<nav id="login">
			<div id="login_con">
				<span class="close_btn">×</span> <!-- X 버튼 추가 -->
				<h1>로그인</h1>
				<form action="LoginCon" method="post">
					<div class="text_box">
						<input type="text" id="user_id" name="id" placeholder="아이디를 입력하세요">
						<label class="form_lavel">아이디</label>
						<div class="error_box"></div>
					</div>
					<div class="text_box">
						<input type="password" name="pw" placeholder="비밀번호를 입력하세요">
						<label class="form_lavel">비밀번호</label>
						<div class="error_box"></div>
					</div>
					<input type="submit" value="로그인">
				</form>
				<div id="join_btn">
					<button onclick="location.href='join.jsp'">회원가입</button>
				</div>
				<div>
					<a href="find.jsp">아이디/비밀번호 찾기</a>
				</div>
			</div>
		</nav>

		<!-- main -->
		<!-- main 내용 생략 -->

		<!-- footer -->
		<footer></footer>
	</div>
	<!-- 네비게이션 메뉴 -->
	<div id="nav_overlay"></div>
	<div id="nav_menu">
		<!-- 네비게이션 내용 생략 -->
	</div>
	<script src="js/main.js"></script>
</body>

</html>