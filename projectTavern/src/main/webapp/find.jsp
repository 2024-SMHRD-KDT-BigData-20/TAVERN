<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비번찾기</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/form/find.css" rel="stylesheet">
</head>
<body>
	<div>
		<%@include file="layout/header.jsp"%>
	</div>
		<div id="find_container">
			<!--찾기 누르면 find_id_con.java로 가서 기능 돌린후 find_id.jsp 페이지로 이동 -->
			<form action="Find_id_con" method="post" class="find_id">
				<h1>아이디 찾기</h1>
				<div class="text-box">
					<label for="email">이메일</label>
					<input type="email" name="email" id="email" placeholder="이메일을 입력하세요">
				</div>
				<div>
					<input type="submit" value="찾기">
				</div>
			</form>
			<!--찾기 누르면 find_pw_con.java로 가서 기능 돌린후 find_pw.jsp 페이지로 이동 -->
			<form action="Find_pw_con" method="post" class="find_pw">
				<h1>비밀번호 찾기</h1>
				<div class="text-box">
					<label for="id">아이디</label>
					<input type="text" name="id" id=" id" placeholder="아이디를 입력하세요">
				</div>
				<div>
					<input type="submit" value="찾기">
				</div>
			</form>
		</div>
	<div>
		<%@include file="layout/footer.jsp"%>
	</div>
</body>
</html>