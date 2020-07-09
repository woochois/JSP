<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>include 디렉티브</title>
</head>
<body>
<%
	int number = 10;
%>
includer.jsp에서 지정한 번호: <%=number %>
<p>
<%
	String dataFolder = "includee.jspf";
%>
</p>
공통변수 DATAFOLDER ="<%=dataFolder %>";

</body>
</html>