package kr.co.sist.aak.module.instructor.exam.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.ExamDomain;
import kr.co.sist.aak.module.instructor.exam.dao.ExamDAO;

@Service
public class ExamService {
	@Autowired(required = false)
	private ExamDAO eDAO;
	
	public List<ExamDomain>searchList(){
		List<ExamDomain>list=null;
		try {
			list=eDAO.selectList();
			System.out.println(list);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}

	
	
}
