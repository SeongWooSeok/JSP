package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.set")
public class FirstController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri=req.getRequestURI();
		int lastSlash=uri.lastIndexOf("/");
		String commandStr=uri.substring(lastSlash);
		System.out.println(commandStr);
		
		if(commandStr.equals("/regist.set")) {
			registFunc(req);
		}else if(commandStr.equals("/login.set")) {
			loginFunc(req);
		}else if(commandStr.equals("/board.set")) {
			boardFunc(req);
		}
		req.setAttribute("uri", uri);
		req.setAttribute("comStr", commandStr);
		req.getRequestDispatcher("/13Servlet/FirstView.jsp").forward(req,resp);
	}
	
	void boardFunc(HttpServletRequest req) {
		req.setAttribute("result", "<h3>게시판</h3>");
	}

	void loginFunc(HttpServletRequest req) {
		req.setAttribute("result", "<h3>로그인</h3>");
	}

	void registFunc(HttpServletRequest req) {
		req.setAttribute("result", "<h3>회원가입</h3>");
	}

}
