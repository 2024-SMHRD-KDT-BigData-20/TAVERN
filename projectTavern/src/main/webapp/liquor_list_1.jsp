<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.LiquorVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/liquor.css?ver=1" rel="stylesheet">
</head>
<body>
	<div>
		<%@include file="../layout/header.jsp"%>
	</div>

	<!-- 메인 -->
	<div class="main">
		<section id="sc">
			<div class="container">
				<%
				List<LiquorVO> liquorDetails = (List<LiquorVO>) session.getAttribute("liquorDetails");
				if (liquorDetails != null && !liquorDetails.isEmpty()) {
					LiquorVO liquor = liquorDetails.get(0); // 리스트의 첫 번째 객체를 가져옴
				%>
				<div class="left-side">
					<!-- 이미지 표시 (여기서는 이미지 URL이 LiquorVO에 없으므로 생략) -->
					<img src="images/<%=liquor.getLiq_name()%>.jpg">
				</div>
				<div class="right-side">
					<!-- 술 정보 표시 -->
					<h2>
						술 이름:
						<%=liquor.getLiq_name()%></h2>
					<p>
						술 카테고리:
						<%=liquor.getLiq_category()%></p>
					<p>
						도수:
						<%=liquor.getLiq_alcohol()%></p>
					<p>
						맛:
						<%=liquor.getTasty()%></p>
					<p>
						향:
						<%=liquor.getSmell()%></p>
					<p>
						무게감:
						<%=liquor.getBody()%></p>
					<p>
						당분:
						<%=liquor.getSugar()%></p>
					<p>
						어울리는 음식:
						<%=liquor.getFood()%></p>
					<p>
						술정보:
						<%=liquor.getLiq_type()%></p>
					<!-- 술 정보(liq_type)는 상세 설명이 아니므로 여기서는 생략 -->
				</div>
				<%
				}
				%>
			</div>
		</section>
		<!-- 리뷰 페이지 링크 -->
		<div class="review">
			<c:choose>
				<c:when test="${empty loginMember }">
					<a href="#" onclick="alertLogin()">
						리뷰페이지로 이동
					</a>
				</c:when>
				<c:otherwise>
					<a href="post_main.jsp">
						리뷰페이지로 이동
					</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div>
		<%@include file="layout/footer.jsp"%>
	</div>
</body>
</html>