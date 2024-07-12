package kr.co.sist.aak.module.student.myPage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.vo.LectureNoticeVO;
import kr.co.sist.aak.module.student.myPage.repository.MyDashboardRepository;

@Service
public class MyDashboardService {

    @Autowired
    private MyDashboardRepository dashboardRepository;

    public int getTotalLectureCount(String stdId) {
        return dashboardRepository.countTotalLecture(stdId);
    }

    public int getProcessLectureCount(String stdId) {
        return dashboardRepository.countProcessLecture(stdId);
    }

    public int getCompleteLectureCount(String stdId) {
        return dashboardRepository.countCompleteLecture(stdId);
    }
    
    public String getLastSubCode(String stdId) {
    	return dashboardRepository.searchLatestSubCode(stdId);
    }
    
    public List<LectureNoticeVO> getLastNotice(String lastSubCode) {
    	return dashboardRepository.selectLastNotice(lastSubCode);
    }
}