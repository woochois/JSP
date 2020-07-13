<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>Set Attribute</h1>
<%
	double r = Math.random();
	session.setAttribute("myattr1", r);
%>
<%=r %>
</body>
</html>