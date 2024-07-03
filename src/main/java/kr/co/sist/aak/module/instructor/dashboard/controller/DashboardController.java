package kr.co.sist.aak.module.instructor.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.RejectDomain;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.module.instructor.dashboard.service.DashboardService;
import kr.co.sist.aak.module.instructor.lectureManage.service.LectureService;

@Controller
public class DashboardController {
	
	@Autowired(required = false)
	private DashboardService dbs;

	
	//강사소개
	//@GetMapping("/instructor/instructorInfo.do")
	@RequestMapping(value="/instructor/instructor_home.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String instructorInfo( Model model) {
		//세션에 있는 아이디를 꺼내온다.
		String inst_id=(String)model.getAttribute("inst_id");
		
		inst_id="INST_00005";
		
		System.out.println("---------"+inst_id);
		InstructorInfoDomain instd=dbs.lectureInfo(inst_id); //강사정보
		
		System.out.println("-=---------------------------"+instd);
		int noReplyCnt=dbs.noreply(inst_id);//미답변 문의수
		int totalCnt=dbs.totalCnt(inst_id);//강의 총개수
		int openCnt=dbs.openCnt(inst_id);//강의 개설개수
		List<RejectDomain> recList= dbs.rejectList(inst_id);//반려리스트
		
		model.addAttribute("instd", instd);
		model.addAttribute("noReplyCnt", noReplyCnt);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("openCnt", openCnt);
		model.addAttribute("recList", recList);
		
		return "instructor/index";
	}//instructorInfo
	
	
	//강사 개인정보 수정버튼
	@GetMapping("/instructor/instructorInfo.do")
	public String modifyInstInfo(String inst_id, Model model) {

		return "instructor/instructorInfo";
	}
	
	//반려리스트 상세버튼
	@GetMapping("/lectureManage/rejectList.do")
	public String rejectList(Model model) {
		
		
		return "lectureManage/rejectList";
	}
	
	
	
	

}
