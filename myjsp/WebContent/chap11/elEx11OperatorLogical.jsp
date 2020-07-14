<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	// 역 슬래쉬를 하면 일반 텍스트가 된다.
	\${true and true} : ${true and true} <br />
	\${true and false} : ${true and false} <br />
	\${false and true} : ${false and true} <br />
	\${false and false} : ${false and false} <br />
	<hr />
	\${true && true} : ${true && true} <br />
	\${true && false} : ${true && false} <br />
	\${false && true} : ${false && true} <br />
	\${false && false} : ${false && false} <br />
	<hr />
	\${true or true} : ${true or true} <br />
	\${true or false} : ${true or false} <br />
	\${false or true} : ${false or true} <br />
	\${false or false} : ${false or false} <br />
	<hr />
	\${true || true} : ${true || true} <br />
	\${true || false} : ${true || false} <br />
	\${false || true} : ${false || true} <br />
	\${false || false} : ${false || false} <br />
	<hr />
	\${not true} : ${not true} <br />
	\${not false} : ${not false} <br />
	<hr />
	\${! true} : ${! true} <br />
	\${! false} : ${! false} <br />
</body>
</html>