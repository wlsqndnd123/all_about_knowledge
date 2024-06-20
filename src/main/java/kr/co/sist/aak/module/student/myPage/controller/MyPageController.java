package kr.co.sist.aak.module.student.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	// 학생 마이페이지 --- 홈 (대시보드)
	@GetMapping("/mypage_home.do")
	public String myPageHome(){
		return "student/my_page/home_dashboard";
	}
	
	// 학생 마이페이지 --- 나의 강의
	@GetMapping("/my_lecture.do")
	public String lecture(){
		return "student/my_page/my_lecture";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 상세
	@GetMapping("/my_lecture_detail.do")
	public String lectureDetail(){
		return "student/my_page/my_lecture_detail";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 재생
	@GetMapping("/play_lecture.do")
	public String playLecture(){
		return "student/my_page/play_lecture";
	}
	
	// 학생 마이페이지 --- 관심 강의
	@GetMapping("/interest_lecture.do")
	public String interestLecture(){
		return "student/my_page/interest_lecture";
	}
	
	// 학생 마이페이지 --- 나의 문의
	@GetMapping("/my_question.do")
	public String question(){
		return "student/my_page/my_question";
	}
	
	// 학생 마이페이지 --- 개인정보수정 -- 사용자 검증 모달
	@GetMapping("/edit_information.do")
	public String information(){
		return "student/my_page/edit_information";
	}
	
	// 학생 마이페이지 --- 개인정보수정
	@GetMapping("/edit_profile.do")
	public String edit_profile(){
		return "student/my_page/edit_profile";
	}
	
	// 학생 마이페이지 --- 탈퇴
	@GetMapping("/withdrawal.do")
	public String withdrawal(){
		return "student/my_page/withdrawal";
	}
	
	// **********************학생 로그인*************************** 나중에 옮길 것
	@GetMapping("/login.do")
	public String login(){
		return "student/login_join";
	}
}
