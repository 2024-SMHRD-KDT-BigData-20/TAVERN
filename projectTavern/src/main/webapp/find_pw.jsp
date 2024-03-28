<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/form/find.css">
</head>
<body>
	<div>
		<%@include file="layout/header.jsp"%>
	</div>
	<div class="main">
		<div class=find_container>
			<h1>비밀번호</h1>
			<div>
				<h4>
					<!-- 비밀번호 찾은 페이지 보여주는 문단 -->
					<%
					String foundPw = (String) session.getAttribute("findp");
					if (foundPw != null) {
						out.println("비밀번호: " + foundPw);
					} else {
						out.println("비밀번호를 찾을 수 없습니다.");
					}
					%>
				</h4>
			</div>
			<div class="f_text-box">
				<a href="find.jsp"> 돌아가기 </a>
			</div>
		</div>
	</div>
	<div>
		<%@include file="layout/footer.jsp"%>
	</div>
</body>
</html>