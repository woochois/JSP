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
			String dbid = "root";
			String pw = "rootpw";
			/* Connection con = DriverManager.getConnection(url, dbid, pw); */
			Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");
		
		// 3. statement 생성
			Statement stmt = con.createStatement();
		
		// 4. 쿼리 실행
			ResultSet rs = stmt.executeQuery("select id, name, age from member");
		
		// 5. 결과 처리
			while(rs.next()){
				out.print("<a href='jdbcEx7UpdateForm.jsp?id="+ rs.getInt("id") +"'>");
				out.print(rs.getInt("id"));
				out.print(" : ");
				out.print(rs.getString("name"));
				out.print(" : ");
				out.print(rs.getString("age"));
				out.print("</a>");
				
				out.print("<a href='jdbcEx8DeleteForm.jsp?id=");
				out.print(rs.getInt("id") + "'>");
				out.print("삭제");
				out.print("</a>");
				out.print("<br>");
			}
		
		// 6. 자원 종료
			if(rs != null){
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