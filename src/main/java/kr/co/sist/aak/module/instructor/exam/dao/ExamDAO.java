package kr.co.sist.aak.module.instructor.exam.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.ExamDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class ExamDAO {
	
	private static ExamDAO eDAO;
	
	private ExamDAO() {
		
	}
	
	public static ExamDAO getInstance(){
		if(eDAO == null) {
			eDAO=new ExamDAO();
		}
		return eDAO;
	}
	
	public List<ExamDomain> selectList()throws PersistenceException{
		List<ExamDomain>list=null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss=mbDAO.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.aak.instructor4.select_exam");
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	
	
	
	

}
