package test.users.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;
import test.users.dao.UsersDao;
import test.users.dto.UsersDto;

public class UsersLoginform extends Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		
		ActionForward af = new ActionForward("/views/users/loginform.jsp");
		
		return af;
	}

}
