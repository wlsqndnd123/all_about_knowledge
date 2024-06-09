package kr.co.sist.aak.module.student.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserQnaController {
	
	@GetMapping("/site_qna.do")
	public String qna() {
		return "student/site/qna";
	}
}
