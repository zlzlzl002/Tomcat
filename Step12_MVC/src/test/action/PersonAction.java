package test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class PersonAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		// 인물
		String personToday="김구라";
		// 데이터(Model) request 에담는다
		request.setAttribute("personToday", personToday);
		// views 페이지로 forward 이동할수 있도록
		ActionForward af =new ActionForward("/views/person.jsp");
		// 리턴
		return af;
	}

}
