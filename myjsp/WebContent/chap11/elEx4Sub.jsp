<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>${myBean.name }, ${myBean.id }</h1>

<%-- <%@ page import="chap11.MyBean" %>
<%
	// 예전 방식
	Object o = request.getAttribute("myBean");
	MyBean m = (MyBean) o;
%>
<h1>
	<%=m.getName() %>, <%=m.getId() %>
</h1> --%>