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
	<%--
		<c:choose> // switch문과 비슷하다.
			<c:when test="${test1}>
			</c:when>
			<c:when test="${test2}>
			</c:when>
			<c:otherwise> // 없거나 1개
			</c:otherwise>
		</c:choose>
	 --%>
	 
	 <c:set var="age" value="18" />
	 
	 <c:choose>
	 	<c:when test="${age lt 18 }">
	 		<p>투표 불가능</p>
	 	</c:when>
	 	<c:otherwise>
	 		<p>투표 가능</p>
	 	</c:otherwise>
	 </c:choose>
	 
	 <hr />
	 
	 <c:choose>
	 	<c:when test="${age lt 13 }">
	 		<p>토이스토리</p>
	 	</c:when>
	 	<c:when test="${age lt 18 }">
	 		<p>어벤져스</p>
	 	</c:when>
	 	<c:otherwise>
	 		<p>미성년 관람 불가용</p>
	 	</c:otherwise>
	 
	 </c:choose>

</body>
</html>