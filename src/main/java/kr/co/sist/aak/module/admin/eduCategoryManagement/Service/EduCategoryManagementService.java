package kr.co.sist.aak.module.admin.eduCategoryManagement.Service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.EduCategoryManagementDomain;
import kr.co.sist.aak.domain.admin.vo.EduCategoryManagementVO;
import kr.co.sist.aak.module.admin.eduCategoryManagement.dao.EduCategoryManagementDAO;

@Service
public class EduCategoryManagementService {
	@Autowired(required = false)
	private EduCategoryManagementDAO dmDAO;

	
	/**
	 * 교육 카테고리중 상위 카테고리의 리스트를 반환하는 method.
	 * 작성자 :김일신
	 * @return
	 */
	public String searchCategoryList() {
		List<EduCategoryManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = dmDAO.selectAllCategory();

			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			for (EduCategoryManagementDomain temp : list) {
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
	 * 상위 카테고리에 속한 하위 카테고리를 검색하는 method.
	 * 작성자 :김일신
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
			for (EduCategoryManagementDomain temp : list) {
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
	 * 카테고리를 추가하는 method
	 * @param emVO
	 * @return
	 */
	public int addCategory(EduCategoryManagementVO emVO) {
		int cnt = 0;
		try {
			dmDAO.insertCategory(emVO);
		} catch (PersistenceException e) {
		}
		return cnt;
	}

	/**
	 * 데이터베이스에서의 가져온 최댓값에 +1을 더해 사용할 수 있는 카테고리코드로 리턴하는 method.
	 * 작성자 :김일신
	 * @return
	 */
	public String searchMaxvalue() {
		StringBuilder sb = new StringBuilder("CAT_");

		try {
			int max = Integer.parseInt(dmDAO.selectMaxvalue().substring(5)) + 1;
			System.out.println(max);
			sb.append(String.format("%06d", max));

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return sb.toString();
	}
	public String searchCategorySubjectCount(String prime_cat_code) {
		EduCategoryManagementDomain list =null;
		JSONObject jsonObj = new JSONObject();
		boolean flag =false;
		try {
		list = dmDAO.selectCategorySubjectCount(prime_cat_code);
		
		if(list!=null) {
			jsonObj.put("prime_cat_code", list.getPrime_cat_code());
			jsonObj.put("subject_count", list.getSubject_count());
			flag =true;
		}
		jsonObj.put("flag", flag);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj.toJSONString();
		
	}
	public EduCategoryManagementDomain searchRecentCode() {
		EduCategoryManagementDomain ecm =null;
		try {
			String maxVal = dmDAO.selectMaxvalue();
			ecm=dmDAO.selectRecentCode(maxVal);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		
		return ecm;
	}

}
