package kr.co.sist.aak.module.admin.memberManagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberManagementController {
	@GetMapping("manage_member_details.do")
	public String searchMember() {
		return "/admin/manage_member/manage_member_details";
	}
	
	@PostMapping("manage_member_details.do")
	public String updateMember(HttpServletRequest request, Model model) {
		model.addAttribute("flag", "1");
	
		// POST 방식일 때 Filter를 사용하지 않으면 각각의 한들을 encoding 하여 사용한다.
		// System.out.println(new String(name.getBytes("8859_1"),"UTF-8"));
//		System.out.println(URLDecoder.decode( URLEncoder.encode(name,"8859_1"),"UTF-8"));
		// web parameter의 유효성 검중, service 객체로 전달, 관계 유지객체 설정
		return "/admin/manage_member/manage_member_details";
	
	}
	
	
	
}
