package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// implements 인터페이스 추상메소드 Override 해야함

/*
 * 	중간에 클라이언트의 요청을 가로 채서 작업을 할 객체 설계
 * 
 * - javax.servlet.Filter 인터페이스를 구현해서 만든다.
 */

// {"xxx","xxx"} 배열로 2가지 작업  
@WebFilter("/member/private/*") // * 모든 요청 /users/private/xxx/xxx
public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		
	}
	
	// 필터가 수행이 될때 호출하는 메소드         실행순서(doFilter)들어옴
	@Override // ServletRequest 는 HttpServletRequest 부모 type
			 // ServletResponse 는 HttpServletResponse 부모 type
	public void doFilter(ServletRequest req, ServletResponse res, 
			FilterChain chain)
			throws IOException, ServletException {
		// 원래 type 으로  casting
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)res;
		// HttpSession 객체의 참조값 얻어오기
		HttpSession session=request.getSession();
		// Context 경로 얻어오기
		String cPath=request.getContextPath();
		// 원래 요청 uri(url) 정보 얻어오기
		String url=request.getRequestURI();
		// session 에 로그인 정보가 있는지 여부를 확인
		if(session.getAttribute("id")==null) {
			// 로그인 페이지의 경로 구성       원래요청 경로 +url;
			String path=cPath+"/member/login_form.jsp?url="+url;
			// 로그인 페이지로 이동 시킨다.
			response.sendRedirect(path); // 로그인x
		}else {
			// 원래 하려던 작업 시키기
			chain.doFilter(req, res); // 로그인 o
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	
	}	
}
