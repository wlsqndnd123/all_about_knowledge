package kr.co.sist.aak.module.instructor.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExamController {
	
	@GetMapping("/examList.do")
	public String exam() {
		
		return "instructor/exam/examList";
	}

}
