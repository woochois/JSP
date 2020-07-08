<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.User" %>
<% 
request.setCharacterEncoding("utf-8"); 
String name = request.getParameter("name");
String ageStr = request.getParameter("age");
User user = null;
if(name!=null&&ageStr!=null){
	user = new User();
	int age = Integer.parseInt(ageStr);
	user.setName(name);
	user.setAge(age);
}
Object l = application.getAttribute("list");
if(l==null){
	application.setAttribute("list", new ArrayList<>());
	l = application.getAttribute("list");
}
ArrayList<User> list = null;
if(l instanceof ArrayList<?>){
	list = (ArrayList<User>) l;	
}

if(user!=null){
	list.add(user);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form method=post>
이름: <input type="text" name="name" /><br />
나이: <input type="number" name="age"  /><br />
<input type="submit" value="등록" />
</form>
<ul>
<%
for(User u : list){
	out.print("<li>");
	out.print(u.getName() + ", " + u.getAge());
	out.print("</li>");
}
%>
</ul>
</body>
</html>