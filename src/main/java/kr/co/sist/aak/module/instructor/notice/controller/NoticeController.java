package kr.co.sist.aak.module.instructor.notice.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.sist.aak.domain.instructor.NoticeDomain;
import kr.co.sist.aak.domain.instructor.vo.NoticeVO;
import kr.co.sist.aak.module.instructor.notice.service.NoticeService;

@Controller
@RequestMapping("/instructor")
public class NoticeController {
	
	@Autowired(required = false)
	private NoticeService ns;
	
	@GetMapping("/notice.do")
	public String notice(Model model) {
		
		
		
		List<NoticeDomain> list=ns.searchList();
		model.addAttribute("noticelist",list);
				
		return "/instructor/notice/notice";
		
	}
	
	@GetMapping("/notice_detail.do")
    public String searchDetailNotice(Model model, @RequestParam("noti_no") String noti_No) {
        NoticeDomain nDomain = ns.searchdetail(noti_No);
        model.addAttribute("nDomain", nDomain);
        return "/instructor/notice/notice_detail";
    }
	
	@GetMapping("/notice_write.do")
    public String notice_WriteFrm(String noti_no,Model model) {
		noti_no = ns.searchMaxNoticeVal();
		model.addAttribute("noti_no",noti_no);
        return "/instructor/notice/notice_write";
    }

	@PostMapping("/notice_write_pr.do")
	public String notice_Write(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String noti_no = request.getParameter("noti_no");
		String SUB_CODE = request.getParameter("SUB_CODE");
	    String title = request.getParameter("title");
	    String content = request.getParameter("content");

	    NoticeVO nVO = new NoticeVO();
	    nVO.setNOTI_NO(noti_no);
	    nVO.setTitle(title);
	    nVO.setCONTENT(content);
	    nVO.setStatus("Y");
	    nVO.setSub_code(SUB_CODE);

	    try {
	        int cnt = ns.insertNotice(nVO);
	        if (cnt == 1) {
	            model.addAttribute("nVO", nVO);
	        } else {
	          
	        }
	    } catch (Exception e) {
	        // 예외 처리
	        model.addAttribute("error", "An error occurred: " + e.getMessage());
	    }

	    // 공지 작성 결과 페이지로 리다이렉트
	    return "/instructor/notice/notice_write_result";
	}
	
	@RequestMapping(value = "/notice_update.do", method = RequestMethod.POST)
    public String noticeUpdate(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");

        String noti_no = request.getParameter("noti_no");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        NoticeVO nVO = new NoticeVO();
        nVO.setNOTI_NO(noti_no);
        nVO.setTitle(title);
        nVO.setCONTENT(content);

        int cnt = ns.modifyNotice(nVO);
        model.addAttribute("cnt", cnt);
        model.addAttribute("noti_no", noti_no);

        return "/instructor/notice/notice_detail";
    }
	
}
