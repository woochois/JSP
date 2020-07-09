<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>Path1 JSP</h1>

<!-- 
	서버에서는 절대경로가 클라이언트의 관점과는 다르다.
	서버에서는 어플리케이션 루트 경로가 붙어져 있기에 웹컨텐트 안에서 시작하는데
	클라이언트에서는 서버명이 끝나는 곳이 시작 경로이기에 전체 루트를 써줘야한다.
 -->

<a href="path2.jsp">path2</a> <br /> <!-- 상대경로 -->
<a href="sub/sub2.jsp">sub2</a> <br />
<a href="/myjsp/chap07/path/path2.jsp">path2 absolute</a> <br /> <!-- 절대경로 -->
<a href="<%=request.getContextPath()%>/chap07/path/path2.jsp">path2 absolute</a> <br />

<!-- 
	외부에서 접근이 가능한 지? 불가능 서버 안에서는 접근할 수 있지만, 사용자는 불가능하다. 
	공개되면 안되는 파일들은 WEB-INF에 넣어두자. 
-->
<a href="<%=request.getContextPath()%>/WEB-INF/webinf1.jsp">webinf1</a> 

<hr />
<!-- /myjsp 경로는 request 객체에 저장되어있다. -->
<p><%=request.getContextPath() %></p>
<hr />

<jsp:include page="/WEB-INF/webinf1.jsp" />
<jsp:include page="path2.jsp" />
<jsp:include page="sub/sub1.jsp" />
<!-- <jsp:include page="/" /> --> 
<!-- /로 시작할 경우에 최상위 프로젝트 폴더(WebContent)에서 시작한다는 의미 (이클립스 안에서만..): 절대경로 -->
<jsp:include page="/chap07/path/path2.jsp" /> <!-- 절대경로 -->

</body>
</html>


