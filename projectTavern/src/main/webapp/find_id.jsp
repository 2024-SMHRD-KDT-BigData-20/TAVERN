<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>



<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id=find_id_container>
			<h2>아이디</h2>
			<div>
				
				<h4>
					
					<!-- 아이디 찾은 페이지 보여주는 문단 -->
					<% 
						String foundId = (String) session.getAttribute("findi");
						if (foundId != null) {
					   		 out.println("찾은 아이디: " + foundId);
						} else {
					    	out.println("아이디를 찾을 수 없습니다.");
						}
					%>
					
				</h4>
			</div>
			<div class="text-box">
				<a href = "main.jsp">
					로그인 화면으로 가기
				</a>
			</div>
		</form>
	</div>
</body>
</html>