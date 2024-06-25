package kr.co.sist.aak.module.instructor.exam.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.ExamDomain;
import kr.co.sist.aak.domain.instructor.vo.ExamVO;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class ExamDAO {
	
	private static ExamDAO eDAO;
	
	private ExamDAO() {
		
	}
	
	public static ExamDAO getInstance(){
		if(eDAO == null) {
			eDAO=new ExamDAO();
		}
		return eDAO;
	}
	
	public List<ExamDomain> selectList()throws PersistenceException{
		List<ExamDomain>list=null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss=mbDAO.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.aak.instructor4.select_exam");
		System.out.println("doa list:"+list);
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	
	public int insertExam(ExamVO eVO)throws PersistenceException{
		int cnt=0;
		MybatisDAO mbDAO=MybatisDAO.getInstance();
    	SqlSession ss =mbDAO.getMyBatisHandler(false);
    	cnt=ss.insert("kr.co.sist.aak.instructor4.insert_exam",eVO);
		if(cnt==1) {
			ss.commit();
		}
		mbDAO.closeHanlder(ss);
		return cnt;
	}
	
	public int selectQNum()throws PersistenceException{
		MybatisDAO mbDAO=MybatisDAO.getInstance();
        SqlSession ss = mbDAO.getMyBatisHandler(false);
        
        int Q_NO = ss.selectOne("kr.co.sist.aak.instructor4.countQNO");
        mbDAO.closeHanlder(ss);
        
        
        
        return Q_NO+1;
		
	}
	
	
	public int updateExam(ExamVO eVO) {
		
		int cnt=0;
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss=mbDAO.getMyBatisHandler(true);
		cnt=ss.update("kr.co.sist.aak.instructor4.update_exam",eVO);
		mbDAO.closeHanlder(ss);
		
		System.out.println("ExamVO in DAO :"+ eVO.toString());
		
		return cnt;
		
	}
	
	

	
	

}
