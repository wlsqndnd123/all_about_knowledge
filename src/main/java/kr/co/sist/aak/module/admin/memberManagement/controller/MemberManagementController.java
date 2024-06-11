package kr.co.sist.aak.module.admin.memberManagement.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MemberManagementController {
	@GetMapping("manage_member_details.do")
	public String searchDetaleMember() {
		return "/admin/manage_member/manage_member_details";
	}
	
	
	
	
}
