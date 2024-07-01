package kr.co.sist.aak.module.student.auth.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.module.student.auth.service.EditInformationService;

@Controller
public class EditInformationController {
	
	@Autowired
	private EditInformationService editInformationService;
	
	// 학생 마이페이지 --- 개인정보수정 -- 사용자 검증 모달
	@GetMapping("/mypage/edit_information.do")
	public String information(){
		return "student/my_page/edit_information";
	}
	
	// 학생 마이페이지 --- 개인정보수정
	@GetMapping("/mypage/edit_profile.do")
	public String edit_profile(Principal principal){
		String stdId = principal.getName();
		editInformationService.getInformation(stdId);
		
		return "student/my_page/edit_profile";
	}
}
