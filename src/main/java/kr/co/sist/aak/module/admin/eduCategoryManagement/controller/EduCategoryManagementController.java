package kr.co.sist.aak.module.admin.eduCategoryManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EduCategoryManagementController {
	@GetMapping("manage_edu_cat.do")
	public String searchCategoryList() {
		
		return "/admin/manage_edu_cat";
	}
}
