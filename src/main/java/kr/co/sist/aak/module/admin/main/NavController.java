package kr.co.sist.aak.module.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NavController {
	
	@GetMapping("manage_lecture.do")
	public String managelecture() {
		
		return "/admin/manage_lecture";
	}
	
	
	@GetMapping("manage_qna.do")
	public String manageQna() {
		
		return "/admin/manage_qna";
	}

}
