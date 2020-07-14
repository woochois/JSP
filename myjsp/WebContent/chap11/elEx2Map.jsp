<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--
	El의 pageScope : Page영역의 Attribute를 <Key, Value>로 저장한 Map
	
	* 자바의 변수명을 따른다. *
--%>
<%
	pageContext.setAttribute("key1", "value1");
	pageContext.setAttribute("key2", "value2");
	pageContext.setAttribute("key-3", "value3"); // - 연산자가 붙어있기 때문에 불가능
	pageContext.setAttribute("4", "value4"); // 숫자로는 변수명을 만들 수 없기에 불가능
	pageContext.setAttribute("5key", "value5"); // 숫자가 앞에오면 변수명이 형성 안되기에 불가능
%>


		${pageScope }
<hr />
		${pageScope.key1 }, ${pageScope["key1"] }
<hr />
		${pageScope.key2 } , ${pageScope["key2"] }
<hr />
		${pageScope.key-3 }
<hr />
		<%-- ${pageScope.4 }, --%> 
		${pageScope["4"] }
<hr />
		<%-- ${pageScope.5key }, --%> 
		${pageScope["5key"] }
<hr />
		${cookie.JSESSIONID }, ${cookie["JSESSIONID"] }
	 

</body>
</html>