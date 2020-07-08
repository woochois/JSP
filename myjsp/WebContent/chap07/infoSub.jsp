<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	if(type==null){
		return;
	}
%>
<br />
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td scope="col">타입</td>
	<td scope="col"><b><%=type %></b></td>
</tr>
<tr>
	<td scope="col">특징</td>
	<td scope="col"><% if(type.equals("A")) {%>
			강한 내구성.
		<%}else if(type.equals("B")) {%>
			뛰어난 대처 능력
		<% } %>
	</td>
</tr>
</table>