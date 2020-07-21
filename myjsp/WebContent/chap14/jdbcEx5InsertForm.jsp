<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>JDBC</title>
</head>
<body>
	<h1>데이터 입력</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name" /> <br /> 나이 : <input
			type="number" name="age" /> <br /> <input type="submit" value="등록" />
	</form>
	<a href="jdbcEx2.jsp">리스트 확인</a>
	<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");

	if (name != null && age != null) {

		// 1. 클래스 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");

		// 2. 연결 생성
		// 	2-1. 접속 정보
		String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
		String id = "root";
		String pw = "rootpw";
		Connection con = DriverManager.getConnection(url, id, pw);

		// 3. statement 생성
		String sql = "insert into member value (?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, Integer.valueOf(age));

		// 4. 쿼리 실행
		int rows = pstmt.executeUpdate();

		// 5. 결과 처리
		out.print(rows + "개의 행이 업데이트 되었습니다.");

		// 6. 자원 종료

		if (pstmt != null) {
			pstmt.close();
		}

		if (con != null) {
			con.close();
		}
	}
	%>
</body>
</html>