package kr.co.sist.aak.module.admin.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminLoginController {
	@PostMapping("index.do")
public String login() {
	
	
	return "/admin/index";
}
}
