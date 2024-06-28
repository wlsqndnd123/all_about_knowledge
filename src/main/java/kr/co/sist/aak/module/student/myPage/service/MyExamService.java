package kr.co.sist.aak.module.student.myPage.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.vo.MyExamVO;
import kr.co.sist.aak.module.student.myPage.repository.MyExamRepository;

@Service
public class MyExamService {

	@Autowired
	private MyExamRepository myExamRepository;
	
	@Autowired
	private HttpSession session;
	
	public List<MyExamVO> getExam() {
		String subCode = (String) session.getAttribute("sub_code");
        return myExamRepository.selectExam(subCode);
    }

}
