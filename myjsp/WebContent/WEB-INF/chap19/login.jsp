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
	<form action="" method="post">
		ID : <input type="text" name="id" /> <br />
		<input type="submit" value="로그인" />
	</form>
	<c:if test="${not empty sessionScope.user }">
		<a href="vip">VIP</a>
	</c:if>
</body>
</html>