package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// POST 방식 전송 인코딩 설정(한글깨지지 않도록)
		request.setCharacterEncoding("utf-8");
		
		// 폼 전송되는 name,addr 을 추출해서 콘솔창에 출력하고
		String name= request.getParameter("name");
		String addr= request.getParameter("addr");
		System.out.println("name:"+name);
		System.out.println("addr:"+addr);
		
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
