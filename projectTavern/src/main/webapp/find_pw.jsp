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
			<h2>��й�ȣ</h2>
			<div>
				<h4>
					<!-- ��й�ȣ ã�� ������ �����ִ� ���� -->
					<%
				        String id = (String) request.getAttribute("id");
				        String password = (String) request.getAttribute("password");
				        
				        if (password != null) {
				    %>
				            <p><%= id %>���� ��й�ȣ : <%= password %></p>
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
					<input type="submit" value="�α���ȭ�����ΰ���">
				</a>
			</div>
		</form>
	</div>
</body>
</html>