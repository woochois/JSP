<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chap08.MemberInfo" scope="request" />
<%
	member.setId("HotGeorge");
	member.setName("아무개");
%>
<jsp:forward page="useObject.jsp" />