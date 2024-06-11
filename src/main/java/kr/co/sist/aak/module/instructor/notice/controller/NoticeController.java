package kr.co.sist.aak.module.instructor.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	@GetMapping("/notice.do")
	public String notice() {
		
		return "instructor/notice/notice";
		
	}
	
	@GetMapping("/notice_write.do")
	public String notice_wirte() {
		
		return "instructor/notice/notice_wirte";
	}
	
	@GetMapping("/notice_update.do")
	public String notice_update() {
		return "instructor/notice/notice_update";
	}
	

}
