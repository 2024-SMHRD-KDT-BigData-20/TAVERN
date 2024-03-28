<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위스키 목록</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/liquor.css?ver=1" rel="stylesheet">
</head>
<body>
	<div>
		<%@include file="../layout/header.jsp"%>
	</div>
	<!-- 메인 -->
	<div class="main">
		<%
		// 세션에서 술의 유형 가져오기
		String liqType = (String) session.getAttribute("liq_type");
		%>
		<!-- 주제 -->
		<div class="title">
			<h1>
				<%-- 술의 유형에 따라 다른 주제 설정 --%>
				<%
				if (liqType != null) {
					if (liqType.equals("위스키")) {
				%>
				위스키
				<%
				} else if (liqType.equals("럼")) {
				%>
				럼
				<%
				} else if (liqType.equals("보드카")) {
				%>
				보드카
				<%
				} else if (liqType.equals("리큐르")) {
				%>
				리큐르
				<%
				} else if (liqType.equals("꼬냑")) {
				%>
				꼬냑
				<%
				} else if (liqType.equals("데킬라")) {
				%>
				데킬라
				<%
				} else {
				%>
				기타 주제
				<%
				}
				}
				%>
			</h1>

		</div>
		<!-- 내용 -->
		<div>
			<section>
				<div id="linkList">
					<!-- 세션에서 술 이름 목록을 가져와서 출력 -->
					<%
					List<LiquorVO> liquorList = (List<LiquorVO>) session.getAttribute("liquorList");
					if (liquorList != null) {
						int count = 0; // 술의 이름을 6개만 나오게 하기 위한 카운터
						for (LiquorVO liquor : liquorList) {
							if (count < 6) { // 처음 6개의 항목만 처리
					%>
					<div class="liquor-item">
						<img src="images/<%=liquor.getLiq_name()%>.jpg">
						<!-- 이미지 -->
						<h3>
							<a href="DetailCon?liq_name=<%=liquor.getLiq_name()%>"><%=liquor.getLiq_name()%></a>
						</h3>
						<!-- 술의 이름 -->
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
					<%
					for (int i = 6; i < liquorList.size(); i++) {
					%>
					<div class="liquor-item hidden" style="display: none">
						<img src="images/<%=liquorList.get(i).getLiq_name()%>.jpg">
						<!-- 이미지 -->
						<h3>
							<a href="javascript:void(0);"><%=liquorList.get(i).getLiq_name()%></a>
						</h3>
						<!-- 술의 이름 -->
					</div>
					<%
					}
					%>
				</div>

				<!-- 더보기 버튼 -->
				<button id="moreButton">더보기</button>
			</section>
		</div>
	</div>
	<script>
		var currentIndex = 0;
		var btn = document.getElementById('moreButton');
		btn
				.addEventListener(
						'click',
						function() {
							var hiddenItems = document
									.querySelectorAll('.hidden'); // '.hidden' 클래스를 가진 모든 요소 선택
							var maxIndex = currentIndex + 3; // 최대 3개의 추가 요소를 보여주기
							for (var i = currentIndex; i < maxIndex
									&& i < hiddenItems.length; i++) {
								hiddenItems[i].style.display = 'block'; // 숨겨진 요소들을 보이게 설정
								var liquorName = hiddenItems[i]
										.querySelector('a').innerText; // 각 술의 이름 가져오기
								hiddenItems[i].querySelector('a').href = "DetailCon?liq_name="
										+ encodeURIComponent(liquorName); // 해당 술의 이름을 파라미터로 추가하여 href 속성 설정
							}
							currentIndex += 3; // 다음 번 "더보기" 클릭 시 시작할 인덱스 업데이트

							// 모든 숨겨진 요소를 보여줬다면, "더보기" 버튼 숨기기
							if (currentIndex >= hiddenItems.length) {
								btn.style.display = 'none';
							}
						});
	</script>
</body>
</html>