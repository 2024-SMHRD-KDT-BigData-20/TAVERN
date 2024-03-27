<%@page import="com.smhrd.model.LiquorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위스키 목록</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/lequor.css?ver=1" rel="stylesheet">
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
	    <%-- 술의 유형에 따라 다른 주제 설정 --%>
	    <% if (liqType != null) {
	        if (liqType.equals("위스키")) { %>
	            위스키
	        <% } else if (liqType.equals("럼")) { %>
	            럼
	        <% } else if (liqType.equals("보드카")) { %>
	            보드카
	        <% } else if (liqType.equals("리큐르")) { %>
	            리큐르
	        <% } else if (liqType.equals("꼬냑")) { %>
	            꼬냑
	        <% } else if (liqType.equals("데킬라")) { %>
	            데킬라
	        <% } else { %>
	            기타 주제
	    <% }} %>
	</div>
      <!-- 내용 -->
      <div>
         <section>
            <div>
               <ul id="linkList">
                  <!-- 세션에서 술 이름 목록을 가져와서 출력 -->
                  <%
                  List<LiquorVO> liquorList = (List<LiquorVO>) session.getAttribute("liquorList");
                  if (liquorList != null) {
                     int count = 0; // 술의 이름을 6개만 나오게 하기 위한 카운터
                     for (LiquorVO liquor : liquorList) {
                        if (count < 6) { // 처음 6개의 항목만 처리
                  %>
                  <div class="liquor-item">
                     <img src="images/<%=liquor.getLiq_name()%>.jpg" alt="<%=liquor.getLiq_name()%>" style="width: 100px; height: auto;">
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
               </ul>
               <!-- 더보기 버튼 -->
               <button id="moreButton">더보기</button>
               <%
               for (int i = 6; i < liquorList.size(); i++) {
               %>
               <div class="liquor-item hidden" style="display: none">
                  <img src="images/<%=liquorList.get(i).getLiq_name()%>.jpg" alt="<%=liquorList.get(i).getLiq_name()%>" style="width: 100px; height: auto;">
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
         </section>
      </div>
   </div>
   <!--    <script src="js/function/plus.js"></script> -->

   <script>
      /* var btn= document.getElementById('moreButton');
       btn.click(function(){
       document.queryselectorAll('#hidden').show();
       }); */

      /* var btn = document.getElementById('moreButton');
       btn.addEventListener('click', function() {
       var hiddenItems = document.querySelectorAll('.hidden'); // '.hidden' 클래스를 가진 모든 요소 선택
       for (var i = 0; i < hiddenItems.length; i++) {
       hiddenItems[i].style.display = 'block'; // 숨겨진 요소들을 보이게 설정
       }
       });
       */

      /*  var currentIndex = 6; // 이미 6개의 요소가 보여지고 있으므로, 다음 보여질 요소의 인덱스는 6부터 시작

       var btn = document.getElementById('moreButton');
       btn.addEventListener('click', function() {
       var hiddenItems = document.querySelectorAll('.hidden'); // '.hidden' 클래스를 가진 모든 요소 선택
       var maxIndex = currentIndex + 3; // 최대 3개의 추가 요소를 보여주기
       for (var i = currentIndex; i < maxIndex && i < hiddenItems.length; i++) {
       hiddenItems[i].style.display = 'block'; // 숨겨진 요소들을 보이게 설정
       hiddenItems[i].classList.remove('hidden'); // 보여준 요소는 'hidden' 클래스 제거
       }
       currentIndex = i; // 다음 번 "더보기" 클릭 시 시작할 인덱스 업데이트

       // 모든 숨겨진 요소를 보여줬다면, "더보기" 버튼 숨기기
       if (currentIndex >= hiddenItems.length) {
       btn.style.display = 'none';
       }
       }); */

      /*  var currentIndex = 0; // 처음부터 숨겨진 요소들을 보여주기 시작하므로 0으로 설정

       var btn = document.getElementById('moreButton');
       btn.addEventListener('click', function() {
       var hiddenItems = document.querySelectorAll('.hidden'); // '.hidden' 클래스를 가진 모든 요소 선택
       var maxIndex = currentIndex + 3; // 최대 3개의 추가 요소를 보여주기
       for (var i = currentIndex; i < maxIndex && i < hiddenItems.length; i++) {
       hiddenItems[i].style.display = 'block'; // 숨겨진 요소들을 보이게 설정
       }
       currentIndex += 3; // 다음 번 "더보기" 클릭 시 시작할 인덱스 업데이트

       // 모든 숨겨진 요소를 보여줬다면, "더보기" 버튼 숨기기
       if (currentIndex >= hiddenItems.length) {
       btn.style.display = 'none';
       }
       }); */

      var currentIndex = 0;

      var btn = document.getElementById('moreButton');
      btn.addEventListener('click',
            function() {
               var hiddenItems = document.querySelectorAll('.hidden'); // '.hidden' 클래스를 가진 모든 요소 선택
               var maxIndex = currentIndex + 3; // 최대 3개의 추가 요소를 보여주기
               for (var i = currentIndex; i < maxIndex
                     && i < hiddenItems.length; i++) {
                  hiddenItems[i].style.display = 'block'; // 숨겨진 요소들을 보이게 설정
                  var liquorName = hiddenItems[i].querySelector('a').innerText; // 각 술의 이름 가져오기
                  hiddenItems[i].querySelector('a').href = "DetailCon?liq_name=" + encodeURIComponent(liquorName); // 해당 술의 이름을 파라미터로 추가하여 href 속성 설정
               }
               currentIndex += 3; // 다음 번 "더보기" 클릭 시 시작할 인덱스 업데이트

               // "더보기" 버튼을 리스트의 마지막으로 이동
               if (hiddenItems.length > 0
                     && currentIndex < hiddenItems.length) {
                  hiddenItems[i - 1].after(btn); // 마지막으로 보여준 요소 바로 뒤에 버튼을 위치시킴
               }

               // 모든 숨겨진 요소를 보여줬다면, "더보기" 버튼 숨기기
               if (currentIndex >= hiddenItems.length) {
                  btn.style.display = 'none';
               }
            });
   </script>
</body>
</html>