<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>layout2</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
		<jsp:include page="top.jsp">
			<jsp:param name="parent" value="layout2"/>
			<jsp:param name="name" value="born"/>
		</jsp:include>
	</td>
</tr>
<tr>
	<td width="100" valign="top">
		<jsp:include page="left.jsp" />
	</td>
	<td width="300" valign="top">
		이 부분은 layout2.jsp가 생성한다. <br />
		레이아웃 2
		<br /><br /><br />
	</td>
</tr>
<tr>
	<td colspan="2">
		<jsp:include page="bottom.jsp" />
	</td>
</tr>
</table>
</body>
</html>