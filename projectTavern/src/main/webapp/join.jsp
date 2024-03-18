<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html l>
<head>
<meta charset="utf-8">
<title>ȸ������</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>
	<div id="container">
		<form action="JoinCon" method="post">
			<!-- ȸ������ �Է� Ÿ��Ʋ -->
			<div class="title">ȸ������</div>
			<!-- ȸ�� ���̵� �Է� -->
			<div>
				<div class="text_box">
					<input type="text" id="user_id" name="id" placeholder="���̵�">
					<label class="form_label">���̵�</label>
				</div>
				<div><button onclick=""></button></div>
				<div class="error_box" id="id_error">������ Ȥ�� �����ڿ� ���ڸ� �����ؼ� ������ּ���</div>
			</div>
			<!-- ��й�ȣ �Է� -->
			<div>
				<div class="text_box">
					<input type="password" id="user_pw" name="pw" placeholder="��й�ȣ">
					<label class="form_label">��й�ȣ</label>
				</div>
				<div class="pw error_box" id="pw_error">6���� �̻� �Է����ּ���</div>
			</div>
			<!-- ��й�ȣ Ȯ�� -->
			<div>
				<div class="text_box">
					<input type="password" id="user_re_pw" name="re_pw" placeholder="��й�ȣ Ȯ��">
					<label class="form_label">��й�ȣ ���Է�</label>
				</div>
				<div class="re_pw error_box" id="re_pw_error">��й�ȣ�� ��ġ���� �ʽ��ϴ�</div>
			</div>
			<!-- �̸� �Է� -->
			<div>
				<div class="text_box">
					<input type="text" id="user_name" name="name" placeholder="�̸��� �Է��ϼ���">
					<label class="form_label">�̸�</label>
				</div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_nick" name="nick" placeholder="�г����� �Է��ϼ���">
					<label class="form_lavel">�г���</label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_date" name="birthdate" placeholder="��������� �Է��ϼ���">
					<label class="form_lavel">������� ex)20011203</label>
				</div>
				<div class="date error_box" id="date_error_box">��Ŀ� �°� �Է����ּ���</div>
			</div>
			<div>
				<div>
					<label for="gender">����</label>
					<select name="gender" id="gender">
						<option value="0">����</option>
						<option value="1">����</option>
					</select>
				</div>
			</div>
			<div>
				<div class="text_box">
					<input type="email" id="email" name="email" placeholder="�̸����������� �Է��ϼ���">
					<label for="email">�̸��� �Է�: </label>
				</div>
				<div class="error_box">�̸��� ��Ŀ� �°� ���ּ���</div>
			</div>
			<div>
				<input type="submit" value="����">
			</div>
		</form>
		<script src="js/pw.js"></script>
	</div>
</body>
</html>