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
	<h1>Main Page</h1>
	
	<c:if test="${empty user }">
		<form action="${pageContext.request.contextPath }/sample/login" method="post">
			id: <input type="text" name="id" /> <br />
			pw: <input type="password" name="pw" /> <br />
			<input type="submit" value="로그인" />
		</form>
	</c:if>
	<c:if test="${not empty user }">
		${user }님 반갑습니다. <br />
		<<a href="${pageContext.request.contextPath }/sample/logout">로그아웃</a>
	</c:if>
</body>
</html>