package kr.co.sist.aak.module.student.auth.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {


	@GetMapping("/student/login.do")
	public String login(){
		return "student/login_join";
	}
	

	@GetMapping("/student/login-error.do")
	public String loginError(HttpServletRequest request, Model model) {
		String error = request.getParameter("error");
		if(error != null) {
			model.addAttribute("loginError", true);
		}
		return "student/login_join";
	}
}
