<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id != null && pw != null){
		if(id.equals(pw)){
			session.setAttribute("member", id);
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
	<h1>session id <%=session.getId() %></h1>
	<%
		if(session.getAttribute("member") == null) {	
	%>
			<form method="post">
				ID : <input type="text" name="id" /> <br />
				PW : <input type="password" name="pw" /> <br />
				<input type="submit" value="로그인" />
			</form>
	<%
		}else {
	%>
			<h1><%=session.getAttribute("member") %>님 환영합니다.</h1>
			<a href="forMember.jsp">멤버 사이트</a>
	<%
		}
	%>
</body>
</html>