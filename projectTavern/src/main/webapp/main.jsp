<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>����ȭ��</h1>
		<p>{}</p>
		<!-- �α��� ���� �� ����������/�α׾ƿ� ���� -->
		<c:choose>
			<c:when test="${empty loginMember }">
				<a href="login.jsp">�α���/ȸ������</a>
			</c:when>
			<c:otherwise>
				<%-- ���࿡ �α��� �� ����� email�� admin�̸� select.jsp �̵� --%>
				<c:if test="${loginMember.email eq 'admin'}">
					<a href="select.jsp">������������</a>
				</c:if>

				<%-- �α׾ƿ� ��ư�� ������ ��û�� LogoutCon.java�̵� 
					href="LogoutCon" �̶�� url-mapping�� --%>
				<h1>${loginMember.nick}�� ȯ���մϴ�</h1>
				<!-- ���������� �׺�Ȥ�� ������ -->
				<a href="mypage.jsp">����������</a>
				<a href="Logout">�α׾ƿ�</a>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>