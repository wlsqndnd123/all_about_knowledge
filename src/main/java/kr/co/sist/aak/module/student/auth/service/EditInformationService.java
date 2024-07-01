package kr.co.sist.aak.module.student.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.vo.JoinVO;
import kr.co.sist.aak.module.student.auth.repository.EditInformationRepository;

@Service
public class EditInformationService {
	@Autowired
	private EditInformationRepository editInformationRepository;
	
	public JoinVO getInformation(String stdId) {
        return editInformationRepository.selectInformation(stdId);
    }
}
