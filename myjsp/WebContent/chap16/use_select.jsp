<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<!DOCTYPE html>
<html>
<head>
<title>select 태그 사용</title>
</head>
<body>
	<my:select name="code" rgb="RGB 모드" wb="흑백 모드"/>
	<my:select name="genre" rock="락" ballad="발라드" metal="메탈"/>
</body>
</html>