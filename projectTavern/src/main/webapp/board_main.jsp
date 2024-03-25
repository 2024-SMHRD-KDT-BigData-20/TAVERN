<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="layout/header.jsp"%>
	<div>커뮤니티</div>
	<div>
		<section id="user_info">
			<div>
				<img>
			</div>
			<div>${loginMember.nick }님</div>
			<div>
				<a href="#mypage">마이페이지</a>
				|
				<a href="LogoutCon">로그아웃</a>
			</div>
			<hr>
			<div>
				<ul>
					<li>
						리뷰
						<ol>
							<a href="post_list.jsp">위스키</a>
						</ol>
						<ol>
							<a href="#">럼</a>
						</ol>
						<ol>
							<a href="#">보드카</a>
						</ol>
						<ol>
							<a href="#">브랜디</a>
						</ol>
						<ol>
							<a href="#">리큐르</a>
						</ol>
					</li>
					<li>자유</li>
				</ul>
			</div>
		</section>
		<!-- main -->
		<div id="main">
			<!-- 위스키 카드 -->
			<div class="card">
				<h3>
					<a href="#">위스키</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">럼</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">리큐르</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">보드카</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">진</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">꼬냑</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
			<div class="card">
				<h3>
					<a href="#">자유</a>
				</h3>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
				<a class="list">
					<p></p>
				</a>
			</div>
		</div>
		<!-- footer -->
		<footer><%@include file="layout/footer.jsp"%></footer>
	</div>
	<script>
		
	</script>
</body>
</html>