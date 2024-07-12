package kr.co.sist.aak.module.student.qna.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.student.UserQnaDomain;
import kr.co.sist.aak.domain.student.vo.UserQnaVO;
import kr.co.sist.aak.module.student.qna.service.UserQnaService;

@Controller
public class UserQnaController {

	@Autowired(required = false)
	private UserQnaService uqs;

//	@GetMapping("/site_qna.do")
//	public String qna(Model model) {
//
//		model.addAttribute("list", uqs.searchSiteQna());
//		/* model.addAttribute(std_id); */
//		return "student/site/qna";
//	}
	@GetMapping("/site_qna.do")
	public String qna(Model model) {
		
		model.addAttribute("list", uqs.searchSiteQna());
		
		return "student/site/qna";
	}

	@GetMapping("/site_qna_detail.do")
	public String detailQna(@RequestParam("qna_no") String qna_no, Model model) {
		UserQnaDomain uqd = uqs.searchSiteDetailQ(qna_no);
		UserQnaDomain uqd2 = uqs.searchSiteDetailA(qna_no);

		model.addAttribute("uqd", uqd);
		model.addAttribute("uqd2", uqd2);

		return "student/site/qna_detail";
	}

	@PostMapping("/site_qna_write_process.do")
	public String addSiteQ(Principal principal, UserQnaVO uqVO, Model model) {
		String std_id = principal.getName(); // std_id 가져오기
	    uqVO.setStd_id(std_id); // UserQnaVO에 설정
		
		// 새로운 QNA_NO 생성
	    String newQnaNo = uqs.searchMaxQVal();
	    uqVO.setQna_no(newQnaNo);

	    // 문의사항 추가
	    int cnt = uqs.addSiteQ(uqVO);
	    if (cnt == 1) {
	        model.addAttribute("uqVO", uqVO);
	    }
	    return "redirect:/site_qna.do"; 
	}
	
	
	@PostMapping("/site_qna_modify.do")
	public String modifySiteQ(Principal principal, UserQnaVO uqVO, Model model) {
		String std_id = principal.getName(); // std_id 가져오기
		uqVO.setStd_id(std_id); // UserQnaVO에 설정
		
		// 문의사항 수정
		int cnt = uqs.modifySiteQ(uqVO);
		if (cnt == 1) {
			model.addAttribute("uqVO", uqVO);
		}
		return "redirect:/site_qna.do"; 
	}
	
	
	
	
//	@GetMapping("/site_qna_write.do")
//	public String updateQna(@RequestParam("qna_no") String qna_no, Model model) {
//		UserQnaDomain uqd = uqs.searchSiteDetailQ(qna_no);
//		model.addAttribute("uqd", uqd);
//		
//		return "student/site/qna_write";
//	}

	

}