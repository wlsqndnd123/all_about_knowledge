package kr.co.sist.aak.module.instructor.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	@GetMapping("notice.do")
	public String notice() {
		
		return "/instructor/notice";
		
	}
	
	
	

}
