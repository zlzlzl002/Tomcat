package test.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;
import test.member.dao.MemberDao;
import test.member.dto.MemberDto;

public class MemberUpdateAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int num =Integer.parseInt(request.getParameter("num"));
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		
		MemberDto dto = new MemberDto(num,name,addr);
		
		MemberDao.getInstance().update(dto);
		
		request.setAttribute("msg", "회원정보를 수정했습니다");
		request.setAttribute("url", "/member/list.do");
		// 알림 페이지 view 로 forward 이동할수 있도록
		ActionForward af =new ActionForward("/views/member/alert.jsp");
		return af;
	}

}
