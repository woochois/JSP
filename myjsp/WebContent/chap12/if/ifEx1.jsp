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
		int i = 3;
		if(i>0){
	%>
			<p>i는 0보다 크다.</p>
	<%
		}else{
	%>
			<p>i는 0보다 크지 않다.</p>
	<%
		}
	%>
	<%--
		<c:if>
		조건에 만족할 때만 태그의 몸통(body)를 출력
		
		test : 조건
		
			
	 --%>
	<c:if test="${empty member }">
		조건 만족함.
	</c:if>
	
</body>
</html>