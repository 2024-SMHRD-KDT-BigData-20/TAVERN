<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="login_con">
		<h1>�α���</h1>
		<table>
			<div>
				<div>
					<form action="LoginCon" method="post">
						<div class="text_box">
							<input type="text" id="user_id" name="id" placeholder="���̵� �Է��ϼ���"> <label class="form_lavel">���̵�</label>
						</div>
						<div class="error_box"></div>
						<div></div>
						<div>
							<input type="password" name="pw" placeholder="��й�ȣ�� �Է��ϼ���"> <label class="form_lavel">��й�ȣ</label>
						</div>
						<div class="error_box"></div>
						<input type="submit" value="�α���">
					</form>
				</div>
				<div>
					<button type="button" onclick="location.href='join.jsp'">ȸ������</button>
				</div>
				<div>
					<a href="find.jsp">���̵�/��й�ȣ ã��</a>
				</div>
		</table>
	</div>
</body>
</html>