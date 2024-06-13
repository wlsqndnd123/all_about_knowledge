package kr.co.sist.aak.module.admin.noticeManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.module.admin.noticeManagement.service.NoticeManagementService;

@Controller
public class NoticemanagementController {
	@Autowired(required = false)
	private NoticeManagementService nms;
	
	
	@GetMapping("manage_notification_details.do")
public String noticeDetail(NoticeManagementDomain nmd, @RequestParam(defaultValue = "A_NOT00000") String noti_no,Model model) {
		nmd = nms.searchOneNotice(noti_no);
		
		model.addAttribute("nmd",nmd);
		
	return "/admin/manage_notifications/manage_notification_details";
}
	@GetMapping("manage_notification_write.do")
	public String noticeWrite() {
		return "/admin/manage_notifications/manage_notification_write";
	}
@GetMapping("manage_notification.do")
public String searchNoticeList(Model model) {
	List<NoticeManagementDomain> list =null;
	
	list = nms.searchAllNotice();
	model.addAttribute("list",list);
	return "/admin/manage_notification";
}
}
