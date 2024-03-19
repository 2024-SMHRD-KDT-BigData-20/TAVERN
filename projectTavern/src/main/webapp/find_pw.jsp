<li><input type="text" name="tel" value="${loginMember.tel }" } style="width: 500px; margin: 0 auto;"></li>
id pw name nick birthdate gender email joined at



<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id=find_id_container>
		<form action="login_home.jsp">
			<h2>비밀번호</h2>
			<div>
				<h4>
					<!-- 비밀번호 찾은 페이지 보여주는 문단 -->
				</h4>
			</div>
			<div class="text-box">
				<a>
					<input type="submit" value="로그인화면으로가기">
				</a>
			</div>
		</form>
	</div>
</body>
</html>