<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page attr");
	request.setAttribute("name", "request attr");
	session.setAttribute("name", "session attr");
	application.setAttribute("name", "application attr");
%>
<jsp:forward page="forwardActionEx4Attr.jsp" />
