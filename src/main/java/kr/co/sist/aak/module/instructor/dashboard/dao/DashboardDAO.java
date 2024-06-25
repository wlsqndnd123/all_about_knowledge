package kr.co.sist.aak.module.instructor.dashboard.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.RejectDomain;
import kr.co.sist.aak.domain.instructor.vo.OpenRequestVO;
import kr.co.sist.aak.domain.student.domain.InstructorDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class DashboardDAO {
	//강사소개 
	public List<InstructorDomain> selectInstructorInfo(String inst_id) throws PersistenceException {
		List<InstructorDomain> list= null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		list=ss.selectOne("kr.co.sist.aak.instructor.instructorInfo",inst_id);
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	//강의 개설현황
	public int selectTotalCnt(OpenRequestVO orVO) throws PersistenceException{
		int totalCnt=0;
		
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		totalCnt=ss.selectOne("kr.co.sist.aak.instructor.openLectureCnt", orVO);
		
		mbDAO.closeHanlder(ss);
		
		return totalCnt;
	}
	
	
	//반려리스트
	public List<RejectDomain> selectRejectList() throws PersistenceException{
		List<RejectDomain> list= null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		list=ss.selectList("kr.co.sist.aak.instructor.rejectLecture");
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	
	
}
