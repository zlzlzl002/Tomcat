package test.cafe.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.cafe.dao.CafeDao;
import test.cafe.dto.CafeDto;
import test.controller.Action;
import test.controller.ActionForward;

public class CafeUpdateFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		int num= Integer.parseInt(request.getParameter("num"));
		
		CafeDto dto =CafeDao.getInstance().getData(num);
		
		// 3. request 에 dto 를 담고
		request.setAttribute("dto", dto);
		
		return new ActionForward("/views/cafe/private/updateform.jsp");
	}

}
