package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx1
 */
//@WebServlet("/ServletEx1") xml을 사용하기에 어노테이션은 삭제한다.
public class ServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("servletEx1 요청 잘 받음");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=utf-8"); // 어떤 것보다 먼저 이뤄져야한다.
		PrintWriter out = response.getWriter();
		out.print("<h1> 첫 번째 서블릿 </h1>");
		out.print("<h1> 서블릿으로 html 작성은 어려워 </h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
