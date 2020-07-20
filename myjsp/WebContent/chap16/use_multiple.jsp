<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<!DOCTYPE html>
<html>
<head>
<title>multiple 태그 사용</title>
</head>
<body>
	<c:set var="num" value="${1}"/>
	<my:multiple count="10">
		${num} <br />
		<c:set var="num" value="${num+1}"/>
	</my:multiple>
</body>
</html>