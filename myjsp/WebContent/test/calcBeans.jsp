<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="calc" scope="page" class="calcBeans"/>
<jsp:setProperty name="calc" property="*"/>
<% calc.calculate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>Insert title here</title>
</head>
<body>
	
		<h3>계산기</h3>
		<hr />
		<form name="form1" method=post>
			<input type="text" name="num1" width=200 size="5" />
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2" width=200 size="5" />
			<input type="submit" value="계산" name="B1" />
			<input type="reset" value="다시 입력" name="B2" />
		</form>
	<hr />
	계산결과 : <jsp:getProperty name="calc" property="result"/>
</body>
</html>