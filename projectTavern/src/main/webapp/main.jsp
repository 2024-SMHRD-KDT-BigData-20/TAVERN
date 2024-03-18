<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>메인화면</h1>
		<p>{}</p>
		<!-- 로그인 했을 때 마이페이지/로그아웃 띄우기 -->
		<c:choose>
			<c:when test="${empty loginMember }">
				<a href="login.jsp">로그인/회원가입</a>
			</c:when>
			<c:otherwise>
				<%-- 만약에 로그인 한 사람의 email이 admin이면 select.jsp 이동 --%>
				<c:if test="${loginMember.email eq 'admin'}">
					<a href="select.jsp">관리자페이지</a>
				</c:if>

				<%-- 로그아웃 버튼을 누르면 요청이 LogoutCon.java이동 
					href="LogoutCon" 이라는 url-mapping값 --%>
				<h1>${loginMember.nick}님 환영합니다</h1>
				<!-- 마이페이지 네비혹은 페이지 -->
				<a href="mypage.jsp">마이페이지</a>
				<a href="Logout">로그아웃</a>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>