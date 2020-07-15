<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap11.Member, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String name = request.getParameter("name");
	if(name != null){
		Member member = new Member();
		member.setName(name);
		member.setSsn(Integer.parseInt(request.getParameter("ssn")));
		member.setEmail(request.getParameter("email"));
		member.setAddress(request.getParameter("address"));
		session.setAttribute("member", member);
		response.sendRedirect("memberInfo.jsp");
	}else{
%>
<!DOCTYPE html>
<html>
<head>
<title>회원 가입</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form method="post">
		name : <input type="text" name="name" /> <br />
		email : <input type="email" name="email" /> <br />
		ssn : <input type="number" name="ssn" /> <br />
		address : <input type="text" name="address" /> <br />
		<input type="submit" value="가입" />
	</form>
</body>
</html>
<%
	}
%>