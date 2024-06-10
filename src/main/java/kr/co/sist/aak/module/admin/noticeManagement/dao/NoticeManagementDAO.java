package kr.co.sist.aak.module.admin.noticeManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
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
	
	public List<NoticeManagementDomain> selectAllNotice() throws PersistenceException{
		List<NoticeManagementDomain> list =null;
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.aak.admin.selectAllAdminNotice");
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	public static void main(String[] args) {
		System.out.println(NoticeManagementDAO.getInstance().selectAllNotice());
		

	}
}
