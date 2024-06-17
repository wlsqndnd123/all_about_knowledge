package kr.co.sist.aak.module.admin.eduCategoryManagement.Service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.EduCategoryManagementDomain;
import kr.co.sist.aak.module.admin.eduCategoryManagement.dao.EduCategoryManagementDAO;

@Service
public class EduCategoryManagementService {
	@Autowired(required = false)
	private EduCategoryManagementDAO dmDAO;

	/**
	 * @return
	 */
	public String searchCategoryList() {
		List<EduCategoryManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = dmDAO.selectAllCategory();
			
			
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			for(EduCategoryManagementDomain temp : list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("cat_code", temp.getCat_code());
				jsonTemp.put("cat_name", temp.getCat_name());
				jsonArr.add(jsonTemp);
				
			}
			jsonObj.put("list", jsonArr);
			
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj.toJSONString();

	}
	
	/**
	 * @param prime_cat_code
	 * @return
	 */
	public String searchSubCategoryList(String cat_code) {
		List<EduCategoryManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = dmDAO.selectSubCategory(cat_code);
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			for(EduCategoryManagementDomain temp : list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("cat_code", temp.getCat_code());
				jsonTemp.put("cat_name", temp.getCat_name());
				jsonArr.add(jsonTemp);
			}
			jsonObj.put("list", jsonArr);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj.toJSONString();

	}
}
