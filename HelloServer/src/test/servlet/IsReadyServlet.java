package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTML;

// isReady 응답요청을 응답하기위해               spring
@WebServlet("/isReady")  // <= 어너테이션
public class IsReadyServlet extends HttpServlet {
	// 맴버필드
	private int count;
	
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// 방문 횟수 증가 시키기
		count++;
		
		// 클라이언트에게 출력하기 위한 객체
		PrintWriter msg = response.getWriter();
		msg.println("<!doctype html>");
		msg.println("<head>");
		msg.println("<title>title</title>");
		msg.println("</head>");
		msg.println("<body>");
		// okay 문자열 출력하기
		msg.println("<h3>okay!</h3>");
		msg.println("count:"+count);
		msg.println("</body>");
		msg.println("</html>");
	}
}
