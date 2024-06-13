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
public String instructorDetail(Model model, String inst_id) {
		InstructorManagementDomain imd = ims.instructorDetail(inst_id);
		
		String name =imd.getName();
		String id =imd.getInst_id();
		String email = imd.getEmail();
		String intro = imd.getIntroduction();
		String image = imd.getImage();
		String phone = imd.getPhone();
		String major_subject = imd.getMajor_subject();
		String education = imd.getEducation();
		model.addAttribute("ims",ims);
		model.addAttribute("name",name);
		model.addAttribute("id",id);
		model.addAttribute("email",email);
		model.addAttribute("intro",intro);
		model.addAttribute("image",image);
		model.addAttribute("phone",phone);
		model.addAttribute("major_subject",major_subject);
		model.addAttribute("education",education);
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
