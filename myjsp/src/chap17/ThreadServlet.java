package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;

/**
 * Servlet implementation class ThreadServlet
 */
@WebServlet("/Thread1")
public class ThreadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int i = 0;
	private Member member = new Member();
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 읽기 전용으로만 쓴다. 값을 임의로 변경하는 행동은 위험하다.
//		i++; - 위험하다.
//		member.setName("name"); - 위험하다. 
		
		/*
		 * request : 유일하게 request만 스레드에 안전하다.
		 * session : 스레드에 안전하지 않다. (불가피하게 쓰는 경우가 있다.)-
		 * application : 스레드에 안전하지 않다.
		 */
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
