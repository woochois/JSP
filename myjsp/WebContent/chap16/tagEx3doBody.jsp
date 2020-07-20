<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>doBody 예제</title>
</head>
<body>
	<h1>doBody</h1>
	<c:set var="x" value="${5}" />
	<my:tagEx3body>
		${x} <!-- 5 -->
		<c:set var="x" value="${x+1}" />
	</my:tagEx3body>
</body>
</html>