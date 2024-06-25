package kr.co.sist.aak.module.admin.eduCategoryManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.aak.domain.admin.EduCategoryManagementDomain;
import kr.co.sist.aak.domain.admin.vo.EduCategoryManagementVO;
import kr.co.sist.aak.module.admin.eduCategoryManagement.Service.EduCategoryManagementService;

@Controller
public class EduCategoryManagementController {
	@Autowired(required = false)
	private EduCategoryManagementService ems;

	/**
	 * @param model
	 * @return
	 */
	@GetMapping("manage_edu_cat.do")
	public String CategoryListMain(Model model) {
	//	List<EduCategoryManagementDomain> list= ems.searchCategoryList();
	//	model.addAttribute("list",list);
		return "/admin/manage_edu_cat";
	}

	@ResponseBody
	@RequestMapping(value = "manage_edu_cat_list.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String searchCategoryList() {

		return ems.searchCategoryList();
	}
	
//	public String searchCategoryList() {
//		
//	
//	}

	/**
	 * @param model
	 * @param cat_code
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "manage_edu_subcat_list.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String searchSubCategoryList(Model model, String cat_code) {

		return ems.searchSubCategoryList(cat_code);

	}
	
	@GetMapping("manage_edu_cat_add.do")
	public String addCategory(Model model,@RequestParam(defaultValue = "CAT_000001") String cat_code
			,@RequestParam(defaultValue = "") String prime_cat_code) {
		String maxValue = ems.searchMaxvalue();
		if(prime_cat_code.equals("")||prime_cat_code==null) {
			prime_cat_code="N/A";
		}
		model.addAttribute("maxValue",maxValue);
		model.addAttribute("pCatCode",prime_cat_code);
		return "/admin/manage_educategory/manage_category_add";
	}
	
	@GetMapping("add_cat_process.do")
	public String addCategoryProcess(Model model,EduCategoryManagementVO emVO) {
		ems.addCategory(emVO);
		model.addAttribute("emVO",emVO);
		
		return "/admin/manage_educategory/manage_category_add_result";
	}

}
