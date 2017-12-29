package test.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class HomeAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		boolean canPopup=true;
		// nopopup.jsp 쿠키 목록을 읽어와서
		Cookie[] cookies=request.getCookies();
		
		return new ActionForward("/home.do");
	}

}











