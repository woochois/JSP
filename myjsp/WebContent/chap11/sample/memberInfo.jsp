<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	name : ${member.name } <br />
	email : ${member.email } <br />
	ssn : ${member.ssn } <br />
	address : ${member.address }
</body>
</html>