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
			<h2>비밀번호 찾기</h2>
			<form action="find_pw.jsp" method="post">
        		아이디 입력 : <input type="id" name="id" required><br>
        		<input type="submit" value="비밀번호 찾기">
    		</form>
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