package kr.co.sist.aak.module.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NavController {
	@GetMapping("manage_edu_cat.do")
	public String manageEdu() {
		
		return "/admin/manage_edu_cat";
	}
	@GetMapping("manage_lecture.do")
	public String managelecture() {
		
		return "/admin/manage_lecture";
	}
	@GetMapping("manage_teacherlist.do")
	public String manageTeacherlist() {
		
		return "/admin/manage_teacherlist";
	}
	@GetMapping("manage_memberlist.do")
	public String manageMemberlist() {
		
		return "/admin/manage_memberlist";
	}
	@GetMapping("manage_qna.do")
	public String manageQna() {
		
		return "/admin/manage_qna";
	}
	@GetMapping("manage_notification.do")
	public String manageNotification() {
		
		return "/admin/manage_notification";
	}
}
