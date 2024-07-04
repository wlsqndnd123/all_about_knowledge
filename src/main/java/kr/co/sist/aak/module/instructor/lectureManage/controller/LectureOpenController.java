package kr.co.sist.aak.module.instructor.lectureManage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.aak.domain.instructor.vo.LectureLessonVO;
import kr.co.sist.aak.domain.instructor.vo.OpenRequestVO;
import kr.co.sist.aak.module.instructor.lectureManage.service.LectureService;

@Controller
public class LectureOpenController {

	@Autowired(required = false)
	private LectureService lecservice;
	
	@GetMapping("/instructor/lectureManage/lectureApply.do")
	public String lecturApply() {

		return "instructor/lectureManage/lectureApply";
	}// lecturApply

//	@PostMapping("/instructor/lectureApply_result.do")
//	public String applyResult() {
//		
//		return "instructor/lectureApply_result";
//	}// applyResult
	
	@PostMapping("/instructor/lectureManage/lectureApply_result.do")
	public String lectureApplyProcess(HttpServletRequest request, String temp, Model model) throws IOException {

		File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");

		int tempSize = 100 * 1024 * 1024;
		System.out.println(request.getParameter(temp));

		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), tempSize, "UTF-8",
				new DefaultFileRenamePolicy());

		String fsName = mr.getFilesystemName("upfile");
		String oriName = mr.getOriginalFileName("upfile");

		int maxSize = 10 * 1024 * 1024 *1024;

		File tempFile = new File(saveDir.getAbsolutePath() + "/" + fsName);

		boolean uploadFlag = false;
		if (tempFile.length() > maxSize) {// 업로드 제한
			tempFile.delete();
			uploadFlag = true;
		} // end if

		model.addAttribute("fileName", oriName);
		model.addAttribute("uploadFlag", !uploadFlag);
		
		return "instructor/lectureApply_result";
	}

//	@ExceptionHandler(SQLException.class)
//	public ModelAndView handleIe(SQLException se) {
//		ModelAndView mav= new ModelAndView("day0613/upload_err");
//		mav.addObject("msg",se.getMessage());
//		
//		return mav;
//	}
	
//	@PostMapping("/instructor/lectureManage/lectureApplyProcess.do")
//	public String openFrm[](OpenRequestVO orVO, LectureLessonVO llVO) {
//		
//		
//		
//	}
	
}
