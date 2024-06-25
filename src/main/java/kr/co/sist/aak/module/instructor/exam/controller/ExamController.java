package kr.co.sist.aak.module.instructor.exam.controller;

import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.instructor.ExamDomain;
import kr.co.sist.aak.domain.instructor.vo.ExamVO;
import kr.co.sist.aak.module.instructor.exam.service.ExamService;

@Controller
public class ExamController {
	
	@Autowired(required = false)
	private ExamService es;
	
	@GetMapping("/examList.do")
	public String exam(Model model) {
		
		List<ExamDomain> list=es.searchList();
		model.addAttribute("examlist",list);
		System.out.println("컨트롤러:"+list);
		return "/instructor/exam/examList";
	}
	
	
	@GetMapping("/exam_write.do")
	public String exam_writeFrm(Model model) {
		 Integer Q_NO = es.searchQNo();
		model.addAttribute("Q_NO",Q_NO);
		
		return "/instructor/exam/exam_write";
	}
	
	
	
	
	@PostMapping("/exam_write_pr.do")
	public String exam_write(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
	    request.setCharacterEncoding("UTF-8");
	    
	    String SUB_CODE = request.getParameter("SUB_CODE");
	    String CONTENT = request.getParameter("CONTENT");
	    String EX_1 = request.getParameter("EX_1");
	    String EX_2 = request.getParameter("EX_2");
	    String EX_3 = request.getParameter("EX_3");
	    String EX_4 = request.getParameter("EX_4");
	    String SOLUTION = request.getParameter("SOLUTION");
	    
	    ExamVO eVO = new ExamVO();
	    eVO.setSUB_CODE(SUB_CODE);
	    eVO.setCONTENT(CONTENT);
	    eVO.setEX_1(EX_1);
	    eVO.setEX_2(EX_2);
	    eVO.setEX_3(EX_3);
	    eVO.setEX_4(EX_4);
	    eVO.setSOLUTION(SOLUTION);
	    
	    int nextQNo = es.searchQNo();
	    eVO.setQ_NO(nextQNo);
	  
	    try {
	        int cnt = es.insertExam(eVO);
	        if (cnt == 1) {
	            model.addAttribute("eVO", eVO);
	            model.addAttribute("Q_NO", nextQNo);
	        } else {
	            // cnt가 1이 아닐 경우 추가 처리
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    System.out.println(eVO.toString());
	    return "/instructor/exam/exam_write_result";
	}
	
	@GetMapping("/exam_update.do")
	public String exam_updateFrm(Model model) {
		
		List<ExamDomain> list=es.searchList1();
		model.addAttribute("examlist",list);
		System.out.println("update쪽 리스트"+list);
		
		return "/instructor/exam/exam_update";
	}
	
	
	@RequestMapping(value ="/exam_update_pr.do", method=RequestMethod.POST)
	public String exam_update(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		 request.setCharacterEncoding("UTF-8");
	    // 디버깅을 위한 로깅 추가
	  
		 Integer Q_NO = es.searchQNo();

		 String CONTENT = request.getParameter("CONTENT");
		 String EX_1 = request.getParameter("EX_1");
		 String EX_2 = request.getParameter("EX_2");
		 String EX_3 = request.getParameter("EX_3");
		 String EX_4 = request.getParameter("EX_4");
		 
		 ExamVO eVO = new ExamVO();
		 eVO.setQ_NO(Q_NO);
		 eVO.setCONTENT(CONTENT);
		 eVO.setEX_1(EX_1);
		 eVO.setEX_2(EX_2);
		 eVO.setEX_3(EX_3);
		 eVO.setEX_4(EX_4);
		 
		 
		 int cnt =es.modifyExam(eVO);
		 model.addAttribute("eVO",eVO);
		 model.addAttribute("Q_NO",Q_NO);
		
	    
	    // 결과 페이지 반환
	    return "/instructor/exam/examList";
	}
}
