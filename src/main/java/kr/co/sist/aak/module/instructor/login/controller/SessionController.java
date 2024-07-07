package kr.co.sist.aak.module.instructor.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("aakSession")
@Controller
public class SessionController {
	
	@GetMapping("/instructor/login.do")
	public String setSession(HttpServletRequest request, HttpSession session, Model model) {
		
		session.setAttribute("aakSession","ss20010009001");
		model.addAttribute("login_id","INST_00011");
		
		return "instructor/loginProcess";
		
	}
	
	//~´Ô ¾È³çÇÏ¼¼¿ä
	@GetMapping("/instructor/loginProcess.do")
	public String getSession(HttpServletRequest request, HttpSession session, Model model) {
		session.getAttribute("aakSession");
		System.out.println(model.getAttribute("login_id")+"´Ô");
		
		return "instructor/instructor_home";
	}
	
	@GetMapping("/instructor/logout.do")
	public String removeSession(HttpSession session) {
		session.removeAttribute("aakSession");
		
		return "instructor/index";
		
		
	}
	
	

}