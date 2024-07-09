package kr.co.sist.aak.module.instructor.lectureManage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.exceptions.PersistenceException;
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
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.module.instructor.lectureManage.service.LectureService;

@Controller
public class LectureOpenController {

	@Autowired(required = false)
	private LectureService lts;

	@GetMapping("/instructor/lectureManage/lectureApply.do")
	public String lecturApply(Model model) {
		List<LectureDomain> list=lts.selectCategory();
		
		System.out.println("----------------"+list);
		model.addAttribute("catList",list);

		return "instructor/lectureManage/lectureApply";
	}// lecturApply
	
	@ResponseBody
	@RequestMapping(value="/instructor/lectureManage/subtitle.do",method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public String lecturSubtitle(@RequestParam(name = "subCode",defaultValue = "CAT_000001")String subCode) {
		System.out.println("---------subCode-----------"+ subCode );
		String jsonObj=lts.selectSubtitle(subCode);
		System.out.println( "----------subCode----------"+jsonObj );
		return jsonObj ;
	}// lecturApply
	               //instructor/lectureManage/lectureApply_result.do
	
	@ResponseBody
	@PostMapping("/instructor/lectureManage/lectureApply_result.do")
	public String openFrm(HttpServletRequest request, String temp, Model model) throws IOException{

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
		
//		jsonObj.put("lecNm",jsonObj );	//강의명
//		jsonObj.put("intro", jsonObj);	//학습개요
//		jsonObj.put("goal", jsonObj);	//학습목표
//		jsonObj.put("lectureImage", jsonObj);	//강의썸네일
//		jsonObj.put("totalSession", jsonObj);	//총 차시수
//		jsonObj.put("createDate", jsonObj);	//개설일자
//		

		return "instructor/lectureManage/lectureApply_result"; //리턴값으로 json

	}
	
	@ResponseBody
    public String addLecture(@RequestParam("sub_title") String sub_title,
                             @RequestParam("intro") String intro,
                             @RequestParam("goal") String goal,
                             @RequestParam("image") MultipartFile image,
                             @RequestParam("total_no") int total_no,
                             @RequestParam("create_date") @DateTimeFormat(pattern = "yyyy-MM-dd") Date createDate, String sub_code) {
        LectureVO lecVO = new LectureVO();
        lecVO.setSub_title(sub_title);
        lecVO.setIntro(intro);
        lecVO.setGoal(goal);
        try {
            lecVO.setImage(new String(image.getBytes()));
        } catch (IOException e) {
            e.printStackTrace();
            return "Error: " + e.getMessage();
        }
        lecVO.setTotal_no(total_no);
        lecVO.setCreate_date(createDate);

        lts.lectureInfo(sub_code);
        return "instructor/lectureManage/lectureApply_result";
    }
	
	
	
	
}
