package kr.co.sist.aak.module.admin.instructorManagement.controller;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.vo.InstructorManagementVO;
import kr.co.sist.aak.module.admin.instructorManagement.service.InstructorManagementService;

@Controller
public class InstructorManagementController {
	@Autowired(required = false)
	private InstructorManagementService ims;

	@GetMapping("manage_instructor_details.do")
	public String instructorDetail(InstructorManagementDomain imd, Model model, String inst_id) {
		List<String> list =ims.searchInstructorSubject(inst_id);
		imd = ims.instructorDetail(inst_id);
		model.addAttribute("imd", imd);
		model.addAttribute("lectures", list);
		
		return "/admin/manage_instructor/manage_instructor_details";
	}

	@GetMapping("manage_instructor_addform.do")
	public String instructorAddForm(Model model) {
		String inst_id =ims.searchMaxInstId();
		model.addAttribute("inst_id",inst_id);
		return "/admin/manage_instructor/manage_instructor_add";
	}
	@PostMapping("inst_add_process.do")
	public String instructorFormProcess(HttpServletRequest request,String temp, Model model) throws IOException {
		File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");
		int tempSize =100*1024*1024;
		//2. 파일 업로드 클래스 생성.
		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath()
				,tempSize,"UTF-8", new DefaultFileRenamePolicy());
		//업로더 명 (web parameter)
		String oriName = mr.getOriginalFileName("image");
		String fsName = mr.getFilesystemName("image");
		//최대크기 10mbyte
		File tempFile = new File(saveDir.getAbsolutePath()+"/"+fsName);
		int maxSize = 10*1024*1024;
		System.out.println(System.getProperty("user.dir"));
		//업로드 크기 제한
		boolean uploadflag =false;
		if(tempFile.length()>maxSize) {
			tempFile.delete();
			uploadflag=true;
		}
		model.addAttribute("fileName",oriName);
		model.addAttribute("uploadflag",!uploadflag);
		InstructorManagementVO imVO = new InstructorManagementVO();
		imVO.setEducation(mr.getParameter("education"));
		imVO.setEmail(mr.getParameter("email"));
		
		imVO.setImage(fsName);
		imVO.setInst_id(mr.getParameter("inst_id"));
		imVO.setIntroduction(mr.getParameter("introduction"));
		imVO.setMajor_subject(mr.getParameter("major_subject"));
		imVO.setName(mr.getParameter("name"));
		imVO.setPhone(mr.getParameter("phone"));
		
		ims.addInstructor(imVO);

	    String imageUrl = "all_about_knowledge/upload/" + fsName;
	    boolean isImageAvailable = false;
	    int retryCount = 10;
	    
	    while (retryCount > 0) {
	        if (isImageAvailable(imageUrl)) {
	            isImageAvailable = true;
	            break;
	        }
	        try {
	            Thread.sleep(500); // 0.5초 대기
	        } catch (InterruptedException e) {
	            e.printStackTrace();
	        }
	        retryCount--;
	    }
	    
	    if (!isImageAvailable) {
	        model.addAttribute("imageError", "이미지 업로드에 실패했습니다. 다시 시도해 주세요.");
	    }

		
		
		return "/admin/manage_instructor/manage_instructor_add_result";
		
		
	}

	@GetMapping("manage_instructor.do")
	public String searchInstructorList(Model model,@RequestParam(defaultValue = "N") String status) {
		List<InstructorManagementDomain> list = ims.searchAllNInstructor();
		if(status.equals("Y")) {
			list = ims.searchAllyInstructor();
		}
		model.addAttribute("instList", list);
		return "/admin/manage_instructor";
	}
	@PostMapping("manage_instructor_modify_process.do")
	public String modifyInstructorProcess(HttpServletRequest request, String temp, Model model) throws IOException {
	    File saveDir = new File("C:/dev/workspace/all_about_knowledge/src/main/webapp/upload");
	    int tempSize = 100 * 1024 * 1024;
	    MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), tempSize, "UTF-8", new DefaultFileRenamePolicy());
	    
	    String oriName = mr.getOriginalFileName("image");
	    String fsName = mr.getFilesystemName("image");
	    
	    File tempFile = new File(saveDir.getAbsolutePath() + "/" + fsName);
	    int maxSize = 10 * 1024 * 1024;
	    
	    boolean uploadflag = false;
	    if (tempFile.length() > maxSize) {
	        tempFile.delete();
	        uploadflag = true;
	    }
	    
	    model.addAttribute("fileName", oriName);
	    model.addAttribute("uploadflag", !uploadflag);
	    
	    InstructorManagementVO imVO = new InstructorManagementVO();
	    imVO.setEducation(mr.getParameter("education"));
	    imVO.setEmail(mr.getParameter("email"));
	    imVO.setImage(fsName);
	    imVO.setInst_id(mr.getParameter("inst_id"));
	    imVO.setIntroduction(mr.getParameter("introduction"));
	    imVO.setMajor_subject(mr.getParameter("major_subject"));
	    imVO.setName(mr.getParameter("name"));
	    imVO.setPhone(mr.getParameter("phone"));
	    
	    ims.modifyInstructorInfo(imVO);
	    InstructorManagementDomain imd = ims.instructorDetail(mr.getParameter("inst_id"));
	    model.addAttribute("imd", imd);
	    
	    
	    String imageUrl = "all_about_knowledge/upload/" + fsName;
	    boolean isImageAvailable = false;
	    int retryCount = 10;
	    
	    while (retryCount > 0) {
	        if (isImageAvailable(imageUrl)) {
	            isImageAvailable = true;
	            break;
	        }
	        try {
	            Thread.sleep(500); // 0.5초 대기
	        } catch (InterruptedException e) {
	            e.printStackTrace();
	        }
	        retryCount--;
	    }
	    
	    if (!isImageAvailable) {
	        model.addAttribute("imageError", "이미지 업로드에 실패했습니다. 다시 시도해 주세요.");
	    }

	    return "/admin/manage_instructor/manage_instructor_modify_result";
	}

	private boolean isImageAvailable(String url) {
	    try {
	        HttpURLConnection connection = (HttpURLConnection) new URL("http://localhost" + url).openConnection();
	        connection.setRequestMethod("HEAD");
	        return (connection.getResponseCode() == HttpURLConnection.HTTP_OK);
	    } catch (IOException e) {
	        return false;
	    }
	}

	@GetMapping("manage_instructor_modify.do")
	public String modifyInstructorInfo(InstructorManagementDomain imd,String inst_id,Model model) {
		imd = ims.instructorDetail(inst_id);
		model.addAttribute("imd",imd);
		return "/admin/manage_instructor/manage_instructor_modify";
	}
	@GetMapping("manage_instructor_delete.do")
	public String deleteInstructor(@RequestParam(defaultValue = "INST_00001") String inst_id,Model model) {
		ims.removeInstructor(inst_id);
		model.addAttribute("instList",ims.searchAllNInstructor());
		return "/admin/manage_instructor";
	}
	@ResponseBody
	@RequestMapping(value = "manage_inst_subPercentage.do", method = RequestMethod.GET, 
	produces = "application/json;charset=UTF-8")
	public String searchInstructorSubjectPercentage() {
		
		
		return ims.searchInstructorSubjectPercentage() ;
	}
	@ResponseBody
	@RequestMapping(value = "manage_inst_ny.do", method = RequestMethod.GET, 
	produces = "application/json;charset=UTF-8")
	public String searchNYInstructor() {
		
		return ims.searchNYInstructor();
	}
}
