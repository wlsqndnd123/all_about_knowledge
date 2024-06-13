package kr.co.sist.aak.module.admin.eduCategoryManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.EduCategoryManagementDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class EduCategoryManagementDAO {
	
	/**
	 * 상위 카테고리를 조회하는 method
	 * @return
	 * @throws PersistenceException
	 */
	public List<EduCategoryManagementDomain> selectAllCategory() throws PersistenceException{
		List<EduCategoryManagementDomain> list = null;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.aak.admin3.selectAllCategory");
		mbDAO.closeHanlder(ss);
		return list;
		
	}
	/**
	 * 해당하는 상위 카테고리에 해당하는 서브카테고리를 조회하는 method
	 * @param cat_code
	 * @return
	 * @throws PersistenceException
	 */
	public List<EduCategoryManagementDomain> selectSubCategory(String cat_code) throws PersistenceException{
		List<EduCategoryManagementDomain> list = null;
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.aak.admin3.selectSubCat",cat_code);
		mbDAO.closeHanlder(ss);
		return list;
		
	}
	
}
