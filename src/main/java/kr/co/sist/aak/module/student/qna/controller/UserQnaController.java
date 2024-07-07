package kr.co.sist.aak.module.student.qna.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.aak.domain.student.UserQnaDomain;
import kr.co.sist.aak.domain.student.vo.UserQnaVO;
import kr.co.sist.aak.module.student.qna.service.UserQnaService;

@Controller
public class UserQnaController {

	/*
	 * @Autowired(required = false) private UserQnaService uqs;
	 * 
	 * @GetMapping("/site_qna.do") public String qna(Model model) {
	 * 
	 * model.addAttribute("list", uqs.searchSiteQna()); model.addAttribute(std_id);
	 * return "student/site/qna"; }
	 * 
	 * @GetMapping("/site_qna_detail.do") public String
	 * detailQna(@RequestParam("qna_no") String qna_no, Model model) { UserQnaDomain
	 * uqd = uqs.searchSiteDetailQ(qna_no); UserQnaDomain uqd2 =
	 * uqs.searchSiteDetailA(qna_no);
	 * 
	 * model.addAttribute("uqd", uqd); model.addAttribute("uqd2", uqd2);
	 * 
	 * return "student/site/qna_detail"; }
	 * 
	 * 
	 * @PostMapping("/site_qna_write_process.do") public String qnaWirte(UserQnaVO
	 * uqVO, Model model) {
	 * 
	 * int cnt = 0; cnt=uqs.addSiteQ(uqVO); model.addAttribute("cnt",cnt);
	 * model.addAttribute("qna_no",uqVO.get);
	 * model.addAttribute("status",uqVO.getStatus());
	 * 
	 * System.out.println("========qnainsert=============="+uqVO); String qna_no =
	 * (String)model.getAttribute("qna_no");
	 * 
	 * uqVO.getQna_no(); uqs.addSiteQ(uqVO); return "student/site/qna"; }
	 * 
	 * 
	 * 
	 * @PostMapping("site_qna_write_process.do") public String
	 * addNoticeFormProcess(HttpServletRequest request, Model model) { // 1.
	 * UserQnaVO 媛앹껜瑜� �깮�꽦�븯怨� 媛믪쓣 �꽕�젙�븳�떎. UserQnaVO uqVO = new UserQnaVO();
	 * uqVO.setTitle(request.getParameter("title"));
	 * uqVO.setStd_id(request.getParameter("std_id"));uqVO.setStd_id("dowon1234");
	 * uqVO.setQna_no(request.getParameter("qna_no"));
	 * uqVO.setQ_content(request.getParameter("q_content"));
	 * 
	 * // 2. UserQnaService瑜� �씠�슜�븯�뿬 怨듭��궗�빆�쓣 異붽��븳�떎. int cnt =
	 * uqs.addSiteQ(uqVO); if (cnt == 1) { model.addAttribute("uqVO", uqVO); }
	 * 
	 * return "student/site/qna"; }
	 * 
	 * @PostMapping("/site_qna_write_process.do") public String addSiteQ(Principal
	 * principal, UserQnaVO uqVO, Model model) { String std_id =
	 * principal.getName(); // std_id 媛��졇�삤湲� uqVO.setStd_id(std_id); //
	 * UserQnaVO�뿉 �꽕�젙
	 * 
	 * // �깉濡쒖슫 QNA_NO �깮�꽦 String newQnaNo = uqs.searchMaxQVal();
	 * uqVO.setQna_no(newQnaNo);
	 * 
	 * // 怨듭��궗�빆 異붽� int cnt = uqs.addSiteQ(uqVO); if (cnt == 1) {
	 * model.addAttribute("uqVO", uqVO); }
	 * System.out.println("===================================================="+
	 * uqVO); return "redirect:/site_qna.do"; }
	 */

}
