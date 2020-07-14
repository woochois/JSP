<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>비교 연산자</h1> // 문자 비교는 사전 순으로
	<form method="post">
		num1 : <input type="text" name="num1" value="${param.num1 }"/> <br />
		num2 : <input type="text" name="num2" value="${param.num2 }"/> <br />
		<input type="submit" value="비교" />
	</form>
	크다 greater than <br />
	${param.num1 > param.num2 }
	${param.num1 gt param.num2 }
	\${"10" + "7" } : ${"10" + "7" } <br />
	\${"10" > "7" } : ${"10" > "7" } <br /> // "" 문자열로 인식
	\${10 > "7" } : ${10 > "7" } <br /> // 둘 중 하나라도 숫자면 숫자로 인식
	\${"10" > 7 } : ${"10" > 7 } 
	<hr />
	작다 less than <br />
	${param.num1 < param.num2 }
	${param.num1 lt param.num2 }
	<hr />
	크거나 같다 greater than equal <br />
	${param.num1 >= param.num2 }
	${param.num1 ge param.num2 }
	<hr />
	작거나 같다 less than equal <br />
	${param.num1 <= param.num2 }
	${param.num1 le param.num2 }
	<hr />
	같다 equal <br />
	${param.num1 == param.num2 }
	${param.num1 eq param.num2 }
	<hr />
	같지 않다 not equal <br />
	${param.num1 != param.num2 } 
	${param.num1 ne param.num2 }
</body>
</html>