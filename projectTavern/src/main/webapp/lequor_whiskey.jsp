<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%@include file="main.jsp"%>
		<!-- 메인 -->
		<div id="main">
			<!-- 주제 -->
			<section>위스키</section>
			<!-- 내용 -->
			<section>
				<div>
					<ul id="linkList">
						<!-- 초기에 생성되는 6개의 <li> 태그 -->
						<li class="item1">1번째 아이템</li>
						<li class="item2">2번째 아이템</li>
						<li class="item3">3번째 아이템</li>
						<li class="item4">4번째 아이템</li>
						<li class="item5">5번째 아이템</li>
						<li class="item6">6번째 아이템</li>
					</ul>
					<!-- 더보기 버튼 -->
					<button id="moreButton">더보기</button>
				</div>
			</section>
		</div>
		<%@include file="footer.jsp"%>
	</div>
	<script src="js/function_js/plus.js">
		>
	</script>
</body>
</html>