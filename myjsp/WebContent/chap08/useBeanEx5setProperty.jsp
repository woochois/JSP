<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="member" class="chap08.MemberInfo" scope="request">
	<!-- 새로 만들 때만 들어간다. 값이 있으면 들어가지 않는다.-->
	<jsp:setProperty name="member" property="name" value="seoul" />
	<jsp:setProperty name="member" property="id" value="korea" />
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1><%=member.getName() %>, <%=member.getId() %></h1>
</body>
</html>