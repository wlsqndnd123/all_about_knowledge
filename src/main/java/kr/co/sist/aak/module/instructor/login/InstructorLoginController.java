package kr.co.sist.aak.module.instructor.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InstructorLoginController {
	
	@RequestMapping(value = "/instructor/loginProcess.do",method = {RequestMethod.POST})
	public String login(String id, String password) {
		
		
		
		return "instructor/index";
	}
	
//	@PostMapping("/findPw.do")
//	public String dashboard() {
//		
//		return "instructor/findPw";
//	}
	

	
}
