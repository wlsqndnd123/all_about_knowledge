package kr.co.sist.aak.module.instructor.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.instructor.NoticeDomain;
import kr.co.sist.aak.module.instructor.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired(required = false)
	private NoticeService ns;
	
	@GetMapping("/notice.do")
	public String notice(Model model) {
		
		List<NoticeDomain> list=ns.searchList();
		model.addAttribute("noticelist",list);
				
		
		return "/instructor/notice/notice";
		
	}
	
	@GetMapping("/notice_write.do")
	public String notice_wirte() {
		
		return "/instructor/notice/notice_wirte";
	}
	
	@GetMapping("/notice_update.do")
	public String notice_update() {
		return "/instructor/notice/notice_update";
	}
	

}
