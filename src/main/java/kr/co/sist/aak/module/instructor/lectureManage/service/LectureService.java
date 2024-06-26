package kr.co.sist.aak.module.instructor.lectureManage.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.module.instructor.lectureManage.dao.LectureDAO;

@Service
public class LectureService {

	@Autowired(required = false)
	private LectureDAO ltDAO;
	
	public List<LectureDomain> lectureAll(){
		
		List<LectureDomain> list=null;
		
		try {
			list=ltDAO.selectAllLecture();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public LectureDomain lectureDetail(String sub_code) {
		LectureDomain lecd=null;
		
		try {
			lecd=ltDAO.lectureDetail(sub_code);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return lecd;
	}
	
	
}
