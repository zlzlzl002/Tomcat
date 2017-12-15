package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/go3")
public class Go3Servlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {

		System.out.println("/go3 요청 처리중...");
		
		
		/*
		 *	[ 리다일렉트 이동하는 응답하기. ]
		 *	
		 *	- 클라이언트에게 새로운 요청을 강제하는 응답 
		 */
		
		// 상대경로 
		//response.sendRedirect("test/result3.jsp");
		
		
		// 절대경로 사용하려면 메소드를 통해 읽어와야한다.
		// response.sendRedirect("/Step05_RageMove/test/result3.jsp");
		
		// Context Path 읽어오기 == /Step05_RageMove/test/result3.jsp 
		String cPath=request.getContextPath();
		response.sendRedirect(cPath+"/test/result3.jsp");
	}
}
