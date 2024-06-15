package kr.co.sist.aak.module.instructor.lectureMange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class lectureEntranceController {

	@GetMapping("lectureManage/lectureEntrance.do")
	public String lectureEntrance() {
		return "/instructor/lectureManage/lectureEntrance";
	}
	
}
