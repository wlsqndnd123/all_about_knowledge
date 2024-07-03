package kr.co.sist.aak.module.instructor.dashboard.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.domain.InstructorDomain;
import kr.co.sist.aak.module.instructor.dashboard.dao.DashboardDAO;

@Service
public class DashboardService {
	
	@Autowired(required = false)
	private DashboardDAO dbDAO;
	
	public InstructorDomain introduceInstructor(String inst_id) {
		InstructorDomain instd= null;
		
		try {
			instd= (InstructorDomain) dbDAO.selectInstructorInfo(inst_id);
		}catch(PersistenceException pe){
			pe.printStackTrace();
		}
		return instd;
	}

}
