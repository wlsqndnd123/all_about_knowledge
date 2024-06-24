package kr.co.sist.aak.module.instructor.notice.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.NoticeDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class NoticeDAO {
	
	private static NoticeDAO nDAO;
	
	private NoticeDAO() {
		
	}
	
	public static NoticeDAO getInstance() {
		if(nDAO ==null) {
			nDAO = new NoticeDAO();
		}
		return nDAO;
	}
	
	
	public List<NoticeDomain> selectNotice() throws PersistenceException{
		List<NoticeDomain>list=null;
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss=mbDAO.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.aak.instructor3.select_notice");
		mbDAO.closeHanlder(ss);
		
		
		return list;
	}
	
	public NoticeDomain selectNoticeDetail(String noti_no)throws PersistenceException{
		NoticeDomain NDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		NDomain = ss.selectOne("kr.co.sist.aak.instructor3.notice_detail");
		mbDAO.closeHanlder(ss);
		return NDomain;
		
	}
	
	
	
	
	
	
	
	
	

}
