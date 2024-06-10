package kr.co.sist.aak.module.instructor.studentList.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentListController {
	
	@GetMapping("studentList.do")
	public String StudentList() {
		
		return "/instructor/studentList";
	}

}
