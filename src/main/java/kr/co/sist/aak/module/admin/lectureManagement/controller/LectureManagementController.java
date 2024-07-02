package kr.co.sist.aak.module.admin.lectureManagement.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class LectureManagementController {
	@GetMapping("manage_lecture_details.do")
	public String searchDetaleLecture() {
		return "/admin/manage_lecture/manage_lecture_details";
	}
	
	
	
	
}
