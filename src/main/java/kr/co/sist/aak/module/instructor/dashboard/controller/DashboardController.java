package kr.co.sist.aak.module.instructor.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {

	@GetMapping("instructor_home.do")
	public String dashboard() {
		
		return "/instructor/instructor_home";
	}
}
