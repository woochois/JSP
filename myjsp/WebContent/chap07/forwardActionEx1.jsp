<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>forward Ex1 jsp</h1>
<jsp:forward page="forwardActionEx2.jsp" />
</body>
</html>

 
	 action1 에서 처리하고 있던 request, response 기본객체를 넘겨준다.
	 action1 에서 하던 모든 요청, 응답은 지워지고 새로결과를 출력한다.
	 action2 가 2개의 기본객체를 받아서 처음부터 요청, 응답을 받는다.
 