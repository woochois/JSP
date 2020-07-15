<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	포워드.jsp <br />
	<ul>
		<c:forEach var="item" items="${list }">
			<li>${item }</li>
		</c:forEach>
		<hr />
		${member.name } <br />
		${member.address } <br />
	</ul>
</body>
</html>