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
						String foundPw = (String) session.getAttribute("findp");
						if (foundPw != null) {
					   		 out.println("ã�� ��й�ȣ: " + foundPw);
						} else {
					    	out.println("��й�ȣ�� ã�� �� �����ϴ�.");
						}
					%>
				</h4>
			</div>
			<div class="text-box">
				<a href = "main.jsp">
					�α��� ȭ������ ����
				</a>
			</div>
		</form>
	</div>
</body>
</html>