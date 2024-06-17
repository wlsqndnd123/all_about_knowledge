package kr.co.sist.aak.module.instructor.exam.dao;

import org.springframework.stereotype.Component;

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
	
	
	
	
	

}
