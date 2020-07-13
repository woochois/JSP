<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>장바구니 보기</h1>
<%
	Object o = session.getAttribute("cart"); // 장바구니에 있는 정보를 가져온다.
	if(o != null){ // 장바구니가 비어있지 않으면 ~
		Map<String, Integer> cart = (Map<String, Integer>) o; // 장바구니에 있는 값을 가져오고
		for(String prod : cart.keySet()){ // 리스트화 시켜서 출력
			out.print("<li>");
			out.print(prod);
			out.print(" "+cart.get(prod)+"개");
			out.print("</li>");
		}
	}
%>
</body>
</html>