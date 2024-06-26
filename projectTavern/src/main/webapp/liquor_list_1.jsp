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
					<img src="img/liquor/<%=liquor.getLiq_name()%>.png" alt="<%=liquor.getLiq_name()%>">
				</div>
				<div class="right-side">
					<!-- 술 정보 표시 -->
					<table>
						<tr>
							<td>술 이름 :</td>
							<td><%=liquor.getLiq_name()%></td>
						</tr>
						<tr>
							<td>술 카테고리 :</td>
							<td><%=liquor.getLiq_category()%></td>
						</tr>
						<tr>
							<td>도수 :</td>
							<td><%=liquor.getLiq_alcohol()%></td>
						</tr>
						<tr>
							<td>맛 :</td>
							<td><%=liquor.getTasty()%></td>
						</tr>
						<tr>
							<td>향 :</td>
							<td><%=liquor.getSmell()%></td>
						</tr>
						<tr>
							<td>무게감 :</td>
							<td><%=liquor.getBody()%></td>
						</tr>
						<tr>
							<td>당분 :</td>
							<td><%=liquor.getSugar()%></td>
						</tr>
						<tr>
							<td>어울리는 음식 :</td>
							<td><%=liquor.getFood()%></td>
						</tr>
						<tr>
							<td>술정보 :</td>
							<td><%=liquor.getLiq_type()%></td>
						</tr>
						<!-- 술 정보(liq_type)는 상세 설명이 아니므로 여기서는 생략 -->
					</table>
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
					<a href="#" onclick="alertLogin()"> 리뷰페이지로 이동 </a>
				</c:when>
				<c:otherwise>
					<a href="post_main.jsp"> 리뷰페이지로 이동 </a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div>
		<%@include file="layout/footer.jsp"%>
	</div>
</body>
</html>