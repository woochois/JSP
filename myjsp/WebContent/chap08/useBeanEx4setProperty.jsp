<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="chap08.MemberInfo">
<jsp:setProperty name="member" property="*" /> <!-- 같은 게 여러 개 있으면 전부 다 -->

<%--
	<jsp:setProperty name="member" property="name" param="name" /> <!-- param 값은 생략 가능 -->
	<jsp:setProperty name="member" property="id" param="id" />
 --%>
<%--
<%
	member.setName(request.getParameter("name"));
	member.setId(request.getParameter("id"));
%>
 --%>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
	name: <input type="text" name="name" /> <br />
	id: <input type="text" name="id" /> <br />
	<input type="submit" value="등록" />
</form>
<h1>
	<%=member.getName() %>, <%=member.getId() %>님 방가
</h1>
</body>
</html>