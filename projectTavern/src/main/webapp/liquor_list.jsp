<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위스키 목록</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/leqour.css" rel="stylesheet">
</head>
<body>
	<div id="container">
		<%@include file="layout/header.jsp"%>
		<%@include file="layout/left_nav.jsp"%>
		<!-- 메인 -->
		<div id="main">
			<!-- 주제 -->
			<section>위스키</section>
			<!-- 내용 -->
			<section>
				<div>
					<ul id="linkList">
						<!-- 세션에서 술 이름 목록을 가져와서 출력 -->
						<%
						List<LiquorVO> whiskeyList = (List<LiquorVO>) session.getAttribute("whiskeyList");
						if (whiskeyList != null) {
						    int count = 0; // 술의 이름을 6개만 나오게 하기 위한 카운터
						    for (LiquorVO liquor : whiskeyList) {
						        if (count < 6) { // 처음 6개의 항목만 처리
						%>
						<div class="liquor-item">
						    <img src="images/<%=liquor.getLiq_name()%>.jpg" alt="<%=liquor.getLiq_name()%>" style="width:100px; height:auto;"> <!-- 이미지 -->
						    <h3><a href="javascript:void(0);"><%=liquor.getLiq_name()%></a></h3> <!-- 술의 이름 -->
						</div>
						<%
						            count++; // 카운터 증가
						        } else {
						            break; // 6개를 초과하면 반복문 종료
						        }
						    }
						} else {
						    System.out.println("Liquor List is null.");
						}
						%>
					</ul>
					<!-- 더보기 버튼 -->
					<button id="moreButton">더보기</button>
				</div>
			</section>
		</div>
	</div>
	<%@include file="layout/footer.jsp"%>
	<script src="js/function/plus.js"></script>
</body>
</html>