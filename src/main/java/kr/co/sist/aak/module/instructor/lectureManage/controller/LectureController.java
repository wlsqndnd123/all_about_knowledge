package kr.co.sist.aak.module.instructor.lectureManage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.module.instructor.lectureManage.service.LectureService;

@Controller
public class LectureController {

	@Autowired(required = false)
	private LectureService lecs;
	
	@GetMapping("/instructor/lectureManage/lectureList.do")
	public String allLectureList(Model model) {
		model.addAttribute("lecList",lecs);
		
		return "instructor/lectureManage/lectureList";
	}
	
	
	@GetMapping("/instructor/lectureManage/lectureList_detail.do")
	public String lectureList_detail(LectureDomain lecd, @RequestParam(defaultValue="LEC_000001") String lec_code, Model model) {
		
		lecd=lecs.lectureDetail(lec_code);
		model.addAttribute("lecd",lecd);
		
		
		return "instructor/lectureManage/lectureList_detail";
	}
	
}
