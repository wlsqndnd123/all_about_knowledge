package kr.co.sist.aak.module.student.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	/**
	 * Desc : 학생의 로그인과 회원가입에 필요한 페이지로 Mapping
	 * 작성자 : 고한별
	 * 작성일 : 2024.06.23
	 * @return 로그인,회원가입 jsp의 경로
	 */
	@GetMapping("/login")
	public String login(){
		return "student/login_join";
	}
	
}
