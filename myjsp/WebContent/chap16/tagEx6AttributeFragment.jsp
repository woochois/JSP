<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<!DOCTYPE html>
<html>
<head>
<title>attribute</title>
</head>
<body>
	<h1>simple attribute</h1>
	<my:gugudan dan="2"/>
	
	<h1>complex attribute</h1>
	<my:tagEx6>
		<jsp:attribute name="attr">
			<p>hello world</p>
		</jsp:attribute>
		<jsp:attribute name="attr2">
			<p>hello world2</p>
		</jsp:attribute>
	</my:tagEx6>
</body>
</html>