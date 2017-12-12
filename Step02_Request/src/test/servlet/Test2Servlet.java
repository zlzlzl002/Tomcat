package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test2")
public class Test2Servlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청 메소드를 읽어와 본다.
		String method = request.getMethod();
		// 콘솔에 출력
		System.out.println("method:" + method);

		// GET 방식 요청 파라미터 추출
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		// 콘솔에 출력
		System.out.println("name:"+name);
		System.out.println("num:"+num);
		// System.out.printf("name/num:"+name+num);
		
		
		
		// 응답 인코딩 설정
		response.setCharacterEncoding("utf-8");
		// 응답 컨텐츠 설정 웹브라우저에게 알려준다() 내용을
		response.setContentType("text/html;charset=utf-8");
		// 클라이언트에게 문자열을 출력할수 있는 객체 얻어오기
		PrintWriter pw = response.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("ok~");
		pw.println("</body>");
		pw.print("</html>");

	}
}
