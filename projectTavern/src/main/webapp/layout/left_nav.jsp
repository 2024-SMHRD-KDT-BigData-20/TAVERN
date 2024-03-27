<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/left_nav.css?ver=1" rel="stylesheet">
</head>
<body>
	<div class="left_nav">
		<section id="user_info">
			<div class="My_img">
				<img alt="프로필사진" src="img/gohom.jpg">
			</div>
			<div>${loginMember.nick }님</div>
			<div class="m_link">
				<a href="#mypage">마이페이지</a>
				/
				<a href="LogoutCon">로그아웃</a>
			</div>
		</section>
		<div class="s">
			<ul>
				<div>리뷰</div>
				<ol>
					<%
					for (int i = 0; i < 6; i++) {
					%>
					<li>
						<a href="post_review.jsp"> 위스키 </a>
					</li>
					<%
					}
					%>
				</ol>
				<br>
				<div>
					<a href="#">자유</a>
				</div>
			</ul>
		</div>
	</div>

</body>
</html>