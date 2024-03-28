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
				<img alt="프로필사진" src="img/user.png">
			</div>
			<div>${loginMember.nick }님</div>
			<div class="m_link">
				<a href="#" onclick="showMyPage()">마이페이지</a>
				/
				<a href="LogoutCon">로그아웃</a>
			</div>
		</section>
		<div class="s">
			<ul>
				<div>리뷰</div>
				<ol>
					<li>
						<a href="Post_list_Con?liq_type=<%="위스키"%>">위스키</a>
					</li>
					<li>
						<a href="Post_list_Con?liq_type=<%="럼"%>">럼</a>
					</li>
					<li>
						<a href="Post_list_Con?liq_type=<%="보드카"%>">보드카</a>
					</li>
					<li>
						<a href="Post_list_Con?liq_type=<%="리큐르"%>">리큐르</a>
					</li>
					<li>
						<a href="Post_list_Con?liq_type=<%="꼬냑"%>">꼬냑</a>
					</li>
					<li>
						<a href="Post_list_Con?liq_type=<%="데킬라"%>">데킬라</a>
					</li>
				</ol>
				<br>
				<div>
					<a href="#">자유</a>
				</div>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		// 마이페이지 링크를 클릭했을 때 실행되는 함수
		function showMyPage() {
			// 마이페이지 폼을 포함하는 header.jsp의 ID인 mypage를 가져옴
			var mypageForm = document.getElementById("mypage");

			// 만약 마이페이지 폼이 숨겨져 있다면 보이도록 변경하고, 그렇지 않으면 숨김
			if (mypageForm.style.display === "none"
					|| mypageForm.style.display === "") {
				mypageForm.style.display = "block";
			} else {
				mypageForm.style.display = "none";
			}
		}
	</script>

</body>
</html>