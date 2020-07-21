<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>update</title>
</head>
<body>
	<h1>정보 수정</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name" value="${member.name}"/> <br />
		이메일 : <input type="email" name="email" value="${member.email}"/> <br />
		나이 : <input type="number" name="age" value="${member.age}"/> <br />
		암호 : <input type="password" name="password" value="${member.password}" /><br />
		<input type="submit" value="수정" />
	</form>
</body>
</html>