<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" isELIgnored="false" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/join.css">
		<link rel="stylesheet" href="css/main.css">
	</head>

	<body>
		<div id="container">
			<!-- 상단 헤더 -->
			<header id="header" class="alt">
				<a href="main.html" class="logo">로고</a>
				<nav>
					<a href="#login" class="login-link">로그인</a>
				</nav>
			</header>
			<div id="mypage_content">
				<div>
					<h4>마이페이지</h4>
					<div>id = ${loginMember.id}</div>
					<div>nick = ${loginMember.nick}</div>
				</div>
				<div>
					작성한 목록
					<div>게시글보기</div>
					<div>임시저장보기</div>
					<div>문의보기</div>
					<div>댓글보기</div>
					<div id="updateLink"><a href="#Update">정보수정</a></div>
					<div><a href="DeleteCon.java">회원삭제</a></div>
				</div>

				<!-- 정보수정 -->
				<nav id="Update">
					<li>
						<h5>회원정보수정</h5>
					</li>
					<form action="UpdateCon" method="post">
						<input type="hidden" value="보낼값" name="name값">
						<!-- 비밀번호 입력 -->
						<div>
							<div class="text_box">
								<input type="password" id="user_pw" name="pw" placeholder="비밀번호">
								<label class="form_label">새로운 비밀번호</label>
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
						<div>이름 Name : ${loginMember.name }</div>
						<!-- 닉네임 변경 -->
						<div>
							<div class="text_box">
								<input type="text" id="user_nick" name="nick" placeholder="새로운 닉네임을 입력하세요">
								<label class="form_label">새로운 닉네임</label>
							</div>
							<div class="error_box"></div>
						</div>
						<!-- 기존 회원 정보 (수정 불가능) -->
						<div>접속한 Email : ${loginMember.email }</div>
						<div>생일 : ${loginMember.birthdate }</div>
						<div>성별 : ${loginMember.gender }</div>
						<div>가입일자 : ${loginMember.joined_at }</div>
						<div>
							<input type="submit" value="회원정보변경" class="button fit">
						</div>
					</form>
				</nav>
			</div>
		</div>
		<script src="js/pw.js"></script>
	</body>

	</html>