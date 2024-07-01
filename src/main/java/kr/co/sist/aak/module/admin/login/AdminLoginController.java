package kr.co.sist.aak.module.admin.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.aak.domain.admin.AdminLoginDomain;
import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;

@Controller
public class AdminLoginController {
	@Autowired(required = false)
	private AdminLoginService adls;
	
	@RequestMapping(value = "adminindex.do",method = {RequestMethod.GET,RequestMethod.POST})
public String login(@ModelAttribute AdminLoginVO alVO, Model model,HttpSession session) {
	if(adls.searchLogin(alVO)) {
		AdminPermissionDomain ald = adls.searchAdminPermission(alVO);
	session.setAttribute("adminid", alVO.getId());
	session.setAttribute("adminPermission", ald);
	model.addAttribute("flag",true);	
		return "/admin/index";
	}else {
		session.setAttribute("errorpage", false);
		
	}
		return "/admin/login";
}
	@GetMapping("admin_index_logout.do")
	public String logout(@ModelAttribute AdminLoginVO alVO, Model model,HttpSession session) {
		session.invalidate();
		return "/admin/login";
	}
}
