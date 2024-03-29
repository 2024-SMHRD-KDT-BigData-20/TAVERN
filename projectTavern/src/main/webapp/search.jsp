<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%-- 
MemberDAO dao = new MemberDAO();
List<MemberVO> memberlist = dao.selectAll);
%> --%>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
<link href="css/main.css" rel="stylesheet">
</head>
<body>
	<div class="main">
		<div>
			<h1>검색</h1>
		</div>
		<div>
			<form action="SearchCon" method="get">
				<input type="text" name="search" placeholder="검색 키워드를 작성하세요">
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
</body>
</html>