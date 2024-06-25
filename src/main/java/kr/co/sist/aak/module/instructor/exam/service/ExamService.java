package kr.co.sist.aak.module.instructor.exam.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.ExamDomain;
import kr.co.sist.aak.domain.instructor.vo.ExamVO;
import kr.co.sist.aak.module.instructor.exam.dao.ExamDAO;

@Service
public class ExamService {
	
	@Autowired
	private ExamDAO eDAO;
	
	public List<ExamDomain>searchList(){
		List<ExamDomain>list=null;
		try {
			list=eDAO.selectList();
			System.out.println("서비스쪽:"+list);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}

	
	public int insertExam(ExamVO eVO) {
		int cnt=0;
		 try {
			 eDAO.insertExam(eVO);
		 }catch(PersistenceException e) {
			 e.printStackTrace();
		 }
		 return cnt;
		
		
	}
	
	public int searchQNo() {
        int nextQNo = 0;
        try {
            nextQNo = eDAO.selectQNum();
            nextQNo++;
        } catch (PersistenceException e) {
        	e.printStackTrace();
        }
        return nextQNo;
    }
	
	public int modifyExam(ExamVO eVO) {
		int cnt=0;
		try {
			cnt= eDAO.updateExam(eVO);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return eDAO.updateExam(eVO);
	}
	
	public List<ExamDomain>searchList1(){
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
