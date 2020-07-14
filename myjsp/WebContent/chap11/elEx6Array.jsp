<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String[] arr = {"java", "css", "jquery"};
		request.setAttribute("myArr", arr);
	%>
	<h1>${myArr[0] }</h1>
	<h1>${myArr["1"] }</h1>
	<h1>${myArr[2] }</h1>
	<hr />
	<ul>
		<%
			for(int i = 0; i < arr.length; i++){
				pageContext.setAttribute("i", i); // i를 i에 넣어줘야한다.
		%>
				<li>${myArr[i] }</li>
		<%
			}
		%>
	</ul>
</body>
</html>