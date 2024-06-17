package kr.co.sist.aak.module.admin.qnaManagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class QnaManagementController {
	@GetMapping("manage_qna_details.do")
	public String searchDetaleQna() {
		return "/admin/manage_qna/manage_qna_details";
	}
	

	
	
	
}
