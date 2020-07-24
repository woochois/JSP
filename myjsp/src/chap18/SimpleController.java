package chap18;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/SimpleController", loadOnStartup = 1, initParams = {
		@WebInitParam(name = "configFile", value = "/WEB-INF/commandHandler.properties") })
// loadOnStartup
// 미리
// 만들어두고
// 먼저 실행시켜줘라
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, CommandHandler> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		super.init();

		try {
			ServletContext app = getServletContext();
			String path = getInitParameter("configFile");
			String realPath = app.getRealPath(path);
			FileInputStream inStream = new FileInputStream(realPath);

			Properties props = new Properties();
			props.load(inStream);

			@SuppressWarnings("unchecked")
			Enumeration<String> keys = (Enumeration<String>) props.propertyNames();

			while (keys.hasMoreElements()) {
				String key = keys.nextElement();
				String className = props.getProperty(key);

				@SuppressWarnings("unchecked")
				Class<CommandHandler> clazz = (Class<CommandHandler>) Class.forName(className);

				CommandHandler com = clazz.newInstance();

				map.put(key, com);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 2단계, 요청 파악
		// request 객체로부터 사용자의 요청을 파악하는 코드
		String type = request.getParameter("type");

		// 3단계, 요청한 기능을 수행한다.
		// 사용자의 요청에 따라 알맞은 코드
		Object resultObject = null;
		if (type == null || type.equals("greeting")) {
			resultObject = "안녕하세요.";
		} else if (type.equals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject = "Invalid Type";
		}

		CommandHandler com = map.get(type);

		if (com != null) {
			resultObject = com.process(request, response);
		}

		// 4단계, request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);

		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		request.getRequestDispatcher("/chap18/simpleView.jsp").forward(request, response);
	}
}
