package kr.co.sist.aak.module.admin.dashboard.service;


import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.DashBoardDomain;
import kr.co.sist.aak.module.admin.dashboard.dao.DashBoardDAO;

@Service
public class DashBoardService {
	
	@Autowired(required = false)
	private DashBoardDAO dmDAO;
	

	public DashBoardDomain searchDataCount(){
		DashBoardDomain dbDomain = new DashBoardDomain();
		try {
			dbDomain.setAllmember_count(dmDAO.selectCountAllMember());
			dbDomain.setAllInstructor_count(dmDAO.selectCountAllInstructor());
			dbDomain.setExitMember_count(dmDAO.selectCountExitMember());
			dbDomain.setNeedChkQuestion_count(dmDAO.selectCountNeedChkQuestion());
			dbDomain.setNeedChkSubject_count(dmDAO.selectCountNeedChkSubject());

			
			}catch (PersistenceException pe) {
				pe.printStackTrace();
			}
		
		
		return dbDomain;
	}

	

}
