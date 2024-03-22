<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID중복확인</title>
</head>
<body>
	<h2>아이디 중복 확인</h2>
    <form action="Check_id" method="post">
        아이디 <input type="text" name="id"> 
        <input type="submit" value="중복 확인">
    </form>
</body>
</html>