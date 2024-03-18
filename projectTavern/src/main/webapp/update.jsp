<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />		
	</head>
	<body style="text-align: center;">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="UpdateCon" method="post">
									<input type="hidden" value="보낼값" name="name값">
									<!-- id 보여주는곳 -->
									<li>접속한 Email :  ${loginMember.email } </li>
									<!-- pw 변경 -->
									<li><input type="password" name="pw" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<!-- pw 재입력 -->
									<li><input type="password" name="pw2" placeholder="PW를 재입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<!-- 이름 보여주는곳 -->
									<li>이름 Name : ${loginMember.name } </li>
									<!-- 닉네임 변경 -->
									<li><input type="text" name="Nick Name" placeholder="변경할 닉네임입력" style="width: 500px; margin: 0 auto;"></li>
									<!-- 생일 보여주는곳 -->
									<li>생일 : ${loginMember.birthdate } </li>
									<!-- 성별 보여주는곳 -->
									<li>성별 : ${loginMember.gender } </li>
									<!-- 이메일 보여주는곳 -->
									<li>Email : ${loginMember.email } </li>
									<!-- 가입일자 보여주는곳 -->
									<li>가입일자 : ${loginMember.joined_at } </li>
									<li><input type="submit" value="JoinUs" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
						</ul>
					</nav>			
			</div>
		
	</body>
</html>

