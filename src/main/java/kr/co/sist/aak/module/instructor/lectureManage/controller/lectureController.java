package kr.co.sist.aak.module.instructor.lectureManage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class lectureController {

	@GetMapping("lectureManage/lectureList_detail.do")
	public String lectureList_detail() {
		return "/instructor/lectureManage/lectureList_detail";
	}
	
}
