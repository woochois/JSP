<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
	${param}
	${paramValues}
 --%>
 	<h1>
 		<%=request.getParameter("name") %>,
 		${param.name }
 	</h1>
 	<h1>
 		${paramValues.name[0] }
 	</h1>
 	<h1>
 		${paramValues.name[1] }
 	</h1>
 	<h1>
 		${paramValues.name[2] }
 	</h1>
</body>
</html> 