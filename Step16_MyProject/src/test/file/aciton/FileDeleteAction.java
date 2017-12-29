package test.file.aciton;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.glass.ui.Application;

import test.controller.Action;
import test.controller.ActionForward;
import test.file.dao.FileDao;
import test.file.dto.FileDto;

public class FileDeleteAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int num =Integer.parseInt(request.getParameter("num"));
		FileDto dto =FileDao.getInstance().getData(num);
		String saveFileName=dto.getSaveFileName();
		
		FileDao.getInstance().delete(num);
		
		
		request.setAttribute("num", num);
		return new ActionForward("file/delete.jsp");
	}

}
