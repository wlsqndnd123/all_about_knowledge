package kr.co.sist.aak.module.admin.eduCategoryManagement.Service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
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
	public List<EduCategoryManagementDomain> searchCategoryList() {
		List<EduCategoryManagementDomain> list = null;
		try {
			list = dmDAO.selectAllCategory();

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;

	}
	
	/**
	 * @param prime_cat_code
	 * @return
	 */
	public List<EduCategoryManagementDomain> searchSubCate(String cat_code) {
		List<EduCategoryManagementDomain> list = null;
		try {
			list = dmDAO.selectSubCategory(cat_code);

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;

	}
}
