package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/Login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");   // 중요
		String pwd = request.getParameter("pwd"); // 중요
		System.out.println("id:"+id);
		System.out.println("pwd:"+pwd);
		// 응답 인코딩 설정
		response.setCharacterEncoding("utf-8");
		// 응답 컨텐츠 설정 웹브라우저에게 알려준다() 내용을
		response.setContentType("text/html;charset=utf-8");
		// 클라이언트에게 문자열을 출력할수 있는 객체 얻어오기
		PrintWriter pw = response.getWriter();
		
		// 아이디 비밀번호가 gura, 1234  라고 가정하면
		if(id.equals("gura") && pwd.equals("1234")) {
			pw.print("login ok~");
		}else {
			pw.println("<p style=color:red>로그인 다시해라</p>");
		}
	}
}
