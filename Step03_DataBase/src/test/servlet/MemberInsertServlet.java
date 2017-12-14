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

@WebServlet("/member/insert")
public class MemberInsertServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// 폼 전송 되는 회원정보를 읽어와서
		// 한글 인코딩 설정
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		// MemberDao 를 이용해서 DB 에 저장하고
		MemberDto dto = new MemberDto();
		dto.setName(name);
		dto.setAddr(addr);
		MemberDao.getInstance().insert(dto);
		// 응답
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
		pw.println("<title>회원 정보 추가하기</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>회원 정보를 추가 했습니다</p>");
		pw.println("<a href='list'>회원 목록보기</a>");
		pw.println("</body>");
		pw.println("</html>");

	}
}
