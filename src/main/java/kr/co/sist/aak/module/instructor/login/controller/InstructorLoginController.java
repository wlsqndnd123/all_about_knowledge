package kr.co.sist.aak.module.instructor.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.aak.module.instructor.login.service.LoginService;

@Controller
public class InstructorLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/instructor/loginProcess.do",method = {RequestMethod.POST})
	public String login(String id, String password, HttpSession session, Model model) {
		
//		if(id == null || id.trim().isEmpty()) {
//			model.addAttribute("","ID를 입력하세요.");
//			
//			return "instructor/index";
//		}
//		
		
//		return "instructor/index";
		return "forward:/instructor/instructor_home.do";
	}
	
	

	
}
