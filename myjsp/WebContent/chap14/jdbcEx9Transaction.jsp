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
			String sql1 = "update money set money="
						+"(select money-10 where id = 1)"
						+ "where id=1";
		
			String sql2 = "update money set money="
						+"(select money+10 where id = 2)"
						+ "where id=2";
		
			PreparedStatement pstmt1 = con.prepareStatement(sql1);
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
		
		// 4. 쿼리 실행
		// 	4-1. auto commit -> false;
			con.setAutoCommit(false);
			
			pstmt1.executeUpdate();
			
			boolean trouble = false;
			
			if(!trouble){
				pstmt2.executeUpdate();
				con.commit();
			}else{
				con.rollback();
			}
		
		// 5. 결과 처리
			out.print("입금과 출금 완료");
		
		// 6. 자원 종료
		
			if(pstmt1 != null){
				pstmt1.close();
			}
		
			if(pstmt2 != null){
				pstmt2.close();
			}
			
			if(con != null){
				con.close();
			}
	%>
</body>
</html>