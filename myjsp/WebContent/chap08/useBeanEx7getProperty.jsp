<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chap08.MyBean">
	<jsp:setProperty name="member" property="name" value="seoul"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>
<jsp:getProperty property="name" name="member"/>
</h1>
<h1>
<jsp:getProperty property="firstName" name="member"/>
</h1>
<h1>${member.name }</h1>
<h1>${member.firstName }</h1>
</body>
</html>