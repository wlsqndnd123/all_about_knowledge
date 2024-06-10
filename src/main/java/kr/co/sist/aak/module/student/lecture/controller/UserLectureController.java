package kr.co.sist.aak.module.student.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserLectureController {

	@GetMapping("/lecture_list.do")
	public String searchLectureList() {
		return "student/lecture/lecture_list";
	}
	
	@GetMapping("/user_lecture_detail.do")
	public String detailLecture() {
		return "student/lecture/lecture_detail";
	}
	
}
