package kr.co.sist.aak.module.admin.qnaManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;

import kr.co.sist.aak.domain.admin.QnaManagementDomain;
import kr.co.sist.aak.domain.admin.vo.QnaManagementVO;

public class QnaManagementDAO {
	private static QnaManagementDAO qnaDAO;
	
	private QnaManagementDAO() {
		
	}
	
	public static QnaManagementDAO getInstance() {
		if(qnaDAO == null) {
			qnaDAO = new QnaManagementDAO();
		}
		return qnaDAO;
	}
	
	

	public List<QnaManagementDomain> selectQna(QnaManagementVO qnaVO)throws PersistenceException{
		List<QnaManagementDomain> list = null;
		
		return list;
		
		
	}
	
	public QnaManagementDomain selectDetalQna(String code)throws PersistenceException{
		QnaManagementDomain qnaDomain = null;
		
		return qnaDomain;
		
		
	}
	
	public int insertAnswer(QnaManagementVO qnaVO){
		int cnt = 0;
		
		return cnt;
		
		
	}
	
	public int updateAnswer(QnaManagementVO qnaVO){
		int cnt = 0;
		
		return cnt;
		
		
	}
	
	
	
	
	
}
