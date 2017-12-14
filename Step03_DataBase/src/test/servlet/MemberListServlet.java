package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemberDao;
import test.dto.MemberDto;

/*
 *  회원 목록을 출력할 서블릿
 *  
 *  a 링크는 상대경로 이니까 sub/hello/world 												
 *  localhost:8888/Step03_DataBase/sub/xxxxxx
 *  			<a href="hello/world">xx	xx</a>
 *  	WebServlet 에서는 /sub 도 써줘야한다
 *  		@WebServlet("/sub/hello/world")
 */
@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException {
		// MemberDao 객체를 이용해서 회원 목록을 얻어온다.
		List<MemberDto> list = MemberDao.getInstance().getList();
		// 클라이언트에게 출력하기
		// 응답 인코딩 설정
		response.setCharacterEncoding("utf-8");
		// 응답 컨텐츠 설정
		response.setContentType("text/html;charset=utf-8");
		// 클라이언트에게 문자열을 출력할수 있는 객체 얻어오기
		PrintWriter pw = response.getWriter();
		// bootstrap link Println 안에서 작성
		pw.println("<link rel='stylesheet' href='/Step03_DataBase/css/bootstrap.css'/>");
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8' />");
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
		// 정적인 페이지 insertform.html
		pw.println("<a href='insertform.html'>회원 정보 추가</a>");
		pw.println("<div class=row>");
		pw.println("<div class=col-sm-6 col-sm-offset-3>");
		pw.println("<h3>회원목록 입니다</h3>");
		pw.println("<table class='table table-bordered table-condensed'>");
		pw.println("<colgroup>");
		pw.println("<col class='col-xs-2'>");
		pw.println("<col class='col-xs-3'>");
		pw.println("<col class='col-xs-3'>");
		pw.println("<col class='col-xs-2'>");
		pw.println("<col class='col-xs-2'>");
		pw.println("</colgroup>");
		pw.println("<thead>");
		pw.println("<tr>");
		pw.println("<th>번호</th>");
		pw.println("<th>이름</th>");
		pw.println("<th>주소</th>");
		pw.println("<th>삭제</th>");
		pw.println("<th>수정</th>");
		pw.println("</tr>");
		pw.println("</thead>");
		pw.println("<tbody>");
		// 반복문 이용해서 회원 목록 출력 하기
		for (MemberDto tmp : list) {
			pw.println("<tr>");
			pw.println("<td>" + tmp.getNum() + "</td>");
			pw.println("<td>" + tmp.getName() + "</td>");
			pw.println("<td>" + tmp.getAddr() + "</td>");
			// GET 방식 파라미터 요청 ?num="+tmp.getNum()+"
			pw.println("<td><a href='delete?num="+tmp.getNum()+"'>삭제</a></td>");
			pw.println("<td><a href='updateform?num="+tmp.getNum()+"'>수정</a></td>");
			pw.println("</tr>");
		}
		pw.println("</tbody>");
		pw.println("</table>");
		pw.println("</div>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
