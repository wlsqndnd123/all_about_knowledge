package kr.co.sist.aak.module.admin.qnaManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.QnaManagementDomain;
import kr.co.sist.aak.domain.admin.vo.QnaManagementVO;
import kr.co.sist.aak.util.MybatisDAO;
@Component
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
	
	

	public List<QnaManagementDomain> selectQna()throws PersistenceException{
		List<QnaManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin6.selectQnaAdmin");
		mbDAO.closeHanlder(ss);
		
		return list;
		
		
	}
	
	public QnaManagementDomain selectDetalQna(String qna_no)throws PersistenceException{
		QnaManagementDomain qnaDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		qnaDomain = ss.selectOne("kr.co.sist.aak.admin6.selectDetaleQnaAdmin", qna_no);
		mbDAO.closeHanlder(ss);
		
		return qnaDomain;
		
		
	}
	

	
	public int updateQnaAnswer(QnaManagementVO qnaVO){
		int cnt = 0;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(true);
		cnt = ss.update("kr.co.sist.aak.admin6.updateQnaAnswerAdmin",qnaVO);

		mbDAO.closeHanlder(ss);

		return cnt;
		
		
	}
	
	public int insertQnaAnswer(QnaManagementVO qnaVO){
		int cnt = 0;
		int cnt2 = 0;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(true);
		cnt = ss.update("kr.co.sist.aak.admin6.updateQnaAnswerAdmin",qnaVO);
		cnt2 = ss.insert("kr.co.sist.aak.admin6.updateQnaAdmin",qnaVO);

		mbDAO.closeHanlder(ss);
		
		return cnt+cnt2;
		
		
	}
	
	public int deleteQna(QnaManagementVO qnaVO){
		int cnt = 0;
		

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(true);
		cnt = ss.insert("kr.co.sist.aak.admin6.deleteQnaAnswerAdmin",qnaVO);
		

		mbDAO.closeHanlder(ss);

		return cnt;
		
		
	}
	
	
}
