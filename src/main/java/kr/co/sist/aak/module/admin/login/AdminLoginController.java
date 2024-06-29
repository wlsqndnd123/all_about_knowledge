package kr.co.sist.aak.module.admin.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;

@Controller
public class AdminLoginController {
	@Autowired(required = false)
	private AdminLoginService adls;
	
	@RequestMapping(value = "adminindex.do",method = {RequestMethod.GET,RequestMethod.POST})
public String login(@ModelAttribute AdminLoginVO alVO, Model model,HttpSession session) {
	if(adls.searchLogin(alVO)) {
	session.setAttribute("adminid", alVO.getId());	
		return "/admin/index";
	}else {
		session.setAttribute("adminid", false);	
		
	}
		return "/admin/login";
}
}
