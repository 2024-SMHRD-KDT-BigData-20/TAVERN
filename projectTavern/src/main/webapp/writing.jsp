<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%@include file="layout/header.jsp" %>
	<div id=container>
		<h1>신규 게시글 작성</h1>
		<form action="#" method="post">
			<table>
				<tr>
					<td>작성자</td>
					<!-- 여기에 텍스트 입력인데 자동으로 세션에 저장된 유저 닉을 데베에 저장 -->
					<td><input type="text" name="writer"></td>
				</tr>
				<!-- 술 테이블에서 카테고리 뽑아가지고 저장 -->
				<tr>
					<td>카테고리</td>
					<td><input type="text" name="category"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" cols="20" name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
					<!-- 버튼 입력시 데베로 저장되는 코드 생성 -->
						<button type="submit">저장</button>
						<button type="button" onclick="location.href='post_list.jsp'">목록으로</button>
						<button type="reset">초기화</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>