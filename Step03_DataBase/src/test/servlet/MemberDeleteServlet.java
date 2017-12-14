package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemberDao;
/*
 * 	회원 정보를 삭제 하고 응답하는 서블릿
 */
@WebServlet("/member/delete")
public class MemberDeleteServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// 1.삭제할 회원의 번호를 읽어온다.
		int num=Integer.parseInt(request.getParameter("num"));
		// 2.MemberDao 를 이용해서 회원정보를 삭제하고
		MemberDao.getInstance().delete(num);
		// 3.응답한다.
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
		pw.println("<title>알림</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>회원정보를 삭제 했습니다.</P>");
		pw.println("<a href='list'>회원 목록보기</a>");
		pw.println("</body>");
		pw.print("</html>");

	}
}
