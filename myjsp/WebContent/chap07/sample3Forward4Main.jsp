<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>Main Page</h1>
<p><%=request.getParameter("name") %></p>
<p><%=request.getParameter("vip") %></p>

<%
	String vip = request.getParameter("vip");
	if(vip == null){
%>
		<jsp:forward page="sample3Forward1Normal.jsp" />	
<%
	}else {
%>
		<jsp:forward page="sample3Forward2VIP.jsp" />
<%
	}
%>
</body>
</html>