package test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class FortuneAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String fortuneToday="동쪽으로 가면 귀인을 만나요!";
		
		request.setAttribute("fortuneToday", fortuneToday);
		
		return new ActionForward("/views/fortune.jsp");
	}

}
