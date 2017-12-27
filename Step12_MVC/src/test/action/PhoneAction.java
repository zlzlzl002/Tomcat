package test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class PhoneAction extends Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) {
		String phoneToday="Apple";
		request.setAttribute("phoneToday", phoneToday);
		ActionForward af =new ActionForward("/views/phone.jsp");
		return af;
	}

}
