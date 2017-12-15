package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *  	[ forward ]
 *  1. 요청 전달 객체 얻어오기 RequestDispatcher
 *  2. forward(request, response) <= 반드시 request, response 넣어줘야 한다
 *  3. forward 하면 주소창 변화없음  || 주소창 잘보셈
 */
@WebServlet("/go8")
public class Go8Servlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("/go8 요청 처리중...");
		// 요청 전달자 객체 얻어오기
		RequestDispatcher rd =
				request.getRequestDispatcher("view1.jsp");
		// view1.jsp 페이지(서블릿) 에 응답을 위임한다.
		rd.forward(request, response); // <= 반드시 request,response 넣어줘야 한다.
		
		// !!중요 forward하면 주소창 변화없음  주소창 잘보셈.
	}
}
