<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
	El에서 11개의 기본 객체가 아니면 attribute
	page, request, session, application 순으로 찾는다.
	앞에 있는 Scope을 생략해도 된다.
 --%>
<%
	pageContext.setAttribute("page1", "page value1");
	pageContext.setAttribute("req1", "page value2"); // 같은 이름일 때, page 값이 나온다.
	request.setAttribute("req1", "req value1");
	session.setAttribute("session1", "session value1");
	application.setAttribute("app1", "app value1");
	
	Map<String, String> map = new HashMap<>();
	map.put("key1", "value1");
	request.setAttribute("my-map", map);
	
	Map<String, String> map2 = new HashMap<>();
	map2.put("key2", "value2");
	request.setAttribute("myMap", map2);
%>
<h1>attr map</h1>
<%-- ${requestScope["my-map"] } 맵 자체가 출력 --%>
${requestScope["my-map"].key1},
${requestScope["my-map"]["key1"]}

<h1>attr map2</h1>
${myMap.key2 },
${requestScope.myMap.key2 },
${requestScope["myMap"].key2 },
${requestScope["myMap"]["key2"] }

<h1>pageScope</h1>
${pageScope.page1 }, ${page1 }

<h1>requestScope</h1>
${requestScope.req1 }, ${req1 }

<h1>sessionScope</h1>
${sessionScope.session1 }, ${session1 }

<h1>applicationScope</h1>
${applicationScope.app1 }, ${app1 }

</body>
</html>