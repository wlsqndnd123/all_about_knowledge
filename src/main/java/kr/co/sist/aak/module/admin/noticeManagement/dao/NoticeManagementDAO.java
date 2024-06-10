package kr.co.sist.aak.module.admin.noticeManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.admin.vo.NoticeManagementVO;
import kr.co.sist.aak.util.MybatisDAO;

public class NoticeManagementDAO {
	private static NoticeManagementDAO nDAO;
	private NoticeManagementDAO() {
		
	}
	
	public static NoticeManagementDAO getInstance() {
		if(nDAO ==null) {
			nDAO = new NoticeManagementDAO();
		}
		return nDAO;
	}
	
	/**
	 * 공지사항 리스트를 출력하는 method
	 * @return
	 * @throws PersistenceException
	 */
	public List<NoticeManagementDomain> selectAllNotice() throws PersistenceException{
		List<NoticeManagementDomain> list =null;
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.aak.admin.selectAllAdminNotice");
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	/**
	 * 선택한 공지사항의 상세 정보를 가져오는 method
	 * @param noti_num 공지사항 번호
	 * @return
	 * @throws PersistenceException
	 */
	public NoticeManagementDomain selectOneNotice(String noti_num) throws PersistenceException {
		NoticeManagementDomain nDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		nDomain = ss.selectOne("kr.co.sist.aak.admin.selectOneAdminNotice",noti_num);
				
		return nDomain;
		
	}
	
	/**
	 * 공지사항 테이블의 공지사항 번호의 최고값을 가져오는 method
	 * @return
	 * @throws PersistenceException
	 */
	public String selectMaxValue() throws PersistenceException {
		String noti_no = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		noti_no = ss.selectOne("kr.co.sist.aak.admin.selectAdminNoticeMaxval");
		
		return noti_no;
		
	}
	
	public int insertNotice(NoticeManagementVO nVO) {
		int cnt =0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.sist.aak.admin.insertAdminNotice",nVO);
		if(cnt ==1) {
			ss.commit();
		}
		
		return cnt;
	}
	
	public int updateNotice(NoticeManagementVO nVO) {
		int cnt =0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.update("kr.co.sist.aak.admin.updateAdminNotice",nVO);
		if(cnt ==1) {
			ss.commit();
		}
		return cnt;
	}
	
	public int deleteNotice(String noti_no) {
		int cnt =0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt = ss.delete("kr.co.sist.aak.admin.updateAdminNotice",noti_no);
		if(cnt ==1) {
			ss.commit();
		}
		return cnt;
	}
	
}
