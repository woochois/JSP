<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>forEach 태그</title>
</head>
<body>
	<%--
		<c:forEach>
				
		</c:forEach>
		
		# attribute ( 교재 306 쪽 )
		var
		items
		varStatus
		begin
		end
		step
	 --%>
	 <c:forEach var="i" begin="1" end="3">
	 	${i } <br />
	 </c:forEach> 
	 <c:forEach var="i" begin="1" end="10" step="2">
	 	${i } <br />
	 </c:forEach> 
</body>
</html>