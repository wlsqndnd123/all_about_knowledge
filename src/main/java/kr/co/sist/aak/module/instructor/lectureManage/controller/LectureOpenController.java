package kr.co.sist.aak.module.instructor.lectureManage.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LectureOpenController {

	@GetMapping("/instructor/lectureManage/lectureApply.do")
	public String lecturApply() {
	
		return "instructor/lectureManage/lectureApply";
	}//lecturApply
	
//	@PostMapping("/instructor.lectureManage/lectureApplyProcess.do")
//	public String lectureApplyProcess(HttpServletRequest request, String temp, Model model) throws IOException {
//		
//		File saveDir= new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");
//		
//		int tempSize=100*1024*1024;
//		System.out.println(System.getProperty(temp));
//		
//	}
	
	
//	@GetMapping
//	public String openFrm(OpenRequestVO, LectureLessonVO[]) {
//		
//		
//	}
}
