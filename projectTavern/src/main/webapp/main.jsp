<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<link href="css/main.css?ver=1" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<div>
		<%@include file="layout/header.jsp"%>
	</div>
	<div class="main">
		<div id="slideShow">
			<div id="slides">
				<img src="img/bono1.j" alt="간판 이미지1"> <img src="img/bono2.j" alt="간판 이미지2">
				<button id="prev" class="bt">&lang;</button>
				<button id="next" class="bt">&rang;</button>
			</div>
		</div>
		<div id="lequor">
			<div>
				<h4>Tarvern이란</h4>
				<p>선술집을 나타내는 의미</p>
			</div>
		</div>
		<%@include file="layout/footer.jsp"%>
	</div>
	<!-- footer -->
	<script type="text/javascript" src="js/function/slideshow.js"></script>
</body>
</html>