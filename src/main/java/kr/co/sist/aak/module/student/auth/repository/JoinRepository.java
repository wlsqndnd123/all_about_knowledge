package kr.co.sist.aak.module.student.auth.repository;

import kr.co.sist.aak.domain.student.vo.JoinVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JoinRepository {
	
	void insertStudent(JoinVO joinVO);
    void insertStudentInfo(JoinVO joinVO);
    
}
