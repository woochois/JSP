<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap11.MyBean" %>
<%
	MyBean b = new MyBean();
	b.setName("John");
	b.setId(100);
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("attr1", "value1");
		request.setAttribute("myBean", b);
	%>
	// get 메소드만 있으면 쓸 수 있다.
	<h1>${attr1}</h1>
	<h1>${myBean.name}</h1> // 객체의 프로퍼티명을 바로 쓸 수 있다. (=getName();)
	<h1>${myBean.id}</h1>
	<h1>${myBean["name"]}</h1>
	<h1>${myBean["id"]}</h1>
	<hr />
	<jsp:include page="elEx4Sub.jsp" />
	<hr />
	${pageContext.request.localName } 
</body>
</html>