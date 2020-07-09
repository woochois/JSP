<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chap08.MemberInfo" />
<jsp:setProperty name="member" property="name" value="jane" /> <%-- member.setName("jane")과 같다.--%>
<jsp:setProperty name="member" property="id" value="99" /> <%-- member.setId("jane")과 같다.--%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	chap08.MemberInfo mem = (chap08.MemberInfo)pageContext.getAttribute("member");
%>
<h1> <!-- 위와 아래 코드 값이 같다. -->
	<%=member.getName() %>, <%=member.getId() %>
</h1>
</body>
</html>