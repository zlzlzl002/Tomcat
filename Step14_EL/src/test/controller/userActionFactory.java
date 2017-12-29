package test.controller;

import test.action.FortuneAction;
import test.action.InfoAction;

// Action class 설계하고 비즈니스 로직하고 userFacory 명시하고 forward 이동할꺼면 jsp만들기
public class userActionFactory {
	private static userActionFactory factory;
	private userActionFactory(){}
	//자신의 참조값을 리턴해주는 메소드
	public static userActionFactory getInstance(){
		if(factory==null){
			factory=new userActionFactory();
		}
		return factory;
	}
	// 요청처리를 할 Action 객체를 리턴해주는 메소드
	public Action action(String command) {
		Action action=null;
		if(command.equals("/fortune")) {
			action= new FortuneAction();
		}else if(command.equals("/info")) {
			action= new InfoAction();
		}
		// 만일/fortune.do 요청이라면
		return action;
	}
}
