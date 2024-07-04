package kr.co.sist.aak.module.instructor.dashboard.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.domain.instructor.OpenRequestDomain;
import kr.co.sist.aak.domain.instructor.RejectDomain;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.domain.instructor.vo.OpenRequestVO;
import kr.co.sist.aak.domain.student.domain.InstructorDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Repository
public class DashboardDAO {

	// 강사정보
	public InstructorInfoDomain instInfo(String inst_id) throws PersistenceException {
		InstructorInfoDomain instd = null;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);

		instd = ss.selectOne("kr.co.sist.aak.instructor.instructorInfo", inst_id);
		mbDAO.closeHanlder(ss);

		return instd;
	}

	// 강의 개설신청현황
	public int selectTotalCnt(String inst_id) throws PersistenceException {

		int totalCnt=0;
		
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);

		totalCnt = ss.selectOne("kr.co.sist.aak.instructor.totalCnt", inst_id);

		mbDAO.closeHanlder(ss);

		return totalCnt;
	}
	
	// 강의 오픈현황
	public int selectOpenCnt(String inst_id) throws PersistenceException {
		
		int openCnt=0;
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		openCnt = ss.selectOne("kr.co.sist.aak.instructor.openLectureCnt", inst_id);
		
		mbDAO.closeHanlder(ss);
		
		return openCnt;
	}
	

	// 반려리스트
	public List<RejectDomain> selectRejectList(String inst_id) throws PersistenceException {
		List<RejectDomain> list = null;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);

		list = ss.selectList("kr.co.sist.aak.instructor.rejectLecture",inst_id);
		mbDAO.closeHanlder(ss);
		
		return list;
	}
	
	//미답변 문의수
	public int noreplyCount(String inst_id) throws PersistenceException{
		int totalCnt=0;
		
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		totalCnt=ss.selectOne("kr.co.sist.aak.instructor.noreplyCnt",inst_id);
		
		mbDAO.closeHanlder(ss);
		
		return totalCnt;
	}
	
	
	

}
