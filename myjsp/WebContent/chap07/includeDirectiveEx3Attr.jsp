<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap05.User" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
name: <input type="text" name="name" value="jane" /> <br />
age: <input type="number" name="age" value="0" /> <br />
<input type="submit" value="등록" />
</form>
<%
User user = new User();
String ageStr = request.getParameter("age");
user.setName(request.getParameter("name"));
ageStr = ageStr == null ? "0" : ageStr;
user.setAge(Integer.parseInt(ageStr));

pageContext.setAttribute("user", user);
%>
<%@ include file="includeDirectiveEx4Attr.jsp" %>
</body>
</html>