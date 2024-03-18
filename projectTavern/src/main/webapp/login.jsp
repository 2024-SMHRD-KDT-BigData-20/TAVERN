<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="login_con">
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
	</div>
	<div>
		<button type="button" onclick="location.href='join.jsp'">회원가입</button>
	</div>
	<div>
		<a href="find.jsp">아이디/비밀번호 찾기</a>
	</div>
</body>
</html>