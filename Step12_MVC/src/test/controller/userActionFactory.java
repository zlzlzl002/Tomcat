package test.controller;

import test.action.FortuneAction;
import test.action.MemberDetailAction;
import test.action.MemberListAction;
import test.action.PersonAction;
import test.action.PhoneAction;
import test.action.ShowTimeAction;
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
		// 만일/fortune.do 요청이라면
		if(command.equals("/fortune")) {
			action=new FortuneAction();
		}else if(command.equals("/showtime")) { // 만일/showtime.do 요청 이라면
			action=new ShowTimeAction();
		}else if (command.equals("/person")) {
			action=new PersonAction();
		}else if (command.equals("/phone")) {
			action=new PhoneAction();
		}else if (command.equals("/member/detail")) {
			action=new MemberDetailAction();
		}else if (command.equals("/member/list")) {
			action=new MemberListAction();
		}
		return action;
	}
}
