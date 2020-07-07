package chap05;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

public class Util {
	public static void printGreeting(PageContext pageContext) throws IOException {
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		JspWriter out = pageContext.getOut();
		
		String name = request.getParameter("name");
		if(name!=null) {
			out.print("<h1>" + name + "님 반갑습니다.</h1>");
		}else {
			out.print("<h1>손님 반갑습니다.</h1>");
		}
	}
}
