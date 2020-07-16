package chap17.path;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UrlPathEx1
 */

/*
 * '/' 시작 '/*' 종료
 * '*.' 로 시작 : 확장자 매핑
 * '/' 만 있음 : 기본 서블릿
 * 그 외 정확한 매핑
 */

/*
 * 매핑 우선순위
 * 1. 정확한 매핑
 * 2. 경로 매핑
 *   2.1 가장 긴 경로
 * 3. 확장자 매핑
 * 4. 기본 서블릿
 */

public class UrlPathEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Servlet 1").append(request.getContextPath());
	}
}
