<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/join.css">
</head>4
<body>
	<div id="container">
		<form id="joinForm" action="JoinCon" method="post" name="frm">
			<!-- 회원정보 입력 타이틀 -->
			<div class="title">회원가입</div>
			<!-- 회원 아이디 입력 -->
			<div>
				<div class="text_box">
					<input type="text" id="user_id" name="id" placeholder="아이디">
					<label class="form_label">아이디</label>
				</div>
				<div>
					<input type="button" onclick="idCheck()" value="아이디 중복확인">
				</div>
				<div class="id error_box" id="id_error">영문자 혹은 영문자와 숫자를 포함해서 만들어주세요</div>
			</div>
			<!-- 비밀번호 입력 -->
			<div>
				<div class="text_box">
					<input type="password" id="user_pw" name="pw" placeholder="비밀번호">
					<label class="form_label">비밀번호</label>
				</div>
				<div class="pw error_box" id="pw_error">6글자 이상 입력해주세요</div>
			</div>
			<!-- 비밀번호 확인 -->
			<div>
				<div class="text_box">
					<input type="password" id="user_re_pw" name="re_pw" placeholder="비밀번호 확인">
					<label class="form_label">비밀번호 재입력</label>
				</div>
				<div class="re_pw error_box" id="re_pw_error">비밀번호가 일치하지 않습니다</div>
			</div>
			<!-- 이름 입력 -->
			<div>
				<div class="text_box">
					<input type="text" id="user_name" name="name" placeholder="이름을 입력하세요">
					<label class="form_label">이름</label>
				</div>
			</div>
			<!-- 닉네임 입력 -->
			<div>
				<div class="text_box">
					<input type="text" id="user_nick" name="nick" placeholder="닉네임을 입력하세요">
					<label class="form_lavel">닉네임</label>
				</div>
			</div>
			<!-- 생년월일 양식에 맞게 입력 -->
			<div>
				<div class="text_box">
					<input type="text" id="user_date" name="birthdate" placeholder="생년월일을 입력하세요">
					<label class="form_lavel">생년월일 ex)20011203</label>
				</div>
				<div class="date error_box" id="date_error_box">양식에 맞게 써주세요</div>
			</div>
			<!-- 성별 선택 -->
			<div>
				<div>
					<label for="gender">성별</label> <select name="gender" id="gender">
						<option value="0">남성</option>
						<option value="1">여성</option>
					</select>
				</div>
			</div>
			<!-- 이메일 형식으로 입력 -->
			<div>
				<div class="text_box">
					<input type="email" id="email" name="email" placeholder="이메일형식으로 입력하세요">
					<label for="email">이메일 입력: </label>
				</div>
				<div class="error_box">이메일 양식에 맞게 해주세요</div>
			</div>
			<div>
				<input type="submit" value="가입">
			</div>
		</form>
	</div>
	<script src="js/member.js"></script>
	<script src="js/pw.js" type="text/javascript"></script>
</body>
</html>