package test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;
import test.dto.MemberDto;

public class MemberDetailAction extends Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원 한명의 정보 얻어오기
		MemberDto dto =new MemberDto(1,"김구라","노량진");
		// 1. 데이터(Model)을 request에 담는다
		request.setAttribute("dto", dto);
		// 3. view 페이지로 froward 이동할수 있도록 ActionForward 객체를 생성해서
		ActionForward fw = new ActionForward("/views/member/detail.jsp");
		
		return fw;
	}
	
}
