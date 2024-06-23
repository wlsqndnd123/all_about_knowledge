package kr.co.sist.aak.module.admin.noticeManagement.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.admin.vo.NoticeManagementVO;
import kr.co.sist.aak.module.admin.noticeManagement.service.NoticeManagementService;

@Controller
public class NoticemanagementController {
	@Autowired(required = false)
	private NoticeManagementService nms;

	@GetMapping("manage_notification_details.do")
	public String noticeDetail(NoticeManagementDomain nmd, @RequestParam(defaultValue = "A_NOT00000") String noti_no,
			Model model) {
		nmd = nms.searchOneNotice(noti_no);

		model.addAttribute("nmd", nmd);

		return "/admin/manage_notifications/manage_notification_details";
	}

	@GetMapping("manage_notification_write.do")
	public String addNoticeForm(String noti_no, Model model) {
		noti_no = nms.searchMaxNoticeVal();
		model.addAttribute("noti_no", noti_no);
		return "/admin/manage_notifications/manage_notification_add";
	}

	@GetMapping("manage_notification.do")
	public String searchNoticeList(Model model) {
		model.addAttribute("list", nms.searchAllNotice());
		return "/admin/manage_notification";
	}

	@PostMapping("notification_write_form_process.do")
	public String addNoticeFormProcess(HttpServletRequest request, String temp, Model model) throws IOException {
		File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");
		int tempSize = 100 * 1024 * 1024;
		// 2. 파일 업로드 클래스 생성.
		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), tempSize, "UTF-8",
				new DefaultFileRenamePolicy());
		// 업로더 명 (web parameter)
		String oriName = mr.getOriginalFileName("image");
		String fsName = mr.getFilesystemName("image");
		// 최대크기 10mbyte
		File tempFile = new File(saveDir.getAbsolutePath() + "/" + fsName);
		int maxSize = 10 * 1024 * 1024;
		System.out.println(System.getProperty("user.dir"));
		// 업로드 크기 제한
		boolean uploadflag = false;
		if (tempFile.length() > maxSize) {
			tempFile.delete();
			uploadflag = true;
		}
		model.addAttribute("fileName", oriName);
		model.addAttribute("uploadflag", !uploadflag);

		NoticeManagementVO nmVO = new NoticeManagementVO();
		nmVO.setContent(mr.getParameter("content"));
		// nmVO.setId(mr.getParameter("id"));
		nmVO.setId("aak_IS");
		nmVO.setNoti_no(mr.getParameter("noti_no"));
		nmVO.setTitle(mr.getParameter("title"));
		nmVO.setStatus("RESV");
		nmVO.setImage(fsName);
		int cnt = nms.addNotice(nmVO);
		if (cnt == 1) {
			model.addAttribute("nmVO", nmVO);
		}
		return "/admin/manage_notifications/manage_notification_add_result";

	}
	@PostMapping("notification_modify_form_process.do")
	public String nodifyNoticeFormProcess(HttpServletRequest request, String temp, Model model) throws IOException {
		File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");
		int tempSize = 100 * 1024 * 1024;
		// 2. 파일 업로드 클래스 생성.
		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), tempSize, "UTF-8",
				new DefaultFileRenamePolicy());
		// 업로더 명 (web parameter)
		String oriName = mr.getOriginalFileName("image");
		String fsName = mr.getFilesystemName("image");
		// 최대크기 10mbyte
		File tempFile = new File(saveDir.getAbsolutePath() + "/" + fsName);
		int maxSize = 10 * 1024 * 1024;
		System.out.println(System.getProperty("user.dir"));
		// 업로드 크기 제한
		boolean uploadflag = false;
		if (tempFile.length() > maxSize) {
			tempFile.delete();
			uploadflag = true;
		}
		model.addAttribute("fileName", oriName);
		model.addAttribute("uploadflag", !uploadflag);
		
		NoticeManagementVO nmVO = new NoticeManagementVO();
		nmVO.setContent(mr.getParameter("content"));
		// nmVO.setId(mr.getParameter("id"));
		nmVO.setId("aak_IS");
		nmVO.setNoti_no(mr.getParameter("noti_no"));
		nmVO.setTitle(mr.getParameter("title"));
		nmVO.setStatus("RESV");
		nmVO.setImage(fsName);
		int cnt = nms.addNotice(nmVO);
		if (cnt == 1) {
			model.addAttribute("nmVO", nmVO);
		}
		return "/admin/manage_notifications/manage_notification_add_result";
		
	}
	@ResponseBody
	@RequestMapping( value = "manage_notification_status.do",
			 method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String searchNoticeStatus(String status) {
		// PageNation pn = new PageNation();
		return nms.searchNoticeStatus(Integer.parseInt(status));
	}
	@GetMapping("manage_notifi_notify.do")
	public String modifyNotice(NoticeManagementDomain nmd, @RequestParam(defaultValue = "A_NOT00000") String noti_no,
			Model model) {
		nmd = nms.searchOneNotice(noti_no);

		model.addAttribute("nmd", nmd);
		return "/admin/manage_notifications/manage_notification_details_notify";
	}
	
}
