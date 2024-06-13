package kr.co.sist.aak.module.admin.instructorManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.module.admin.instructorManagement.service.InstructorManagementService;

@Controller
public class InstructorManagementController {
	@Autowired(required = false)
	private InstructorManagementService ims;
	
	@GetMapping("manage_instructor_details.do")
public String instructorDetail() {
	return "/admin/manage_instructor/manage_instructor_details";
}
	@GetMapping("manage_instructor_addform.do")
	public String instructorAdd() {
		return "/admin/manage_instructor/manage_instructor_add";
	}
	@GetMapping("manage_instructor.do")
	public String searchInstructorList(Model model) {
		List<InstructorManagementDomain> list = ims.searchAllNInstructor();
		model.addAttribute("instList",list);
		return "/admin/manage_instructor";
	}
}
