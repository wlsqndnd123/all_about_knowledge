package kr.co.sist.aak.module.instructor.exam.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
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
@RequestMapping("/instructor")
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
	            // Handle the case when cnt is not 1
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
	
	@RequestMapping(value ="/exam_update.do", method = RequestMethod.POST)
    public String examUpdate(@RequestParam("q_NO") List<Integer> qNoList, 
                             @RequestParam("CONTENT") List<String> contentList,
                             @RequestParam("EX_1") List<String> ex1List,
                             @RequestParam("EX_2") List<String> ex2List,
                             @RequestParam("EX_3") List<String> ex3List,
                             @RequestParam("EX_4") List<String> ex4List,
                             @RequestParam("SOLUTION") List<String> solutionList,
                             Model model) {
        
        List<ExamVO> examList = new ArrayList<>();
        
        for (int i = 0; i < qNoList.size(); i++) {
            ExamVO eVO = new ExamVO();
            eVO.setQ_NO(qNoList.get(i));
            eVO.setCONTENT(contentList.get(i));
            eVO.setEX_1(ex1List.get(i));
            eVO.setEX_2(ex2List.get(i));
            eVO.setEX_3(ex3List.get(i));
            eVO.setEX_4(ex4List.get(i));
            eVO.setSOLUTION(solutionList.get(i));
            examList.add(eVO);
        }
        
        int cnt = es.modifyExam(examList);
        model.addAttribute("cnt", cnt);
        model.addAttribute("Q_NO_LIST", qNoList);
        
        return "/instructor/exam/exam_update_result";
    }
}
	
	
	
