package test.users.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import oracle.net.ns.SessionAtts;
import test.controller.Action;
import test.controller.ActionForward;
import test.users.dao.UsersDao;
import test.users.dto.UsersDto;

public class UsersLoginAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		UsersDto dto =new UsersDto();
		dto.setId(id);
		dto.setPwd(pwd);
		
		String url=request.getParameter("url");
		HttpSession session=request.getSession();
		
		boolean isValid=UsersDao.getInstance().isValid(dto);
		if(isValid) {
			session.setAttribute("id", id);
			request.setAttribute("msg", "로그인성공" );
			request.setAttribute("url", "/home.do" );
		}else {
			request.setAttribute("msg", "로그인 실패" );
			request.setAttribute("url", "/loginform.do");
			
		}	
	
		ActionForward af = new ActionForward("/alert.do");
		return af;
	}

}
