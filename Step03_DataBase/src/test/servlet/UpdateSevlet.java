package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemberDao;
import test.dto.MemberDto;

@WebServlet("/member/update")
public class UpdateSevlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 1. 폼전송되는 수정할 회원의 번호,이름,주소를 읽어와서
		int num =Integer.parseInt(request.getParameter("num"));
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		// 2. MemberDao를 이용해서 DB 수정반영하고
		MemberDto dto = new MemberDto(num,name,addr);
		MemberDao.getInstance().update(dto);
		// 3. 응답하기
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
		pw.println("<script>");
		pw.println("alert('수정했습니다');");
		pw.println("location.href='list';");
		pw.println("</script>");
		pw.println("</body>");
		pw.println("</html>");

	}
}
