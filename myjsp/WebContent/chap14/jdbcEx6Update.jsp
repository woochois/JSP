<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>JDBC</title>
</head>
<body>
	<%
		// 1. 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
	
		// 2. 연결 생성
		// 	2-1. 접속 정보
			String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
			String id = "root";
			String pw = "rootpw";
			Connection con = DriverManager.getConnection(url, id, pw);
		
		// 3. statement 생성
			String sql = "update member set name=?, age=? where id=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. 쿼리 실행
			pstmt.setString(1, "첫번째 이름");
			pstmt.setInt(2, 99);
			pstmt.setInt(3, 1);
			int rows = pstmt.executeUpdate();
		
		// 5. 결과 처리
			out.print(rows + "개의 행이 업데이트 되었습니다.");
		
		// 6. 자원 종료
		
			if(pstmt != null){
				pstmt.close();
			}
			
			if(con != null){
				con.close();
			}
	%>
</body>
</html>