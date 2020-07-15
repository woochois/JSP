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
	<form method="post">
		이름 : <input type="text" name="name" /> <br />
		나이 : <input type="number" name="age" /> <br />
		<input type="submit" value="확인" />
		
		<c:if test="${empty param.name }">
			<p>이름을 입력하세요.</p>
		</c:if>
		<c:if test="${empty param.age }">
			<p>나이를 입력하세요.</p>
		</c:if>
		<c:if test="${param.age > 18}">
			<p>투표 가능</p>
		</c:if>
		<c:if test="${param.age < 18}" var="test">
			<p>투표 불가능</p>
		</c:if>
		
		<c:if test="${test }">
			<p>투표 불가능 again</p>
		</c:if>
		<%=pageContext.getAttribute("test") %>
	</form>
</body>
</html>