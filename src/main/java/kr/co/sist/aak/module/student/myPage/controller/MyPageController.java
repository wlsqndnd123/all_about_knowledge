package kr.co.sist.aak.module.student.myPage.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.module.student.lecture.service.UserLectureService;


@Controller
public class MyPageController {
	
	@Autowired(required=false)
	private UserLectureService uls;
	
	@GetMapping("/mypage/my_question.do")
	public String question(Principal principal, Model model){
		model.addAttribute("list",uls.searchLecQna(null));
		return "student/my_page/my_question";
	}
	
}
