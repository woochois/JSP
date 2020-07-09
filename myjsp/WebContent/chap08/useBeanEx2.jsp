<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" class="chap08.MyBean" scope="request" />
<%--위에 코드를 풀어서 쓰자면 --%>
<%--
<%
	chap08.MyBean myBean = (chap08.MyBean) request.getAttribute("myBean");
	if(myBean==null){
		myBean = new chap08.MyBean();
		request.setAttribute("myBean", myBean);
	}
%>
 --%>
<!DOCTYPE html>
<html>
<head>
<title>useBean</title>
</head>
<body>
	<p>
		<%=((chap08.MyBean) request.getAttribute("myBean")).getName() %>
	</p>
	<p>
		<%=((chap08.MyBean) request.getAttribute("myBean")).getId() %>
	</p>
	
</body>
</html>