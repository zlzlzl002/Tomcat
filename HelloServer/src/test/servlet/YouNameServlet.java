package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/youName")
public class YouNameServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest arg0, 
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter msg = response.getWriter();
		
		msg.println("<!doctype html>");
		msg.println("<head>");
		msg.println("<title>title</title>");
		msg.println("</head>");
		msg.println("<body>");
		// okay 문자열 출력하기
		msg.print("Moon");
		msg.println("</body>");
		msg.println("</html>");
	}
}
