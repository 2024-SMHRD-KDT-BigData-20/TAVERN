<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>



<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id=find_id_container>
			<h2>���̵�</h2>
			<div>
				
				<h4>
					
					<!-- ���̵� ã�� ������ �����ִ� ���� -->
					<% 
						String foundId = (String) session.getAttribute("findi");
						if (foundId != null) {
					   		 out.println("ã�� ���̵�: " + foundId);
						} else {
					    	out.println("���̵� ã�� �� �����ϴ�.");
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