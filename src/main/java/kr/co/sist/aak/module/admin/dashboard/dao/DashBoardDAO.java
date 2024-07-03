package kr.co.sist.aak.module.admin.dashboard.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;


import kr.co.sist.aak.util.MybatisDAO;

@Component
public class DashBoardDAO {
	
	private static DashBoardDAO dbDAO;
	
	private DashBoardDAO() {
		
	}
	
	public static DashBoardDAO getInstance() {
		if(dbDAO == null) {
			dbDAO = new DashBoardDAO();
		}
		return dbDAO;
	}
	
	
	public int selectCountAllMember() {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.sist.aak.admin8.selectCountAllMember");
		return cnt;
	}
	
	public int selectCountAllInstructor() {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.sist.aak.admin8.selectCountAllInstructor");
		
		return cnt;
	}
	public int selectCountExitMember() {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.sist.aak.admin8.selectCountExitMember");
		
		return cnt;
	}
	public int selectCountNeedChkSubject() {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.sist.aak.admin8.selectCountNeedChkSubject");
		
		return cnt;
	}
	public int selectCountNeedChkQuestion() {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.sist.aak.admin8.selectCountNeedChkQuestion");
		
		return cnt;
	}
	
}
