<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String[] arr = {"java", "html", "css", "jquery", "bootstrap"};
		request.setAttribute("list", arr);
	%>
	<c:forEach var="item" items="${list }">
		${item } <br />
	</c:forEach>
	${item }
	<hr />
	
	<c:forEach var="item" items="${list }" begin="1" end="3">
		${item } <br />
	</c:forEach>
	<hr />
	
	<c:forEach var="item" items="${list }" step="2">
		${item } <br />
	</c:forEach>
	
</body>
</html>