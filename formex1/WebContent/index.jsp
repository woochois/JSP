<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<form action="index2.jsp" method="post">
		<input type="text" name="myName"/>
		<select name="mySel" id="">
			<option value="a">Lorem.</option>
			<option value="b">Consequuntur.</option>
			<option value="c">Modi!</option>
			<option value="d">Minus.</option>
			<option value="e">Deleniti.</option>
		</select>
		<br />
		<textarea name="myText" id="" cols="30" rows="10"></textarea>
		<br />
		<input type="email" name="myEmail" />
		<br />
		
		<input type="radio" name="myFruit" value="apple"/>apple <br />
		<input type="radio" name="myFruit" value="banana"/>banana <br />
		<input type="radio" name="myFruit" value="melon"/>melon 
		<br />
		<input type="checkbox" name="myHome" value="daum"/>daum <br />
		<input type="checkbox" name="myHome" value="naver"/>naver <br />
		<input type="checkbox" name="myHome" value="google"/>google
		<br />
		<input type="submit"/>
	</form>
	<%
		System.out.println("myName:" + request.getParameter("myName"));
		System.out.println("mySel:" + request.getParameter("mySel"));
		System.out.println("myText:" + request.getParameter("myText"));
		System.out.println("myEmail:" + request.getParameter("myEmail"));
		System.out.println("myFruit:" + request.getParameter("myFruit"));
		System.out.println("myHome:" + request.getParameter("myHome"));
//		String[] homes = request.getParameterValues("myHome");
//		for(String home : homes) System.out.println("myHome:" + home);
	%>
</body>
</html>