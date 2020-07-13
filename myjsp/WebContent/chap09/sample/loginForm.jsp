<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id != null && pw != null){
		if(id.equals(pw)){
			session.setAttribute("member", id);
		}
		
		String keep = request.getParameter("keep");
		if(keep != null){
			Cookie cookie = new Cookie("JSESSIONID", session.getId());
			cookie.setPath(request.getContextPath());
			cookie.setMaxAge(30*60);
			response.addCookie(cookie);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	<%
		Object o = session.getAttribute("member");
		if(o == null){
	%>
		<form method="post">
			ID : <input type="text" name="id" /> <br />
			PW : <input type="password" name="pw" /> <br />
			<input type="checkbox" name="keep" /> 로그인 유지 <br />
			<input type="submit" value="로그인" />
		</form>
	<%
		} else {
	%>
		<h1><%=session.getAttribute("member") %>님 환영합니다.</h1>
		<a href="memberPage.jsp">멤버 전용</a>
	<%
		}
	%>
</body>
</html>