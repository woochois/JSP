<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(int i = 0; i < cookies.length; i++){
			Cookie cookie = new Cookie("name", URLEncoder.encode("JSP 프로그래밍", "utf-8"));
			response.addCookie(cookie);
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<title>값 변경</title>
</head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>