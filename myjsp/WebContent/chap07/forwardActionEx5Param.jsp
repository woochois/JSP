<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>forward Ex5 JSP</h1>
<jsp:forward page="forwardActionEx6Param.jsp">
	<jsp:param value="parameter value1" name="name1" />
	<jsp:param value="parameter value2" name="name2" />
</jsp:forward>
