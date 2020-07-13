<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>
<title>쿠키 확인</title>
</head>
<body>
	<h1>쿠키 확인</h1>
	<ul>
		<%
			for(Cookie cookie : cookies){
				out.println("<li>");
				out.println(cookie.getName() + ", " + cookie.getValue());
				out.println("</li>");
			}
		%>
	</ul>
</body>
</html>