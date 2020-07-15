<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.Member" %>
﻿
<!-- 지정해줘야 태그 라이브러리를 사용할 수 있다. -->
<!-- 관습상 core 태그는 prefix를 c로 통용한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%--
		<c:set />
		
		1. 속성(attribute)를 생성 또는 변경 또는 삭제 - var attribute와 함께 사용
		2. bean의 property나 map의 entry를 수정할 수 있다. - target attribute와 함께 사용
		3. 
		
	 --%>
	 <c:set var="myAttr1" value="hello1" scope="page" />
	 <c:set var="myAttr2" value="hello2" scope="request" />
	 <c:set var="myAttr3" value="hello3" scope="session" />
	 <c:set var="myAttr4" value="hello4" scope="application" />
	 
	 <p>${pageScope.myAttr1 }</p>
	 <p>${requestScope.myAttr2 }</p>
	 <p>${sessionScope.myAttr3 }</p>
	 <p>${applicationScope.myAttr4 }</p>
	 
	 <c:set var="myAttr5">
	 	Hello World, value5!!!
	 </c:set>
	 <p>${myAttr5 }</p>
	 
	 <c:set var="myAttr5">
	 	Hello JAVA, value5~~~
	 </c:set>
	 <p>${myAttr5 }</p>
	 
	 <%
	 	Member m = new Member();
		m.setName("hong");
		m.setEmail("h@h");
		m.setSsn(100);
		m.setAddress("seoul");
		request.setAttribute("member1", m);
	 %>
	 
	 <c:set var="myAttr6" value="${member1 }" />
	 <p>${myAttr6.name } ${myAttr6.email } ${myAttr6.address }</p>
	 
	 <c:set var="myAttr6" value="${member2 }" /> // 결과가 null 이면 attribute 가 삭제된다.(member2 는 null값)
	 <p>${myAttr6.name } ${myAttr6.email } ${myAttr6.address }</p>
	 
	 <c:remove var="myAttr5" scope="page" /> // 삭제 - scope은 page가 기본값
	 <p>삭제 후 : ${myAttr5 }</p>
	 
</body>
</html>