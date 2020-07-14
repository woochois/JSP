<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		/* int[] arr = {}; */
		List arr = new ArrayList();
		request.setAttribute("array1", arr);
		
		/* int[] arr2 = {1, 2}; */
		List arr2 = new ArrayList();
		arr2.add(new Object());
		request.setAttribute("array2", arr2);
		
		int[] arr3 = {};
		request.setAttribute("array3", arr3);
		
		Integer[] arr4 = {};
		request.setAttribute("array4", arr4);
		
		String str = "";
		request.setAttribute("str1", str);
	%>
</body>
\${empty array3} : ${empty array3} <br />
\${empty array4} : ${empty array4} <br />
\${empty str1} : ${empty str1}

<hr />
\${empty array1} : ${empty array1} <br />
\${empty array2} : ${empty array2}
<hr />
\${not empty array1} : ${not empty array1} <br />
\${not empty array2} : ${not empty array2} <br />
\${! empty array1} : ${! empty array1} <br />
\${! empty array2} : ${! empty array2}
<hr />
\${empty param.name } : ${empty param.name } <br />
\${not empty param.name } : ${not empty param.name } <br />
\${! empty param.name } : ${! empty param.name }
</html>