package kr.co.sist.aak.module.instructor.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {

	@GetMapping("instructor_home.do")
	public String dashboard() {
		
		return "/instructor/instructor_home";
	}//dashboard
	
	
	@GetMapping("/lectureManage/lectureList.do")
	public String lecturManage() {
	
		return "instructor/lectureManage/lectureList";
	}//lecturManage
	
	
	@GetMapping("/lectureManage/lectureApply.do")
	public String lecturApply() {
	
		return "instructor/lectureManage/lectureApply";
	}//lecturApply
	
	
	@GetMapping("/qna/qnaList.do")
	public String qnaList() {
	
		return "instructor/qna/qnaList";
	}//qnaList
	
}
