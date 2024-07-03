package kr.co.sist.aak.module.student.lecture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.student.UserLectureDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class UserLectureDAO {

	private UserLectureDAO() {
		
	}
	
	/**
	 * 사용자 강의 리스트
	 * @return
	 */
	public List<UserLectureDomain> selectAllUserLecture(){
		List<UserLectureDomain> list = null;
		
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list=ss.selectList("kr.co.sist.aak.student3.selectAllUserLecture");
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	
}//class
