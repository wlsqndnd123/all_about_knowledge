package kr.co.sist.aak.module.student.myPage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.aak.domain.student.vo.MyExamVO;
import kr.co.sist.aak.module.student.myPage.service.MyExamService;

@Controller
public class MyExamController {
	
	@Autowired
	private MyExamService myExamService;
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 확인
	@GetMapping("/mypage/exam_confirm.do")
	public String examConfirm(){
		return "student/my_page/exam_confirm";
	}
	
	// 학생 마이페이지 --- 나의 강의 -- 시험 -- 응시
	@GetMapping("/mypage/exam.do")
	public String exam(Model model){
		List<MyExamVO> examList = myExamService.getExam();
		model.addAttribute("examList",examList);
		return "student/my_page/exam";
	}
	
}
