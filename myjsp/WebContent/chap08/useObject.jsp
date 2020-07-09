<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chap08.MemberInfo" scope="request" />
<!DOCTYPE html>
<html>
<head>
<title>인사말</title>
</head>
<body>
<%=member.getName() %>(<%=member.getId() %>)회원님
안녕하세요?
</body>
</html>