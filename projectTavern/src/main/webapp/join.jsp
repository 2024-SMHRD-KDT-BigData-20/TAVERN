<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>
	<div id="container">
		<form action="JoinCon" method="post">
			<!-- ȸ������ �Է� Ÿ��Ʋ -->
			<div class=tilte>ȸ������</div>
			<!-- ȸ�� ���̵� �Է� -->
			<div>
				<div class="text_box">
					<input type="text" id="user_id" name="id" placeholder="���̵�">
					<label class="form_lavel">���̵�</label>
				</div>
				<div class="error_box"></div>
			</div>
			<!-- ��й�ȣ �Է� -->
			<div>
				<div class="text_box">
					<input type="password" id="user_re_pw" name="pw" placeholder="��й�ȣ Ȯ��">
					<label class="form_lavel">��й�ȣ</label>
				</div>
				<div class="pw error_box">6���� �̻� �Է����ּ���</div>
			</div>
			<div>
				<div class="text_box">
					<input type="password" id="user_re pw" name="pw" placeholder="��й�ȣ Ȯ��">
					<label class="form_lavel">��й�ȣ ���Է�</label>
				</div>
				<div class="re_pw error_box">��й�ȣ�� ��ġ���� �ʽ��ϴ�</div>
			</div>
			<div>
				<div class="text_box">
					<input type="text" id="user_name" name="name" placeholder="�̸��� �Է��ϼ���">
					<label class="form_lavel">�̸�</label>
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
					<input type="text" id="user_date" name="date" placeholder="��������� �Է��ϼ���">
					<label class="form_lavel">������� ex)20011203</label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<div>
					<label for="gender">����</label>
					<select name="gender" id="gender">
						<option value="man">����</option>
						<option value="woman">����</option>
					</select>
				</div>
			</div>
			<div>
				<div class="text_box">
					<input type="email" id="email" name="email" placeholder="�̸����������� �Է��ϼ���">
					<label for="email">�̸��� �Է�: </label>
				</div>
				<div class="error_box"></div>
			</div>
			<div>
				<input type="submit" value="����">
			</div>
		</form>
		<script src="js/pw_re.js"></script>
	</div>
</body>
</html>