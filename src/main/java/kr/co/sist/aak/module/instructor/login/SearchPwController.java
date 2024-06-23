package kr.co.sist.aak.module.instructor.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SearchPwController {

	@PostMapping("/instructor/findPw.do")
	public String findPw(String email, String id, String name) {
	
		return "instructor/findPw";
	}
}
