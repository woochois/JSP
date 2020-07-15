<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="chap11.Member" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		Member m = new Member();
		m.setName("kim");
		m.setSsn(100);
		m.setAddress("seoul");
		m.setEmail("h@h");
		request.setAttribute("myBean", m);
	%>
	<p>변경 전: ${myBean.name } ${myBean.address }</p>
	
	// 자바 코드를 안쓰고 JSP 표준 태그 라이브러리 사용
	<c:set target="${myBean }" value="lee" property="name" />
	<p>변경 후: ${myBean.name } ${myBean.address }</p>
	
	<c:set target="${myBean }" property="address">
		busan, korea
	</c:set>
	<p>변경 후: ${myBean.name } ${myBean.address }</p>
	
	<hr />
	
	<%
		Map<String, String> map = new HashMap<>();
		map.put("key1", "value1");
		request.setAttribute("myMap", map);
	%>
	<p>변경 전: ${myMap.key1 }</p>
	<c:set target="${myMap}" property="key1" value="change1" />
	<p>변경 후: ${myMap.key1 }</p>
	<c:set target="${myMap}" property="key2" value="value2" />
	<p>변경 후: ${myMap.key2 }</p>
	
</body>
</html>