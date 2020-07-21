<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>JDBC delete</title>
</head>
<body>
	<%
		String memberid = request.getParameter("id");
	if (memberid != null) {

		// 1. 클래스 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");

		// 2. 연결 생성
		// 	2-1. 접속 정보
		String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
		String id = "root";
		String pw = "rootpw";
		Connection con = DriverManager.getConnection(url, id, pw);

		// 3. statement 생성
		String sql = "delete from member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);

		// 4. 쿼리 실행
		pstmt.setInt(1, Integer.valueOf(memberid));
		int rows = pstmt.executeUpdate();

		// 5. 결과 처리
		out.print(rows + "개의 행이 삭제 되었습니다.");

		// 6. 자원 종료

		if (pstmt != null) {
			pstmt.close();
		}

		if (con != null) {
			con.close();
		}
	} else {
	%>
	삭제할 데이터가 없습니다.
	<%
		}
	%>
</body>
