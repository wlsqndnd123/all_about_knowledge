package kr.co.sist.aak.module.student.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LectureController {
// 학생 마이페이지 강의 관련 controller
	@GetMapping("/test.do")
	public String test(){
		return "student/my_page/semantic_test";
	}
	@GetMapping("/login.do")
	public String login(){
		return "student/login_join";
	}
}
