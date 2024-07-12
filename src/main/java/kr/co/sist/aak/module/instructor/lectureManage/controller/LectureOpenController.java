package kr.co.sist.aak.module.instructor.lectureManage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.domain.instructor.LectureLessonDomain;
import kr.co.sist.aak.domain.instructor.vo.LectureLessonVO;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.module.instructor.lectureManage.service.LectureService;

@Controller
public class LectureOpenController {

	@Autowired(required = false)
	private LectureService lts;

	@GetMapping("/instructor/lectureManage/lectureApply.do")
	public String lecturApply(Model model) {

		List<LectureDomain> list = lts.selectCategory();
		model.addAttribute("catList", list);
		
		
		return "instructor/lectureManage/lectureApply";
	}// lecturApply

	@ResponseBody
	@RequestMapping(value = "/instructor/lectureManage/subtitle.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String lectureSubtitle(@RequestParam(name = "subCode", defaultValue = "CAT_000001") String subCode) {
		String jsonObj = lts.selectSubtitle(subCode);
		

		return jsonObj;
	}// lectureSubtitle

	@ResponseBody
	@RequestMapping(value = "/instructor/lectureManage/leclesson.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String lectureLesson(LectureLessonVO llVO, @RequestParam(name = "lecCode", defaultValue = "LEC_000001") String lecCode) {
		String jsonObj = lts.lecLesson(llVO);
		
		
		return jsonObj;
	}// lectureLesson
	
	@ResponseBody
	@PostMapping("/instructor/lectureManage/lectureApply_result.do")
	 public String openFrm(LectureVO lecVO,HttpServletRequest request, Model model) throws IOException {

	        String saveDir = "C:/dev/workspace/all_about_knowledge/src/main/webapp/upload";
	        File dir = new File(saveDir);
	        if (!dir.exists()) {
	            dir.mkdirs();
	        }

	        int tempSize = 100 * 1024 * 1024;
	        MultipartRequest mr = new MultipartRequest(request, saveDir, tempSize, "UTF-8", new DefaultFileRenamePolicy());

	        String lecNm = mr.getParameter("lecNm");
	        String intro = mr.getParameter("intro");
	        String goal = mr.getParameter("goal");
	        String totalSession = mr.getParameter("totalSession");

	        String fsName = mr.getFilesystemName("lectureImage");
	        String oriName = mr.getOriginalFileName("lectureImage");

	        File tempFile = new File(saveDir + "/" + fsName);
	        int maxSize = 10 * 1024 * 1024;
	        boolean uploadFlag = false;
	        if (tempFile.length() > maxSize) {
	            tempFile.delete();
	            uploadFlag = true;
	        }

	        model.addAttribute("fileName", oriName);
	        model.addAttribute("uploadFlag", !uploadFlag);

	        // JSON 객체로 반환
	        JSONObject jsonObj = new JSONObject();
	        jsonObj.put("fsName", fsName);   // 강의명
	        
	        
	        return jsonObj.toJSONString(); // 리턴값으로 json
	        
	        
	    }
	
		/*
		 * @ResponseBody
		 * 
		 * @PostMapping("/instructor/lectureManage/lectureApply_result.do") public
		 * String uploadVideo(LectureLessonVO llVO, HttpServletRequest request, Model
		 * model) throws IOException{
		 * 
		 * String saveDir =
		 * "C:/dev/workspace/all_about_knowledge/src/main/webapp/upload"; File dir = new
		 * File(saveDir); if (!dir.exists()) { dir.mkdirs(); }
		 * 
		 * int tempSize = 100 * 1024 * 1024; MultipartRequest mr = new
		 * MultipartRequest(request, saveDir, tempSize, "UTF-8", new
		 * DefaultFileRenamePolicy());
		 * 
		 * 
		 * //String lesson= mr.getParameter("lesson"); String title=
		 * mr.getParameter("title"); String explain= mr.getParameter("explain");
		 * 
		 * String fsName = mr.getFilesystemName("upfile"); String oriName =
		 * mr.getOriginalFileName("upfile");
		 * 
		 * File tempFile = new File(saveDir + "/" + fsName); int maxSize = 10 * 1024 *
		 * 1024; boolean uploadFlag = false; if (tempFile.length() > maxSize) {
		 * tempFile.delete(); uploadFlag = true; }
		 * 
		 * model.addAttribute("fileName", oriName); model.addAttribute("uploadFlag",
		 * !uploadFlag);
		 * 
		 * // JSON 객체로 반환 JSONObject jsonObj=new JSONObject(); jsonObj.put("fsName",
		 * fsName); // 강의명
		 * 
		 * return jsonObj.toJSONString(); }
		 */
	
	
	@ResponseBody
	@RequestMapping(value = "/instructor/lectureManage/lecInfo.do",method = { RequestMethod.GET,RequestMethod.POST }, produces = "application/json;charset=UTF-8")
	 public String openFrm(LectureVO lecVO) {
		
		
		String json =lts.lecInfo(lecVO);// 강의명
		System.out.println("====lecVO========="+json);
        return json; // 리턴값으로 json
	}
	

}
