<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 주석 -->
<%
MemberVO loginMember = (MemberVO) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/layout/header.css">
</head>

<body>
	<div id="container">
		<!-- header -->
		<header id="header" class="alt">
			<div class="header-content">
				<a href="main.jsp" class="logo">로고</a>
				<nav class="nav-links">
					<a href="lequor.jsp" class="lequor">소개</a>
					<a href="post.jsp" class="post">소식</a>
					<a href="community.jsp" class="comm">커뮤니티</a>
				</nav>
				<div class="link">
					<c:choose>
						<c:when test="${empty loginMember }">
							<a href="#login" class="login-link">로그인</a>
						</c:when>
						<c:otherwise>
							<a href="LogoutCon?redirectURL=<%= request.getRequestURI() %>" class="logout-link">로그아웃</a>
							<a href="#mypage" class="mypage-link">마이페이지</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</header>
		<!-- login -->
		<nav id="login" class="login-form ">
			<div id="login_con">
				<span class="close_btn">×</span>
				<!-- X 버튼 추가 -->
				<h1>로그인</h1>
				<form action="LoginCon?redirectURL=<%= request.getRequestURI() %>" method="post">
					<div class="text_box">
						<input type="text" id="user_id" name="id" placeholder="아이디를 입력하세요"> <label class="form_lavel">아이디</label>
						<div class="error_box"></div>
					</div>
					<div class="text_box">
						<input type="password" name="pw" placeholder="비밀번호를 입력하세요"> <label class="form_lavel">비밀번호</label>
						<div class="error_box"></div>
					</div>
					<input type="submit" value="로그인">
					<c:if test="${not empty message}">
						<script>
					        alert("${message}");
					    </script>
					</c:if>
				</form>

				<div id="join_btn">
					<button onclick="location.href='join.jsp'">회원가입</button>
				</div>
				<div>
					<a href="find.jsp">아이디/비밀번호 찾기</a>
				</div>
			</div>
		</nav>

		<!-- mypage -->
		<nav id="mypage" class="mypage-form">
			<span class="close_btn">×</span>
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
				<div id="updateLink">
					<a href="#Update">정보수정</a>
				</div>
				<div>
					<a href="DeleteCon?id=${loginMember.id }">
						<button>탈퇴하기</button>
					</a>
				</div>
			</div>
		</nav>

		<!-- 정보수정 -->
		<nav id="Update" class="update-form">
			<span class="close_btn">×</span>
			<li>
				<h5>회원정보수정</h5>
			</li>
			<form action="UpdateCon" method="post">
				<input type="hidden" value="보낼값" name="name값">
				<!-- 비밀번호 입력 -->
				<div>
					<div class="text_box">
						<input type="password" id="user_pw" name="pw" placeholder="비밀번호"> <label class="form_label">새로운 비밀번호</label>
					</div>
					<div class="pw error_box" id="pw_error">6글자 이상 입력해주세요</div>
				</div>
				<!-- 비밀번호 확인 -->
				<div>
					<div class="text_box">
						<input type="password" id="user_re_pw" name="re_pw" placeholder="비밀번호 확인"> <label class="form_label">비밀번호 재입력</label>
					</div>
					<div class="re_pw error_box" id="re_pw_error">비밀번호가 일치하지 않습니다</div>
				</div>
				<div>이름 Name : ${loginMember.name }</div>
				<!-- 닉네임 변경 -->
				<div>
					<div class="text_box">
						<input type="text" id="user_nick" name="nick" placeholder="새로운 닉네임을 입력하세요"> <label class="form_label">새로운 닉네임</label>
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
	<script>
		// 페이지 로드 시 실행되는 함수
		window.onload = function() {
			let loginButton = document
					.querySelector("#header nav a[href='#menu']");
			let logoutButton = document
					.querySelector("#header nav a[href='LogoutCon']");
			let mypageButton = document
					.querySelector("#header nav a[href='mypage.html']");
			
	<%-- 세션에서 로그인 정보 확인 --%>
		
	<%if (loginMember != null) {%>
		loginButton.style.display = "none"; // 로그인 버튼 숨김
			logoutButton.style.display = "inline"; // 로그아웃 버튼 표시
			mypageButton.style.display = "inline"; // 마이페이지 버튼 표시
	<%} else {%>
		loginButton.style.display = "inline"; // 로그인 버튼 표시
			logoutButton.style.display = "none"; // 로그아웃 버튼 숨김
			mypageButton.style.display = "none"; // 마이페이지 버튼 숨김
	<%}%>

	</script>
	<script src="js/main.js"></script>
	<script src="js/pw.js"></script>
</body>

</html>