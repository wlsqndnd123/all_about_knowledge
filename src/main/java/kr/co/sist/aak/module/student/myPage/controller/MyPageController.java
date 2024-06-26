package kr.co.sist.aak.module.student.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Desc : 마이페이지의 각 페이지를 연결하는 controller
 * @author 고한별
 * 작성일 : 2024.06.25
 */
@Controller
public class MyPageController {
	

	
	// 학생 마이페이지 --- 나의 강의 -- 상세
	@GetMapping("/mypage/my_lecture_detail.do")
	public String lectureDetail(){
		return "student/my_page/my_lecture_detail";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 재생
	@GetMapping("/mypage/play_lecture.do")
	public String playLecture(){
		return "student/my_page/play_lecture";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 확인
	@GetMapping("/mypage/exam_confirm.do")
	public String examConfirm(){
		return "student/my_page/exam_confirm";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 응시
	@GetMapping("/mypage/exam.do")
	public String exam(){
		return "student/my_page/exam";
	}
	
	// 학생 마이페이지 --- 관심 강의
	@GetMapping("/mypage/interest_lecture.do")
	public String interestLecture(){
		return "student/my_page/interest_lecture";
	}
	
	// 학생 마이페이지 --- 나의 문의
	@GetMapping("/mypage/my_question.do")
	public String question(){
		return "student/my_page/my_question";
	}
	
	// 학생 마이페이지 --- 개인정보수정 -- 사용자 검증 모달
	@GetMapping("/mypage/edit_information.do")
	public String information(){
		return "student/my_page/edit_information";
	}
	
	// 학생 마이페이지 --- 개인정보수정
	@GetMapping("/mypage/edit_profile.do")
	public String edit_profile(){
		return "student/my_page/edit_profile";
	}
	
	// 학생 마이페이지 --- 탈퇴
	@GetMapping("/mypage/withdrawal.do")
	public String withdrawal(){
		return "student/my_page/withdrawal";
	}

}
