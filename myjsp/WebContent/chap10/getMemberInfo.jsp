<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>세션에 저장된 정보 가져오기</title>
</head>
<body>
ID : <%=session.getAttribute("MEMBERID") %> <br />
이름 : <%=session.getAttribute("name") %>
</body>
</html>