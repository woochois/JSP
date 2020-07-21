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
			Statement stmt = con.createStatement();
		
		// 4. 쿼리 실행
			ResultSet rs = stmt.executeQuery("select name, age from member");
		
		// 5. 결과 처리
			if(rs.next()){
				out.print(rs.getString("name"));
				out.print("<br>");
				out.print(rs.getString("age"));
			}
		
		// 6. 자원 종료
			if(rs.next()){
				rs.close();
			}
		
			if(stmt != null){
				stmt.close();
			}
			
			if(con != null){
				con.close();
			}
	%>
</body>
</html>