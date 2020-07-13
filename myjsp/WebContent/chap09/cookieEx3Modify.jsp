<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies){
		if(c.getName().equals("my-cookie")){
			Cookie newCookie = new Cookie("my-cookie", "my-value3");
			response.addCookie(newCookie); // 없으면 안 넣고, 있으면 넣는다.
		}
	}
	// 쿠키값을 수정하고 싶으면 똑같은 이름에 다른 값을 보내주면 된다.
	/* Cookie cookie = new Cookie("my-name", "my-value2");
	response.addCookie(cookie); // 없어도 무조건 값이 추가된다. */
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>