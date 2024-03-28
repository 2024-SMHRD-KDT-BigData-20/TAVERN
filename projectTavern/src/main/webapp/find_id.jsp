<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/form/find.css">
</head>
<body>
	<div>
		<%@include file="layout/header.jsp"%>
	</div>
	<div class="main">
		<div class=find_container>
			<h1>아이디</h1>
			<div>
				<h4>
					<!-- 아이디 찾은 페이지 보여주는 문단 -->
					<%
					String foundId = (String) session.getAttribute("findi");
					if (foundId != null) {
						out.println("아이디: " + foundId);
					} else {
						out.println("아이디를 찾을 수 없습니다.");
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