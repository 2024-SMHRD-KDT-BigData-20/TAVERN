<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id=find_id_container>
		<form action="Find_pw_con" method="post">
			<h2>비밀번호</h2>
			<div>
				<h4>
					<!-- 비밀번호 찾은 페이지 보여주는 문단 -->
					<% 
						String foundPw = (String) session.getAttribute("findp");
						if (foundPw != null) {
					   		 out.println("찾은 비밀번호: " + foundPw);
						} else {
					    	out.println("비밀번호를 찾을 수 없습니다.");
						}
					%>
				</h4>
			</div>
			<div class="text-box">
				<a href = "main.jsp">
					로그인 화면으로 가기
				</a>
			</div>
		</form>
	</div>
</body>
</html>