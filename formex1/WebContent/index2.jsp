<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8"); // 한글 깨짐 현상 수정
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>잘 받았습니다.</h1>
	<h2>${param.myName}</h2>
	<h2>${param.mySel }</h2>
	<h2>${param.myText }</h2>
	<h2>${param.myEmail }</h2>
	<h2>${param.myFruit }</h2>
	<h2>${param.myHome }</h2>
	<h2>${paramValues.myHome[0] }</h2>
	<h2>${paramValues.myHome[1] }</h2>
	<h2>${paramValues.myHome[2] }</h2>
</body>
</html>