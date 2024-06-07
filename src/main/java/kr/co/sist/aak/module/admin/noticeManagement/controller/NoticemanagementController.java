package kr.co.sist.aak.module.admin.noticeManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticemanagementController {
	@GetMapping("manage_notification_details.do")
public String noticeDetail() {
	return "/admin/manage_notifications/manage_notification_details";
}
@GetMapping("manage_notification.do")
public String searchNoticeList() {
	
	return "/admin/manage_notification";
}
}
