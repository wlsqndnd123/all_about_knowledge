package kr.co.sist.aak.module.student.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageAuthController {

	@GetMapping("/mypage/withdrawal_confirm.do")
	public String withdrawalConfirm(){
		return "student/my_page/withdrawal_confirm";
	}
	
	@GetMapping("/mypage/withdrawal.do")
	public String withdrawal(){
		return "student/my_page/withdrawal";
			}
	}
