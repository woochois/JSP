<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1 - 10 까지의 합: 표현식만 사용</title>
</head>
<body>
	1 부터 10 까지의 합은
	<%=1+2+3+4+5+6+7+8+9+10%>
	입니다.
	<br /> 1+2+3+4+5+6+7+8+9+10

	<%
		out.write("<h1>Hello</h1>");
		out.print("<h2>lorem</h2>");
		out.print(1+2+3+4+5+6+7+8+9+10);
	%>
</body>
</html>