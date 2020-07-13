<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("my-cookie", "my-value");
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<title>쿠키 생성</title>
</head>
<body>
	<h1>쿠키 생성</h1>
</body>
</html>