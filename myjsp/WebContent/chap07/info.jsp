<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>INFO</title>
</head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="table">
	<tr>
		<td scope="col">제품번호</td>
		<td scope="col">XXXX</td>
	</tr>
	<tr>
		<td scope="col">가격</td>
		<td scope="col">10,000원</td>
	</tr>
</table>
<jsp:include page="infoSub.jsp">
	<jsp:param name="type" value="A"/>
</jsp:include>
</body>
</html>