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

import org.apache.catalina.filters.SetCharacterEncodingFilter;

// 모든 요청에 대해서 필터 동작 하도록 설정 ....

public class EncodingFilter implements Filter {
	
	// 맴버필드로 정의하기  이유는 encoding을 다른 메소드에 참조할수 없어서
	String encoding;
	
	@Override
	public void destroy() {
		
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, 
			FilterChain chain)
			throws IOException, ServletException {
		
			// HttpServletRequest request=(HttpServletRequest)req;
			// HttpServletResponse response=(HttpServletResponse)res;
		// 인코딩 설정이 되어 있지 않으면
		if(req.getCharacterEncoding()==null) {
			// 인코딩을 설정을 한다.
			req.setCharacterEncoding("utf-8");
		}
		// 다음 작업 수행하기
		chain.doFilter(req, res);
			
	}
	
	// 필터가 최초 동작 될때 호출되는 메소드
	@Override
	public void init(FilterConfig config) throws ServletException {
		// 메소드에 전달되는 config 객체에 초기화 정보가 전달된다.
		
		// web.xml 에 정의된 인코딩 정보를 읽어온다. 		(utf-8)
		encoding=config.getInitParameter("encoding");  // "encoding" 이유는 web.xml 에 정의된 param-name 값이다
	}

}
