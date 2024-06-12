package kr.co.sist.aak.module.student.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserNoticeController {

	@GetMapping("/site_notice.do")
	public String notice() {
		return "student/site/notice";
	}
	
	@GetMapping("/site_notice_detail.do")
	public String detailNotice() {
		return "student/site/notice_detail";
	}
	
}