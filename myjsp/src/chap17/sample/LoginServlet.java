package chap17.sample;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({"/sample/login", "/sample/logout"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath() + "/chap17/sample/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		
		
		if(id != null && pw != null) {
			if(id.equals(pw)) {
				session.setAttribute("user", id);
			}
		}
		
		response.sendRedirect(request.getContextPath() + "/chap17/sample/index.jsp");
		
		// 포워드는 내부에서 전송, 리다이렉트는 요청을 다시 보내라고 요청하는 것
		
		
		/*
		 * RequestDispatcher view =
		 * request.getRequestDispatcher("/chap17/sample/index.jsp");
		 * view.forward(request, response);
		 */
	}
}
