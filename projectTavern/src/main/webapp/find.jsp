<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="find_container">
		<!--ã�� ������ find_id_con.java�� ���� ��� ������ find_id.jsp �������� �̵� -->
		<form action="Find_id_con" method="post">
			<h1>���̵� ã��</h1>
			<div class="text-box">
				<input type="email" name="email" id="email" placeholder="�̸����� �Է��ϼ���"> <label for="email">�̸���</label>
			</div>
			<div>
				<input type="submit" value="ã��">
			</div>
		</form>
		<!--ã�� ������ find_pw_con.java�� ���� ��� ������ find_pw.jsp �������� �̵� -->
		<form action="Find_pw_con" method="post">
			<h1>��й�ȣ ã��</h1>
			<div class="text-box">
				<input type="text" name="id" id=" id" placeholder="���̵� �Է��ϼ���"> <label for="id">���̵�</label>
			</div>
			<div>
				<input type="submit" value="ã��">
			</div>
		</form>
	</div>
</body>
</html>