<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>doPost()</title>
</head>
<body>
	<h1>post 실습</h1>
	<form action="${pageContext.request.contextPath }/hello" method="post">
		name : <input type="text" name="name" /> <br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>