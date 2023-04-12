package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/13Servlet/AnnotationMapping.do")
public class AnnotationMapping extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
		req.setAttribute("message", "annotation mapping");
		req.getRequestDispatcher("/13Servlet/AnnotationMapping.jsp").forward(req, resp);
	   }

}
