package myapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myapp/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/myapp/signup.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String ageStr = request.getParameter("age");

		int age = 0;
		if (ageStr != null) {
			age = Integer.valueOf(ageStr);
		}

		// 1. 드라이버 로딩 (listener에서 이미 로딩함)

		try {
			// 2. 연결 생성
			Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");
			// 3. statement 생성
			String sql = "insert into member (email, password, name, age)" + "values('" + email + "','" + password
					+ "','" + name + "'," + age + ")";
			Statement stmt = con.createStatement();
			// 4. 쿼리 실행
			int cnt = stmt.executeUpdate(sql, new String[] { "id" });

			// 5. 결과 처리
			if (cnt == 1) {
				// 정상

				ResultSet rs = stmt.getGeneratedKeys();

				if (rs.next()) {
					Member mem = new Member();
					mem.setAge(age);
					mem.setName(name);
					mem.setEmail(email);
					mem.setPassword(password);
					mem.setId(rs.getInt(1));
					request.getSession().setAttribute("member", mem);
				}

				response.sendRedirect("member");
				rs.close();
			} else {
				// 오류
				request.getRequestDispatcher("/WEB-INF/view/myapp/signup.jsp").forward(request, response);
			}
			// 6. 자원 종료
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
