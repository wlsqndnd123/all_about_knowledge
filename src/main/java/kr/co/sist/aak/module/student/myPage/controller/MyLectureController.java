package kr.co.sist.aak.module.student.myPage.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.module.student.myPage.service.MyLectureService;

@Controller
public class MyLectureController {
	
	@Autowired
	private MyLectureService myLectureService;
	
	@GetMapping("/mypage/my_lecture.do")
	public String lecture(Principal principal, Model model){
		String stdId = principal.getName();
		
		return "student/my_page/my_lecture";
	}

}
