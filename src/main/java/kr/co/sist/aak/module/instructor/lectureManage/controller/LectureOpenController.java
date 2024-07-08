package kr.co.sist.aak.module.instructor.lectureManage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	               //instructor/lectureManage/lectureApply_result.do
	
	@ResponseBody
	@PostMapping("/instructor/lectureManage/lectureApply_result.do")
	public String openFrm( HttpServletRequest request, String temp, Model model) throws IOException{

		File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");

		int tempSize = 100 * 1024 * 1024;
		System.out.println(request.getParameter(temp));

		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), tempSize, "UTF-8",
				new DefaultFileRenamePolicy());
		
		
		String fsName = mr.getFilesystemName("upfile");
		String oriName = mr.getOriginalFileName("upfile");

		int maxSize = 10 * 1024 * 1024 * 1024;

		File tempFile = new File(saveDir.getAbsolutePath() + "/" + fsName);

		boolean uploadFlag = false;
		if (tempFile.length() > maxSize) {// 업로드 제한
			tempFile.delete();
			uploadFlag = true;
		} // end if

		
		model.addAttribute("fileName", oriName);
		model.addAttribute("uploadFlag", !uploadFlag);
		
		JSONObject jsonObj= new JSONObject();
		
		jsonObj.put("lecNm", );	//강의명
		jsonObj.put("intro", jsonObj);	//학습개요
		jsonObj.put("goal", jsonObj);	//학습목표
		jsonObj.put("lectureImage", jsonObj);	//강의썸네일
		jsonObj.put("totalSession", jsonObj);	//총 차시수
		jsonObj.put("createDate", jsonObj);	//개설일자
		

		return "instructor/lectureManage/lectureApply_result"; //리턴값으로 json

	}
}