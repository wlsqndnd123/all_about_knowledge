package kr.co.sist.aak.module.admin.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminLoginController {
	@RequestMapping(value = "adminindex.do",method = {RequestMethod.GET,RequestMethod.POST})
public String login() {
	return "/admin/index";
}
}
