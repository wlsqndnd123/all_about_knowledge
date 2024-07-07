package kr.co.sist.aak.module.instructor.login.service;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.encrypt.Encryptors;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.AdminLoginDomain;
import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;
import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.InstructorLoginDomain;
import kr.co.sist.aak.domain.instructor.vo.InstructorInfoVO;
import kr.co.sist.aak.domain.instructor.vo.instructorLoginVO;
import kr.co.sist.aak.module.instructor.login.dao.LoginDAO;

@Service
public class LoginService {

	@Autowired(required = false)
	private LoginDAO loginDAO;
	
	public boolean validateLogin(instructorLoginVO ilVO) {
		InstructorLoginDomain ild=null;
		String plain="";
		
		try {
			String key = "smn489";
			String salt = "20010901";
			TextEncryptor te = Encryptors.text(key, salt);
			ild = loginDAO.selectInstructor(ilVO);
			plain =te.decrypt(ild.getPassword());
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return ild!= null&& plain.equals(ilVO.getPassword());
	}
	
	
	
}