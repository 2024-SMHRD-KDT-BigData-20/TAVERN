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
<title>헤더</title>
<link rel="stylesheet" type="text/css" href="css/form/mypage.css?ver=1">
<link rel="stylesheet" type="text/css" href="css/form/join.css?ver=1">
<link rel="stylesheet" type="text/css" href="css/form/update.css">
<link rel="stylesheet" type="text/css" href="css/form/login.css">
<link rel="stylesheet" type="text/css" href="css/layout/header.css">

</head>

<body>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null && !message.isEmpty()) {
	%>
	<script>
		alert(
	<%=message%>
		);
	</script>
	<%
	}
	%>
	<!-- header -->
	<div class="header alt">
		<div class="left-icon">
			<!-- 로고 아이콘 -->
			<div class="logo">
				<a href="main.jsp">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="40px" height="40px">
					<path
							d="m11.5,3.5V.5c0-.276.224-.5.5-.5s.5.224.5.5v3c0,.276-.224.5-.5.5s-.5-.224-.5-.5Zm3.743.429c.08.048.169.071.257.071.169,0,.335-.086.429-.243l1.5-2.5c.143-.237.065-.544-.172-.686-.233-.14-.543-.065-.686.171l-1.5,2.5c-.143.237-.065.544.172.686Zm-7.172-.171c.094.156.26.243.429.243.088,0,.177-.023.257-.071.237-.142.314-.449.172-.686l-1.5-2.5c-.142-.237-.451-.312-.686-.171-.237.142-.314.449-.172.686l1.5,2.5Zm15.587,18.717l-4.5,1.5c-.053.018-.105.026-.158.026-.209,0-.404-.132-.475-.342-.087-.262.055-.545.316-.632l1.721-.574-1.243-3.586c-.374.09-.752.135-1.129.135-.815,0-1.621-.21-2.352-.622-1.117-.63-1.921-1.658-2.265-2.893l-1.575-4.751-1.582,4.774c-.337,1.212-1.141,2.239-2.258,2.87-.73.412-1.536.622-2.352.622-.377,0-.755-.045-1.129-.135l-1.243,3.586,1.721.574c.262.087.403.37.316.632-.07.209-.266.342-.475.342-.053,0-.105-.008-.158-.026l-4.5-1.5c-.262-.087-.403-.37-.316-.632.088-.262.371-.401.633-.316l1.83.61,1.249-3.602c-.888-.42-1.623-1.103-2.115-1.976-.631-1.117-.788-2.412-.443-3.647l1.998-6.04c.41-1.356,1.868-2.156,3.244-1.773l4.141,1.153c.589.164,1.09.516,1.439,1.005.35-.488.85-.841,1.438-1.005l4.143-1.153c1.38-.385,2.834.417,3.247,1.786l1.987,6.004c.352,1.258.194,2.553-.437,3.67-.492.873-1.228,1.555-2.115,1.976l1.249,3.602,1.83-.61c.263-.086.545.054.633.316.087.262-.055.545-.316.632Zm-12.799-11.474H2.862l-.729,2.202c-.266.955-.141,1.98.357,2.864.499.884,1.312,1.521,2.29,1.793.98.272,2.004.147,2.888-.352s1.521-1.312,1.793-2.29l1.397-4.218Zm.641-2.226c-.006-.26-.074-.527-.205-.764-.216-.393-.572-.675-1.004-.795l-4.141-1.153c-.146-.041-.293-.06-.438-.06-.71,0-1.371.464-1.585,1.171l-.935,2.827h7.997l.242-.731c.044-.144.066-.345.068-.495Zm1.309,1.226h7.997l-.932-2.814c-.217-.718-.88-1.184-1.59-1.184-.145,0-.291.019-.436.06l-4.143,1.153c-.431.121-.787.403-1.003.795-.13.237-.198.496-.204.759.002.153.025.362.071.513l.238.719Zm8.699,6.066c.498-.884.623-1.91.351-2.887l-.721-2.179h-7.997l1.39,4.195c.279,1.001.916,1.814,1.8,2.313s1.908.624,2.888.352c.978-.272,1.791-.91,2.29-1.793Z" /></svg>
					<p>Tarvern</p>
				</a>
			</div>
		</div>
		<!-- 메뉴 -->
		<div class="header-menu">
			<nav id="topNav">
				<ul id="topMenu">
					<li>
						<a href="liquor.jsp">
							정보<span>🔻</span>
						</a>
						<ul>
							<li>
								<a href="LiquorCon?liq_type=<%="위스키"%>">위스키</a>
							</li>
							<li>
								<a href="LiquorCon?liq_type=<%="럼"%>">럼</a>
							</li>
							<li>
								<a href="LiquorCon?liq_type=<%="보드카"%>">보드카</a>
							</li>
							<li>
								<a href="LiquorCon?liq_type=<%="리큐르"%>">리큐르</a>
							</li>
							<li>
								<a href="LiquorCon?liq_type=<%="꼬냑"%>">꼬냑</a>
							</li>
							<li>
								<a href="LiquorCon?liq_type=<%="데킬라"%>">데킬라</a>
							</li>
						</ul>
					</li>
					<li>
						<c:choose>
							<c:when test="${empty loginMember }">
								<a href="#" onclick="alertLogin()">
									커뮤니티<span>🔻</span>
								</a>
								<ul>
									<li>
										<a href="#" onclick="alertLogin()">리뷰</a>
									</li>
									<li>
										<a href="#" onclick="alertLogin()">자유</a>
									</li>
								</ul>
							</c:when>
							<c:otherwise>
								<a href="Post_main_Con?post_category=위스키&post_category=럼&post_category=보드카&post_category=리큐르&post_category=꼬냑&post_category=데킬라">
									커뮤니티<span>🔻</span>
								</a>
								<ul>
									<li>
										<a href="Post_list_Con?liq_type=<%="위스키"%>">리뷰</a>
									</li>
									<li>
										<a href="post_free.jsp">자유</a>
									</li>
								</ul>
							</c:otherwise>
						</c:choose>
					<li>
						<a href="event.jsp">소식</a>
					</li>
					<li>
						<a href="inquiry.jsp">문의하기</a>
					</li>


				</ul>
			</nav>
		</div>
		<!-- 로그인 아이콘 -->
		<div class="link header-icon">
			<c:choose>
				<c:when test="${empty loginMember }">
					<a href="#login" class="login-link">
						<svg xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="25px" height="25px">
								<path d="M12,12A6,6,0,1,0,6,6,6.006,6.006,0,0,0,12,12ZM12,2A4,4,0,1,1,8,6,4,4,0,0,1,12,2Z" />
								<path d="M12,14a9.01,9.01,0,0,0-9,9,1,1,0,0,0,2,0,7,7,0,0,1,14,0,1,1,0,0,0,2,0A9.01,9.01,0,0,0,12,14Z" /></svg>
					</a>
				</c:when>
				<c:otherwise>
					<a href="#mypage" class="mypage-link">
						<svg xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="25px" height="25px">
								<path d="M12,12A6,6,0,1,0,6,6,6.006,6.006,0,0,0,12,12ZM12,2A4,4,0,1,1,8,6,4,4,0,0,1,12,2Z" />
								<path d="M12,14a9.01,9.01,0,0,0-9,9,1,1,0,0,0,2,0,7,7,0,0,1,14,0,1,1,0,0,0,2,0A9.01,9.01,0,0,0,12,14Z" /></svg>
					</a>
					<a href="LogoutCon?redirectURL=<%=request.getRequestURI()%>" class="logout-link">
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background: new 0 0 512 512;" xml:space="preserve" width="25px" height="25px">
								<path d="M487.06,195.669l-82.752-82.752c-8.475-8.185-21.98-7.95-30.165,0.525c-7.985,8.267-7.985,21.374,0,29.641l82.752,82.752   c2.459,2.507,4.607,5.301,6.4,8.32c-0.32,0-0.576-0.171-0.896-0.171l0,0l-334.592,0.683c-11.782,0-21.333,9.551-21.333,21.333   c0,11.782,9.551,21.333,21.333,21.333l0,0l334.464-0.683c0.597,0,1.088-0.299,1.664-0.341c-1.892,3.609-4.292,6.928-7.125,9.856   l-82.752,82.752c-8.475,8.185-8.71,21.69-0.525,30.165c8.185,8.475,21.69,8.71,30.165,0.525c0.178-0.172,0.353-0.347,0.525-0.525   l82.752-82.752c33.313-33.323,33.313-87.339,0-120.661L487.06,195.669z" />
								<path d="M149.374,469.333h-42.667c-35.346,0-64-28.654-64-64V106.667c0-35.346,28.654-64,64-64h42.667   c11.782,0,21.333-9.551,21.333-21.333S161.157,0,149.374,0h-42.667C47.827,0.071,0.112,47.786,0.041,106.667v298.667   C0.112,464.214,47.827,511.93,106.708,512h42.667c11.782,0,21.333-9.551,21.333-21.333   C170.708,478.885,161.157,469.333,149.374,469.333z" />
					
					
					
					
					
					
					
					</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- login -->
	<nav id="login" class="login-form ">
		<div id="login_con">
			<span class="close_btn">×</span>
			<!-- X 버튼 추가 -->
			<h1>로그인</h1>
			<form action="LoginCon?redirectURL=<%=request.getRequestURI()%>" method="post">
				<div class="text_box">
					<label class="form_lavel">아이디</label>
					<input type="text" id="user_id" name="id" placeholder="아이디를 입력하세요">
					<div class="error_box"></div>
				</div>
				<div class="text_box">
					<label class="form_lavel">비밀번호</label>
					<input type="password" name="pw" placeholder="비밀번호를 입력하세요">
				</div>
				<input type="submit" value="로그인">
			</form>

			<div id="join_btn">
				<button onclick=" location.href='#Join' " class="join-link">회원가입</button>
			</div>
			<div id="find_btn">
				<a href="find.jsp" class="find_link">아이디/비밀번호 찾기</a>
			</div>
		</div>
	</nav>

	<!-- mypage -->
	<nav id="mypage" class="mypage-form">
		<span class="close_btn">×</span>
		<div>
			<h1>마이페이지</h1>
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
				<a href="DeleteCon?id=${loginMember.id }">탈퇴하기 </a>
			</div>
		</div>
	</nav>

	<!-- 정보수정 -->
	<nav id="Update" class="update-form">
		<span class="close_btn">×</span>
		<li>
			<h1>회원정보수정</h1>
		</li>
		<form action="UpdateCon" method="post">
			<input type="hidden" value="보낼값" name="name값">
			<!-- 비밀번호 입력 -->
			<div>
				<div class="text_box">
					<label class="form_label">새로운 비밀번호</label>
					<input type="password" id="up_pw" name="pw" placeholder="비밀번호">
				</div>
				<div class="pw error_box" id="u_pw_error">6글자 이상 입력해주세요</div>
			</div>
			<!-- 비밀번호 확인 -->
			<div>
				<div class="text_box">
					<label class="form_label">비밀번호 재입력</label>
					<input type="password" id="up_re_pw" name="re_pw" placeholder="비밀번호 확인">
				</div>
				<div class="re_pw error_box" id="u_re_pw_error">비밀번호가 일치하지 않습니다</div>
			</div>
			<div>이름 Name : ${loginMember.name }</div>
			<!-- 닉네임 변경 -->
			<div>
				<div class="text_box">
					<label class="form_label">닉네임 입력</label>
					<input type="text" id="user_nick" name="nick" placeholder="새로운 닉네임을 입력하세요">

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


	<!-- 회원가입 -->
	<nav id="Join" class="Join-form">
		<form id="joinForm" action="JoinCon" method="post" name="frm">
			<span class="close_btn">×</span>
			<!-- 회원정보 입력 타이틀 -->
			<div class="title">
				<h1>회원가입</h1>
			</div>
			<!-- 회원 아이디 입력 -->
			<div>
				<div class="text_box">
					<label class="form_label">아이디</label>
					<input type="text" id="user_id" name="id" placeholder="아이디">
				</div>
				<div class="id error_box" id="id_error">영문자 혹은 영문자와 숫자를 포함해서 만들어주세요</div>
			</div>
			<!-- 비밀번호 입력 -->
			<div>
				<div class="text_box">
					<label class="form_label">비밀번호</label>
					<input type="password" id="user_pw" name="pw" placeholder="비밀번호">
				</div>
				<div class="pw error_box" id="pw_error">6글자 이상 입력해주세요</div>
			</div>
			<!-- 비밀번호 확인 -->
			<div>
				<div class="text_box">
					<label class="form_label">비밀번호 재입력</label>
					<input type="password" id="user_re_pw" name="re_pw" placeholder="비밀번호 확인">
				</div>
				<div class="re_pw error_box" id="re_pw_error">비밀번호가 일치하지 않습니다</div>
			</div>
			<!-- 이름 입력 -->
			<div>
				<div class="text_box">
					<label class="form_label">이름</label>
					<input type="text" id="user_name" name="name" placeholder="이름을 입력하세요">
				</div>
			</div>
			<!-- 닉네임 입력 -->
			<div>
				<div class="text_box">
					<label class="form_lavel">닉네임</label>
					<input type="text" id="user_nick" name="nick" placeholder="닉네임을 입력하세요">
				</div>
			</div>
			<!-- 생년월일 양식에 맞게 입력 -->
			<div>
				<div class="text_box">
					<label class="form_lavel">생년월일 ex)20011203</label>
					<input type="text" id="user_date" name="birthdate" placeholder="생년월일을 입력하세요">
				</div>
				<div class="date error_box" id="date_error_box">양식에 맞게 써주세요</div>
			</div>
			<!-- 성별 선택 -->
			<div>
				<div class="text_box">
					<label for="gender">성별</label> <select name="gender" id="gender">
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</div>
			</div>
			<!-- 이메일 형식으로 입력 -->
			<div>
				<div class="text_box">
					<label for="email">이메일 입력: </label>
					<input type="email" id="email" name="email" placeholder="이메일형식으로 입력하세요">
				</div>
				<div class="error_box">이메일 양식에 맞게 해주세요</div>
			</div>
			<div>
				<input type="submit" value="가입">
			</div>
		</form>
	</nav>
	<script>
		// 페이지 로드 시 실행되는 함수
		window.onload = function() {
			let loginButton = document
					.querySelector("#header nav a[href='LoginCon']");
			let logoutButton = document
					.querySelector("#header nav a[href='LogoutCon']");
			let mypageButton = document
					.querySelector("#header nav a[href='#mypage']");
		}
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
	<script src="js/header.js" type="text/javascript"></script>
	<script src="js/update.js" type="text/javascript"></script>
	<script src="js/join.js" type="text/javascript"></script>

</body>

</html>