<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object o = session.getAttribute("member");
	if(o == null){
		response.sendRedirect("loginForm.jsp");
	}else {
%>
<!DOCTYPE html>
<html>
<head>
<title>멤버 환영</title>
</head>
<body>
<h1>멤버 환영</h1>
<a href="logout.jsp">로그아웃</a>
</body>
</html>
<%
	}
%>