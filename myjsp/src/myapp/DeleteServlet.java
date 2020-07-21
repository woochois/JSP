package myapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myapp/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/myapp/delete.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Member mem = (Member) request.getSession().getAttribute("member");

		if (request.getParameter("password").equals(mem.getPassword())) {
			// 1. db에서 삭제
			try {
				Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");
				String sql = "delete from member where id=?";
				PreparedStatement ps = con.prepareStatement(sql);

				ps.setInt(1, mem.getId());
				ps.executeUpdate();
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 2. redirect or forward
			response.sendRedirect("signup");
		} else {
			request.setAttribute("message", "암호가 일치하지 않습니다.");
			request.getRequestDispatcher("/WEB-INF/view/myapp/delete.jsp").forward(request, response);
		}
	}

}
