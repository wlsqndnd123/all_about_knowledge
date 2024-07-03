package kr.co.sist.aak.module.admin.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.admin.DashBoardDomain;
import kr.co.sist.aak.module.admin.dashboard.service.DashBoardService;


@Controller
public class DashBoardController {
	
	//어드민로그인컨트롤러에다가 집어넣어라
	
	
	@Autowired(required = false)
	private DashBoardService dbs;

	@GetMapping("/adminindex.do")
	public String searchDataCount(DashBoardDomain dbDomain, Model model) {
		dbDomain = dbs.searchDataCount();
		model.addAttribute("dbDomain",dbDomain);
		

		return "/admin/index.do";
	}
	

	
	

}
