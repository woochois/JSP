package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Process2Handler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		return "프로세스 2";
	}

}
