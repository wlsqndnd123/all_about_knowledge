package kr.co.sist.aak.module.student.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.module.student.lecture.service.UserLectureService;

@Controller
public class UserLectureController {

	@Autowired(required=false)
	private UserLectureService uls;
	
	@GetMapping("/lecture_list.do")
	public String searchLectureList(Model model) {
		
		model.addAttribute("listLecture",uls.searchUserLecture());
		
		return "student/lecture/lecture_list";
	}
	
	@GetMapping("/user_lecture_detail.do")
	public String detailLecture() {
		return "student/lecture/lecture_detail";
	}
	
}
