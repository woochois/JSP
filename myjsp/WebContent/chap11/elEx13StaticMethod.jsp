<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.MyUtil" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<>();
		list.add("java");
		list.add("sql");
		request.setAttribute("myList", list);
	%>
	<%=MyUtil.length(list) %> <br />
	${MyUtil.length(myList)} <br />
	${fn:length(myList)}
</body>
</html>