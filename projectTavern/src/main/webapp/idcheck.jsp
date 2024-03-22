<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>아이디 중복확인</h2>
	<form action="idcheck" method="get" name="frm">
		아이디 <input type=text name="userid" value="${id}"> <input type=submit value="중복 체크"> <br>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.id.value = "";
			</script>
			${id}는 이미 사용 중인 아이디입니다.
		</c:if>
		<c:if test="${result==-1}">
		${id}는 사용 가능한 아이디입니다.
		<input type="button" value="사용" class="cancel" onclick="idok('${id}')">
		</c:if>
	</form>
</body>
</html>