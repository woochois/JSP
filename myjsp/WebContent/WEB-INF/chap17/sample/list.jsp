<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>등록 폼</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name" /> <br />
		나이 : <input type="number" name="age" /> <br />
		<input type="submit" value="등록" />
	</form>
	<hr />
	<c:if test="${not empty list }">
		<ul>
			<c:forEach var="item" items="${list }">
				<li>${item.name } ${item.age }</li>
			</c:forEach>		
		</ul>
	</c:if>
</body>
</html>