<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String title = request.getParameter("title");
String name = request.getParameter("name");
String password = request.getParameter("password");
String content = request.getParameter("content");

StringBuffer sql = new StringBuffer();
sql.append("insert into t_board(no, title, name, password, content)");
sql.append("values(seq_board.nextval, ?, ?, ?, ?) ");

boolean result = false;

try {
	Class.forName("oracle.jdbc.OracleDriver");
} catch (Exception e) {
	e.printStackTrace();
}

try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1", "xci", "xci");
		PreparedStatement ps = conn.prepareStatement(sql.toString())) {
	ps.setString(1, title);
	ps.setString(2, name);
	ps.setString(3, password);
	ps.setString(4, content);
	ps.executeUpdate();
	result = true;

} catch (Exception e) {
	e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=result%>
</body>
</html>