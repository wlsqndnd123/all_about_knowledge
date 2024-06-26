package kr.co.sist.aak.module.instructor.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.instructor.QnaDomain;
import kr.co.sist.aak.module.instructor.qna.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired(required = false)
	private QnaService qas;
	
	@GetMapping("/instructor/qna/qnaList.do")
	public String allQna(Model model) {
		
		model.addAttribute("qnaList", qas.selectAllQna());
		
		return "instructor/qna/qnaList";
	}
	
	
	
	@GetMapping("/instructor/qna/qnaDetail.do")
	public String qnaDetail(QnaDomain qnd, @RequestParam(defaultValue="Q_SUB00001") String qna_no, Model model) {
		
		qnd=qas.qnaDetail(qna_no);
		model.addAttribute("qnd", qnd);
		
		return "instructor/qna/qnaDetail";
	}
	
	
}
