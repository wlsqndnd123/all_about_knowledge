package kr.co.sist.aak;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/index.do")
	public String main(){
		return "student/login_join";
	}
	
}
