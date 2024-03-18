<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>
	<div id="container">
		<form action="JoinCon" method="post">
			<!-- 회원정보 입력 타이틀 -->
			<div class=tilte>회원정보</div>
			<!-- 회원 아이디 입력 -->
			<div>
				<div class="text_box">
					<input type="text" id="user_id" name="id" placeholder="아이디">
					<label class="form_lavel">아이디</label>
				</div>
				<div class="error_box"></div>
			</div>
			<!-- 비밀번호 입력 -->
			<div>
				<div class="text_box">
					<input type="password" id="user_re_pw" name="pw" placeholder="비밀번호 확인">
					<label class="form_lavel">비밀번호</label>
				</div>
				<div class="pw error_box">6글자 이상 입력해주세요</div>
			</div>
			<div>
				<div class="text_box">
					<input type="password" id="user_re pw" name="pw" placeholder="비밀번호 확인">
					<label class="form_lavel">비밀번호 재입력</label>
				</div>
				<div class="re_pw error_box">비밀번호가 일치하지 않습니다</div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_name" name="name" placeholder="이름을 입력하세요">
					<label class="form_lavel">이름</label>
				</div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_nick" name="nick" placeholder="닉네임을 입력하세요">
					<label class="form_lavel">닉네임</label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_date" name="date" placeholder="생년월일을 입력하세요">
					<label class="form_lavel">생년월일 ex)20011203</label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<div>
					<label for="gender">성별</label>
					<select name="gender" id="gender">
						<option value="man">남성</option>
						<option value="woman">여성</option>
					</select>
				</div>
			</div>
			<div>
				<div class="text_box">
					<input type="email" id="email" name="email" placeholder="이메일형식으로 입력하세요">
					<label for="email">이메일 입력: </label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<input type="submit" value="가입">
			</div>
		</form>
		<script src="js/pw_re.js"></script>
	</div>
</body>
</html>