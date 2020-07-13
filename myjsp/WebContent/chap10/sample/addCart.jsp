<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
	Object o = session.getAttribute("cart"); // 장바구니에 있는 정보를 확인한다.
	if(o == null){ // 장바구니가 비어있으면 ~
		Map<String, Integer> cart = new HashMap<>(); // set 컬렉션을 이용해 배열을 만들어주고
		session.setAttribute("cart", cart); // 장바구니 요소에 장바구니를 만들어준다.
	}
	
	String prod = request.getParameter("prod"); // 제품의 정보를 가져온다.
	if(prod != null){ // 제품이 있으면
		Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart"); // 장바구니를 만들어준다.
		if(cart.containsKey(prod)){
			Integer value = cart.get(prod);
			cart.put(prod, value + 1);
		} else cart.put(prod, 1); // 장바구니에 제품을 더한다.
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>장바구니 담기</h1>
<form method="post">
	<select name="prod">
		<option value="candy">사탕</option>
		<option value="gum">껌</option>
		<option value="chocolate">초콜릿</option>
	</select>
	<input type="submit" value="담기" />
</form>
<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>