package kr.co.sist.aak.module.admin.instructorManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InstructorManagementController {
	@GetMapping("manage_instructor_details.do")
public String instructorDetail() {
	return "/admin/manage_instructor/manage_instructor_details";
}
	@GetMapping("manage_instructor_addform.do")
	public String instructorAdd() {
		return "/admin/manage_instructor/manage_instructor_add";
	}
	@GetMapping("manage_instructor.do")
	public String searchInstructorList() {
		
		return "/admin/manage_instructor";
	}
}
