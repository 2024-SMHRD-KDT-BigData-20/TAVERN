<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link href="css/lequor.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/post.css" rel="stylesheet">
</head>
<body>
	<div> 
		<%@include file="../layout/header.jsp"%>
	</div>
	<div class="main" style="height: 600px">
		<div>
			<%@include file="layout/left_nav.jsp"%>
		</div>
		<div class="cate">
			<h4>
				<!-- 여기에 위스키나 제목 입력 DB로 가져오기 -->
				위스키
			</h4>
		</div>
		<div>
			<div class="card">

				<a href="writing.jsp">
					<div class="writing">글쓰기</div>
				</a>
				<!-- 이 부분을 데베의 길이만큼 출력 -->
				<div class="title">
					<a href="#">
						<h4>
							<!-- 여기에 DB에서 제목 가져와서 보여주기 -->
							아무 제목
						</h4>
					</a>
				</div>
				<!-- 글 내용 div -->
			</div>
		</div>
	</div>
	<%@include file="layout/footer.jsp"%>
</body>
</html>