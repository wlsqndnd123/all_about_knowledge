package kr.co.sist.aak.module.student.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserLectureController {

	@GetMapping("/lecture_list.do")
	public String lectureList() {
		return "student/lecture/lecture_list";
	}
	
}
