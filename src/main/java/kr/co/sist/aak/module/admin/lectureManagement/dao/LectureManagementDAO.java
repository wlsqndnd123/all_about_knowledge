package kr.co.sist.aak.module.admin.lectureManagement.dao;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;


import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.vo.LectureManagementVO;


public class LectureManagementDAO {
	private static LectureManagementDAO lecDAO;
	
	private LectureManagementDAO() {
		
	}
	
	public static LectureManagementDAO getInstance() {
		if(lecDAO == null) {
			lecDAO = new LectureManagementDAO();
		}
		return lecDAO;
	}

	public List<LectureManagementDomain> selectSubject()throws PersistenceException {
		List<LectureManagementDomain> list = null;
		
		return list;
	}
	
	
	public LectureManagementDomain selectDetaleSubject(String code) throws PersistenceException {
		LectureManagementDomain lecDomain = null;
		
		return lecDomain;
	}
	
	public int insertSubject(LectureManagementVO lecVO) {
		int cnt = 0;
		
		return cnt;
		
	}
	
	public int updateSubject(LectureManagementVO lecVO) {
		int cnt = 0;
		
		return cnt;
		
	}
	
	
	public List<LectureManagementDomain> searchLecture()throws PersistenceException {
		List<LectureManagementDomain> list = null;
		
		return list;
	}
	
	
	public LectureManagementDomain selectDetaleLecture(String code) throws PersistenceException {
		LectureManagementDomain lecDomain = null;
		
		return lecDomain;
	}
	
	
	
	
	
	
	
	
	
	
}
