<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object member = session.getAttribute("member");
	
	if(member==null){
/* 		String path = request.getContextPath() + "/loginForm.jsp"; // 절대경로 
		response.sendRedirect(path); // 클라이언트 입장에서는 컨텍스트 패스를 붙여줘야한다. */
		response.sendRedirect("loginForm.jsp"); // 상대경로
	}else {
%>
<!DOCTYPE html>
<html>
<head>
<title>멤버 전용 페이지</title>
</head>
<body>
	<h1>멤버 전용 페이지</h1>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>
<%
	}
%>
