<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/liquor.css" rel="stylesheet">

</head>
<body>
	<div>
		<%@include file="../layout/header.jsp"%>
	</div>
	<!-- 좌측 네비 -->

	<!-- 메인문 -->
	<div class="main">
		<div class="card"> 
			<div>
				<h2>양주</h2>
			</div>
			<div id="pt">
				<!-- 이미지 -->
				<img src="img/liquor.jpg" alt="양주 이미지">
				<p>양주(洋酒). 말 그대로 서양에서 들어온 술을 뜻합니다. 하지만 한국에선 보통 위스키와 같이 알코올 도수 높은 독한 술을 가리킵니다. 맥주나 와인을 양주라 부르진 않죠. 양주엔 위스키만 있는 것이 아닙니다. 브랜디·진·럼·보드카·테킬라 등 다양합니다. 이들은 증류주란 공통점을 갖고 있습니다.</p>
			</div>
		</div>
		<div class="card">
			<div>
				<h2>위스키</h2>
			</div>
			<div id="pt">
				<!-- 이미지 -->
				<img src="img/liquor.jpg" alt="양주 이미지">
				<p>위스키(영어: whisky 또는 whiskey, 문화어: 위스끼)는 맥아 및 기타 곡류를 당화 발효시킨 발효주를 증류하여 만든 술이다. 주로 보리, 옥수수, 호밀, 밀 등의 곡물이 원료가 된다. 증류 후에는 나무 통에 넣어 숙성시키는게 보통이다</p>
			</div>
		</div>
	</div>
	<div>
		<%@include file="layout/footer.jsp"%>
	</div>
	<script src="js/main.js"></script>
</body>
</html>