<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Header</title>
</head>
<body>
	<h1>${header.host }</h1>
	<h1>${header["sec-fetch-mode"] }</h1>
	<h1>${headerValues["accept-language"][0] }</h1>
	<h1>${cookie["JSESSIONID"].name}, ${cookie["JSESSIONID"].value}</h1>
	<h1>${initParam.logEnabled }</h1>
</body>
</html> 