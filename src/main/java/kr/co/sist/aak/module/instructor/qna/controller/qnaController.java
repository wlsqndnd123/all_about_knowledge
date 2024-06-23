package kr.co.sist.aak.module.instructor.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class qnaController {
	
	@GetMapping("/instructor/qna/qnaDetail.do")
	public String qnaDetail() {
		return "instructor/qna/qnaDetail";
	}
	
	
}
