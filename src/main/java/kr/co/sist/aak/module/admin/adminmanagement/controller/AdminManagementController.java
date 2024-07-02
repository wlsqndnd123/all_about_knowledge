package kr.co.sist.aak.module.admin.adminmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.module.admin.adminmanagement.service.AdminManagementService;


@Controller
public class AdminManagementController {
	@Autowired(required = false)
	private AdminManagementService ams;
	
	@GetMapping("manage_admin.do")
	public String searchAdminList(Model model) {
		
		List<AdminPermissionDomain> list=
				ams.searchAdmins();
		model.addAttribute("list",list);
		return "/admin/manage_admin/manage_admin";
	}
}
