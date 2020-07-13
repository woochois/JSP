<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Cookie cookie = new Cookie("my-cookie-age", "my-cookie");
    cookie.setMaxAge(2*60); // 2분 
    response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>