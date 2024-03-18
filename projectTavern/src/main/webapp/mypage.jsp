<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div>
			<h4>마이페이지</h4>
			<div>id = ${loginMember.id}</div>
			<div>nick = ${loginMember.nick}</div>
		</div>
		<div>
			작성한 목록
			<div>게시글보기</div>
			<div>임시저장보기</div>
			<div>문의보기</div>
			<div>댓글보기</div>
			<div><a href="">정보수정</div>
			<div>회원삭제</div>
		</div>
	</div>
</body>
</html>