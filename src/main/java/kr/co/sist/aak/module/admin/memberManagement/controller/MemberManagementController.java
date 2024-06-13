package kr.co.sist.aak.module.admin.memberManagement.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.MemberManagementDomain;
import kr.co.sist.aak.module.admin.memberManagement.service.MemberManagementService;


@Controller
public class MemberManagementController {
	
	@Autowired(required = false)
	private MemberManagementService mms;
	
	@GetMapping("manage_memberlist.do")
	public String searchMember(Model model) {
		List<MemberManagementDomain> list = mms.searchMember();
		model.addAttribute("memberList",list);
		

		return "/admin/manage_memberlist";
	}
	
	
	
	@GetMapping("manage_member_details.do")
	public String searchDetaleMember() {
		return "/admin/manage_member/manage_member_details";
	}
	
	
	
	
}
