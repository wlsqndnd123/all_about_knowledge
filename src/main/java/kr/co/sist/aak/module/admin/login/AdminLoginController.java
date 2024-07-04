package kr.co.sist.aak.module.admin.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.domain.admin.DashBoardDomain;
import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;
import kr.co.sist.aak.module.admin.dashboard.service.DashBoardService;
@Controller
public class AdminLoginController {
	@Autowired(required = false)
	private AdminLoginService adls;
	@Autowired(required = false)
	private DashBoardService dbs;
	
	@RequestMapping(value = "adminindex.do",method = {RequestMethod.GET,RequestMethod.POST})
public String login(@ModelAttribute AdminLoginVO alVO,HttpSession session,Model model) {
	if(adls.searchLogin(alVO)) {
		AdminPermissionDomain ald = adls.searchAdminPermission(alVO);
	session.setAttribute("adminid", alVO.getId());
	session.setAttribute("adminPermission", ald);
	session.setAttribute("permission", ald.getPermissions());
	session.setAttribute("auth",adls.searchAuth(alVO) );
	
	DashBoardDomain dbDomain = new DashBoardDomain();
	dbDomain = dbs.searchDataCount();
	model.addAttribute("dbDomain",dbDomain);
	
		return "/admin/index";
	}else {
		session.setAttribute("errorpage", true);
		
	}
		return "/admin/login";
}
	
	@GetMapping("admin_index_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:admin_index.do";
	}
	
	
	@GetMapping("admin_main.do")
	public String toMain(Model model) {
		
		DashBoardDomain dbDomain = new DashBoardDomain();
		dbDomain = dbs.searchDataCount();
		model.addAttribute("dbDomain",dbDomain);
		
		return "/admin/index";
	}
}
