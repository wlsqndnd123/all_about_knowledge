package kr.co.sist.aak.module.student.myPage.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.student.vo.LectureNoticeVO;
import kr.co.sist.aak.util.SpringMyBatis;

@Component
public class MyDashboardRepository {

	@Autowired(required = false)
	private SpringMyBatis myBatisDAO;
	
	public int countTotalLecture(String stdId) {
		int count;
		SqlSession ss = myBatisDAO.getMyBatisHandler(false);
		count = ss.selectOne("kr.co.sist.aak.student.mypage.dashboard.selectTotalLectureCount", stdId);
		ss.close();
		return count;
	}
	
    public int countProcessLecture(String stdId) {
        int count;
        SqlSession ss = myBatisDAO.getMyBatisHandler(false);
        count = ss.selectOne("kr.co.sist.aak.student.mypage.dashboard.selectProcessLectureCount", stdId);
        ss.close();
        return count;
    }

    public int countCompleteLecture(String stdId) {
        int count;
        SqlSession ss = myBatisDAO.getMyBatisHandler(false);
        count = ss.selectOne("kr.co.sist.aak.student.mypage.dashboard.selectCompleteLectureCount", stdId);
        ss.close();
        return count;
    }
    
    public String searchLatestSubCode(String stdId) {
    	String lastSubCode;
    	SqlSession ss = myBatisDAO.getMyBatisHandler(false);
    	lastSubCode = ss.selectOne("kr.co.sist.aak.student.mypage.dashboard.selectLastViewSubCode",stdId);
    	return lastSubCode;
    }
    
    public List<LectureNoticeVO> selectLastNotice(String lastSubCode) {
    	List<LectureNoticeVO> lastNotice;
    	SqlSession ss = myBatisDAO.getMyBatisHandler(false);
    	lastNotice = ss.selectList("kr.co.sist.aak.student.mypage.dashboard.selectLectureNotice",lastSubCode);
    	return lastNotice;
    }
	
}
