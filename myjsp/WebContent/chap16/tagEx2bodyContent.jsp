<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<!DOCTYPE html>
<html>
<head>
<title>태그 바디 콘텐트 예제</title>
</head>
<body>
	<h1>태그 body scriptless</h1>
	<my:tagEx1body>
		<p>Hello world</p>
		${pageContext.request.contextPath }
		<jsp:include page="includeEx3.jsp" />
		<%-- 
		<% 
			Object o = new Object();
			out.print(o);
		%>
		<%=o %>
		<%!
			int i = 1;
		%>
		--%>  
	</my:tagEx1body>
	<hr />
	<h1>태그 body tagdependent</h1>
	<my:tagEx2body>
		<p>hello world 2</p>
		${pageContext.request.contextPath }
		<jsp:include page="includeEx3.jsp" />
		<%
			Object o = new Object();
			out.print(o);
		%>
		<%=o%>
		<%!int i = 1;%>
	</my:tagEx2body>
	<my:tagEx1body/>
	<my:tagEx2body/>
</body>
</html>