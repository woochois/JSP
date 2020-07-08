<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object sname = session.getAttribute("session name"); // 브라우저가 달라지면 영역이 다르기 때문에 값을 못 불러온다.
Object rname = request.getAttribute("requset name"); // 각 개인적인 영역이라 다른 곳에서 값을 못 불러온다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>Insert title here</title>
</head>
<body>
<h1>session, request Get Attribute</h1>
<%=sname %> <br />
<%=rname %>
</body>
</html>