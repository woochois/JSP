package chap17;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NowServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
//		response.setContentType("type/html charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head><title>현재 시간</title></head>");
		out.print("<body>");
		out.print("현재 시간은");
		out.print(new Date());
		out.print("입니다.");
		out.print("</body></html>");
	}
}
