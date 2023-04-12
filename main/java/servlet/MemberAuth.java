package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;

@WebServlet(urlPatterns = "/13Servlet/MemberAuth.mvc", initParams= {@WebInitParam(name = "manager", value = "admin")})
public class MemberAuth extends HttpServlet{
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException {
	//application 내장객체
		ServletContext application = this.getServletContext();
		//web.xml 초기화 매개변수 읽기
		String driver = application.getInitParameter("OracleDriver");
		String url = application.getInitParameter("OracleUrl");
		String id = application.getInitParameter("OracleId");
		String pw = application.getInitParameter("OraclePw");
		//db와 연결
		dao= new MemberDAO(driver, url, id, pw);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//인증에 필요한 값
		String manager=this.getInitParameter("manager");
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		//필요한 동작처리
		MemberDTO dto = dao.getMember(id, pass);
		//결과값 처리
		String memberName=dto.getName();
		System.out.println(memberName);
		if(memberName!=null) {//회원
			if(manager.equals(id)){
				req.setAttribute("authMsg",memberName+"관리자님.");				
			}else {
				req.setAttribute("authMsg", memberName);				
			}
		}else {
			req.setAttribute("authMsg", "회원이 아닙니다.");
		}
		//결과에 따른 이동
		req.getRequestDispatcher("/13Servlet/MemberAuth.jsp").forward(req, resp);
	}
	@Override
	public void destroy() {
		dao.close();
	}
}
