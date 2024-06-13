package kr.co.sist.aak.module.admin.instructorManagement.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.module.admin.instructorManagement.service.InstructorManagementService;

@Controller
public class InstructorManagementController {
	@Autowired(required = false)
	private InstructorManagementService ims;

	@GetMapping("manage_instructor_details.do")
	public String instructorDetail(InstructorManagementDomain imd, Model model, String inst_id) {
		imd = ims.instructorDetail(inst_id);
		model.addAttribute("imd", imd);

		return "/admin/manage_instructor/manage_instructor_details";
	}

	@GetMapping("manage_instructor_addform.do")
	public String instructorAddForm() {
		return "/admin/manage_instructor/manage_instructor_add";
	}
	public String instructorFormProcess( HttpServletRequest request,String temp, Model model) throws IOException {
		File saveDir = new File("C:/dev/workspace_spring/spring_mvc/src/main/webapp/upload");
		int tempSize =100*1024*1024;
		//2. 파일 업로드 클래스 생성.
		MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath()
				,tempSize,"UTF-8", new DefaultFileRenamePolicy());
		//업로더 명 (web parameter)
		String uploader = mr.getParameter("uploader");
		String oriName = mr.getOriginalFileName("upfile");
		String fsName = mr.getFilesystemName("upfile");
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
		model.addAttribute("uploader",uploader);
		model.addAttribute("fileName",oriName);
		model.addAttribute("uploadflag",!uploadflag);
		return "";
	}

	@GetMapping("manage_instructor.do")
	public String searchInstructorList(Model model) {
		List<InstructorManagementDomain> list = ims.searchAllNInstructor();
		model.addAttribute("instList", list);
		return "/admin/manage_instructor";
	}
}
