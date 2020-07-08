<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Redirect</title>
</head>
<body>
<h1>Redirect Attribute</h1>
<%=request.getAttribute("my attr") %> <!-- 요청이 Ex9번에서 끝났기 때문에 null 출력 -->
<%=session.getAttribute("my attr") %> <!-- 같은 세션이기에 값 출력 -->
</body>
</html>