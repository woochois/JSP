<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>표현 언어 (Expression Language)</title>
</head>
<body>
<%--
	문법 : ${ expr }
	
	expr : 11개의 기본 객체 또는 Attribute
	
	EL의 기본 객체
		- pageContext
		- pageScope
		- requestScope
		- sessionScope
		- applicationScope
		- param
		- paramValues
		- header
		- headerValues
		- cookie
		- initParam
 --%>
 <%
 	pageContext.setAttribute("ex1", "Hello");
 %>
 ${ex1 }
 <h1>${ex1 }</h1>
 <h2>${ex1 }</h2>
 <ul>
 <li>pageContext : ${pageContext }</li>
 <li>pageScope : ${pageScope }</li>
 <li>requestScope : ${requestScope }</li>
 <li>sessionScope : ${session.Scope }</li>
 <li>applicationScope : ${applicationScope }</li>
 <li>param : ${param }</li>
 <li>paramValues : ${paramValues }</li>
 <li>header : ${header }</li>
 <li>headerValues : ${headerValues }</li>
 <li>cookie : ${cookie }</li>
 <li>initParam : ${initParam }</li>
 </ul> 
</body>
</html>