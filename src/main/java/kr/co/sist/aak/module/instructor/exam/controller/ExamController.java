package kr.co.sist.aak.module.instructor.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.module.instructor.exam.service.ExamService;

@Controller
public class ExamController {
	
	@Autowired(required = false)
	private ExamService es;
	
	@GetMapping("/examList.do")
	public String exam() {
		
		return "instructor/exam/examList";
	}
	
	@GetMapping("/exam_write.do")
	public String exam_write() {
		return "/instructor/exam/exam_write";
	}
	
	@GetMapping("/exam_update.do")
	public String exam_update() {
		return "/instructor/exam/exam_update";
	}

}
