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
				        String id = (String) request.getAttribute("id");
				        String password = (String) request.getAttribute("password");
				        
				        if (password != null) {
				    %>
				            <p><%= id %>님의 비밀번호 : <%= password %></p>
				    <%
				        } else {
				    %>
				            <p>Password for <%= id %> is not found.</p>
				    <%
				        }
				    %>
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