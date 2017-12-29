package test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// title:Action abstract<= 추상class 만듬
public abstract class Action {
	// 추상 메소드
	public abstract ActionForward execute(HttpServletRequest request,
			HttpServletResponse response);
}
