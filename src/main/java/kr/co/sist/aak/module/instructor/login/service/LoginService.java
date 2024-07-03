package kr.co.sist.aak.module.instructor.login.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.vo.InstructorInfoVO;
import kr.co.sist.aak.module.instructor.login.dao.LoginDAO;

@Service
public class LoginService {

	@Autowired(required = false)
	private LoginDAO loginDAO;
	
	public InstructorInfoDomain validateLogin(InstructorInfoVO instVO) {
		InstructorInfoDomain instd=loginDAO.selectInstrucId(instVO);
		
		try {
			instd=loginDAO.selectInstrucId(instVO);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return instd;
		
	}
	
	
	
}
