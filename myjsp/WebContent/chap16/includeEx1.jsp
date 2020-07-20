<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>include1 제목</title>
</head>
<body>
	<h1>include1 제목</h1>
	<%@ include file="includeEx2.jsp" %>
	<jsp:include page="includeEx3.jsp"/>
	<my:print/>
	<h1>include1 끝</h1>
</body>
</html>